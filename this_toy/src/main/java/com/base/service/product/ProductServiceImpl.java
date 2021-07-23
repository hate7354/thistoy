package com.base.service.product;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.ProductVO;
import com.base.mapper.ProductMapper;

import lombok.AllArgsConstructor;
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	private ProductMapper mapper;
	
	@Override
	public int register(ProductVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	@Override
	public ArrayList<ProductVO> getList(String downCaCode) {
		// TODO Auto-generated method stub
		return mapper.getList(downCaCode);
	}

}
