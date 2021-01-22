package campa.service;

import org.springframework.stereotype.Service;

import campa.model.memberDTO;

@Service
public interface MemberService {
	//login.do verify user id info
	public memberDTO checkUser(String id) throws Exception;
	
	
	//signUpPage.do check for ID availability
	public memberDTO select(String id) throws Exception;
	
	//signUpPage.do send sign up Form
	public int insert(memberDTO memDTO) throws Exception;
	
	//myPageUpdateForm.do update user info
	public int update(memberDTO memDTO) throws Exception;
	
	//myPageUpdateForm.do check password
	public memberDTO checkUserPw(String passwd) throws Exception;
	
	//myPageDeleteGo.do delete Member
	public int delete(memberDTO memDTO) throws Exception;

	
	
//	//passwd 찾기
//	public memberDTO findByEmail(String email);
//	public memberDTO findByResetPasswordToken(String token);
}
