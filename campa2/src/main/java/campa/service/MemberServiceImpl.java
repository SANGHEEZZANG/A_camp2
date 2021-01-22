package campa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import campa.dao.memDAO;
import campa.model.memberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private memDAO md;
	
	//login.do verify user id info
	public memberDTO checkUser(String id) throws Exception{
		return md.checkUser(id);
	}
	
	//signUpPage.do check for ID availability
	public memberDTO select(String id) throws Exception {
		return md.select(id);
	} 
	
	//signUpPage.do send sign up Form
	public int insert(memberDTO memDTO) throws Exception {
		return md.insert(memDTO);
	}
	
	//myPageUpdateForm.do update user info
	public int update(memberDTO memDTO) throws Exception{
		return md.update(memDTO);
	}
	//myPageUpdateForm.do check password
	public memberDTO checkUserPw(String passwd) throws Exception{
		return md.checkUserPw(passwd);
	}
	//myPageDeleteGo.do delete Member
	public int delete(memberDTO memDTO) throws Exception{
		return md.delete(memDTO);
	}
	
	//passwd 찾기
//	public memberDTO findByEmail(String email) {
//		return md.findByEmail(email);
//	}
//	public memberDTO findByResetPasswordToken(String token) {
//		return md.findByResetPasswordToken(token);
//	}
//	public void updateResetPasswordToken(String token, String email) throws Exception{
//		memberDTO memDTO = md.findByEmail(email);
//		if(memDTO!=null) {
//			memDTO.setReset_password_token(token);
//			md.save(memDTO);
//		}else {
//			throw new Exception("이메일을 찾을 수 없었습니다"+email);
//		}
//	}
//	public memberDTO getByResetPasswordToken(String token) {
//		return md.findByResetPasswordToken(token);
//	}
//	public void updatePW(memberDTO memDTO, String newPW) {
//		BCryptPasswordEncoder PWEncoder = new BCryptPasswordEncoder();
//		String encodedPW = PWEncoder.encode(newPW);
//		memDTO.setPasswd(encodedPW);
//		memDTO.setReset_password_token(null);
//		md.save(memDTO);
//	}

}
