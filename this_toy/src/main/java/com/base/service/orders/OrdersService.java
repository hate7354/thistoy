package com.base.service.orders;

import java.util.ArrayList;

import com.base.entity.CartVO;
import com.base.entity.OrdersVO;
import com.base.entity.ProductVO;
import com.base.entity.UserVO;

public interface OrdersService {
	
	ArrayList<ProductVO> getproduct(String productCode);
	UserVO getaddr(String userId);
	CartVO getcart(CartVO vo);
	OrdersVO insertorder(OrdersVO vo); 
}
