package com.base.service.Review;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.base.entity.PageVO;
import com.base.entity.ReviewVO;
import com.base.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	private ReviewMapper mapper;
	@Override
	public int register(ReviewVO vo) {
		
		return mapper.insert(vo);
	}
	@Override
	public ArrayList<ReviewVO> getReview(PageVO vo) {
		// TODO Auto-generated method stub
		return mapper.getReview(vo);
	}
	@Override
	public int getReviewTotalCount(String productCode) {
		// TODO Auto-generated method stub
		return mapper.getReviewTotalCount(productCode);
	}

}
