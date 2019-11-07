package com.bw.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bw.bean.Goods;
import com.bw.bean.Pin;
import com.bw.bean.Type;
import com.bw.mapper.GoodsDao;

@Service
@Transactional
public class GoodsServiceImp implements GoodsService{

	@Resource
	public GoodsDao dao;

	public List<Goods> querylist(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.querylist(map);
	}

	public int add(Goods goods) {
		// TODO Auto-generated method stub
		return dao.add(goods);
	}

	public List<Pin> pinlist() {
		// TODO Auto-generated method stub
		return dao.pinlist();
	}

	public List<Type> Typelist() {
		// TODO Auto-generated method stub
		return dao.Typelist();
	}

	public int delete(String id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	public int updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		return dao.updateGoods(goods);
	}
}
