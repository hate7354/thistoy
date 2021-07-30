package com.base.service.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.base.entity.UserVO;
import com.base.mapper.UserMapper;
import com.base.session.AuthInfo;
import com.base.session.IdPasswordNotMatchingException;
import com.base.session.LoginCommand;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service // controller처럼 동작해서 bean 등록
@Log4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

	private final UserMapper userMapper;

	@Override
	public UserVO login(UserVO userVO) {

		return userMapper.login(userVO);
	}

	// 회원가입
	@Override
	public void register(UserVO userVO) {
		userMapper.register(userVO);
	}

	@Override
	public int idCheck(UserVO userVO) {
		int result = userMapper.idCheck(userVO);
		return result;
	}

	@Override
	public AuthInfo loginAuth(LoginCommand loginCommand) {
		UserVO user = userMapper.selectById(loginCommand.getUserId());
		if (user == null) {
			throw new IdPasswordNotMatchingException();
		}
		if (!user.matchPassword(loginCommand.getUserPasswd())) {
			throw new IdPasswordNotMatchingException();
		}
		return new AuthInfo(user.getUserId(), user.getUserName(), user.getUserEmail(), user.getUserTel(),
				user.getUserAddressPost(), user.getUserAddress(), user.getUserAddressDetail());
	}

	// 개인정보수정
	@Override
	public void userModify(UserVO vo) {
		userMapper.userModify(vo);

		String pw = vo.getUserPasswd();
		String mail = vo.getUserEmail();
	}

	// 개인정보 수정 비밀번호 체크
	@Override
	public AuthInfo pwCheck(LoginCommand loginCommand) {

		UserVO user = userMapper.pwCheck(loginCommand.getUserId());

		if (user == null) {
			System.out.println("수정비번없음");

			throw new IdPasswordNotMatchingException();
		}
		if (!user.matchPassword(loginCommand.getOldPassword())) {
			System.out.println("수정비번틀림");
			throw new IdPasswordNotMatchingException();
		}
		// 기본
//      return new AuthInfo(user.getUserId(), user.getUserName());
		// 유저수정 페이지 위해서 다른 정보들도 넣음
		return new AuthInfo(user.getUserId(), user.getUserName(), user.getUserEmail(), user.getUserTel(),
				user.getUserAddressPost(), user.getUserAddress(), user.getUserAddressDetail());
	}

}
