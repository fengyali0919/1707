package com.bw.mapper;

import java.util.HashMap;
import java.util.List;

import com.bw.bean.Goods;
import com.bw.bean.Pin;
import com.bw.bean.Type;

public interface GoodsDao {

	List<Goods> querylist(HashMap<String, Object> map);

	int add(Goods goods);

	List<Pin> pinlist();

	List<Type> Typelist();

	int delete(String id);

	int updateGoods(Goods goods);

}
