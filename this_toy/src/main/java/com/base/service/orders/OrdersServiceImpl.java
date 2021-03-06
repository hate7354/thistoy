package com.base.service.orders;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.UserVO;
import com.base.mapper.OrdersMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class OrdersServiceImpl implements OrdersService {
	private OrdersMapper mapper;

	@Override
	public ArrayList<ProductVO> getproduct(String productCode) {
		
		return mapper.getproduct(productCode);
	}
	@Override
	public UserVO getaddr(String userId) {
		// TODO Auto-generated method stub
		return mapper.getaddr(userId);
	}
	
	@Override
	public ProductVO getcart(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getcart(productCode);
	}
	@Override
	public void insertorder(OrdersVO vo) {
		// TODO Auto-generated method stub
		mapper.insertorder(vo);
	}
	@Override
	public void deletecart(OrdersVO vo) {
		// TODO Auto-generated method stub
		mapper.deletecart(vo);
		
	}
	@Override
	public void updatesales(OrdersVO vo) {
		// TODO Auto-generated method stub
		mapper.updatesales(vo);
	}
	@Override
	public void updatestock(OrdersVO vo) {
		// TODO Auto-generated method stub
		mapper.updatestock(vo);
	}
	
}
