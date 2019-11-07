package com.bw.controller;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bw.bean.Goods;
import com.bw.bean.Pin;
import com.bw.bean.Type;
import com.bw.service.GoodsService;
import com.bw.util.FileUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class GoodsController {

	@Resource 
	public GoodsService service;
	
	@RequestMapping("/list")
	public List<Goods> querylist(String gname,Model model,@RequestParam(defaultValue="1")Integer pageNum){
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("gname",gname);
		PageHelper.startPage(pageNum, 3);
		List<Goods> list = service.querylist(map);
		PageInfo<Goods> page = new	PageInfo<Goods>(list);
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		return list;
	}
	
	@RequestMapping("/img")
	@ResponseBody
	public void img(String path,HttpServletRequest request,
			HttpServletResponse response){
		FileUtils.lookImg(path, request, response);
	}
	
	@RequestMapping("/add")
	public String add(Goods goods,MultipartFile img) throws Exception{
		
		String upload = FileUtils.upload(img);
		goods.setGimg(upload);
		int i = service.add(goods);
		if(i>0){
			return "redirect:/list";
		}else{
			return "add";
		}
	}
	@RequestMapping("/pinlist")
	@ResponseBody
	public List<Pin> pinlist(){
		List<Pin> list = service.pinlist();
		return list;
	}
	
	@RequestMapping("/Typelist")
	@ResponseBody
	public List<Type> Typelist(){
		List<Type> list = service.Typelist();
		return list;
	}
	
	@RequestMapping("/deletegoods")
	@ResponseBody
	public int delete(String id){
		int i = service.delete(id);
		return i;
	}
	
	@RequestMapping("/getById")
	public String getById(Model model,Integer gid){
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("gid", gid);
		List<Goods> list = service.querylist(map);
		model.addAttribute("g", list.get(0));
		return "update";
	}
	
	@RequestMapping("/updateGoods")
	public String updateGoods(Goods goods, MultipartFile img) throws IllegalStateException, IOException{
		if(!img.isEmpty()) {
			String upload = FileUtils.upload(img);
			goods.setGimg(upload);
		}
		
		int i = service.updateGoods(goods);
		
		if(i>0){
			return "redirect:/list";
		}else{
			return "update";
		}
	}
}
