package com.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.mapper.MainMapper;
//mapper�� ���� ������
@Service
public class MainServiceImpl implements MainService{

	@Autowired
	MainMapper mainMapper;
}
