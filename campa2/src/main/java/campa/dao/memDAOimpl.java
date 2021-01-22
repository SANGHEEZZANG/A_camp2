package campa.dao;

import java.util.List;
import java.util.Optional;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import campa.model.memberDTO;

@Repository
public class memDAOimpl implements memDAO {
	@Autowired
	private SqlSessionTemplate st;
	
	//login.do verify user id info
	public memberDTO checkUser(String id) throws Exception{
		return st.selectOne("memberns.checkUser",id);
	}
	
	//login.do bring select 
	public memberDTO checkUserPw(String passwd) throws Exception{
		return st.selectOne("memberns.checkUserPw", passwd);
	}
	//signUpPage.do check for ID availability
	public memberDTO select(String id) throws Exception {
		return st.selectOne("memberns.selectID", id);
	}
	
	//signUpPage.do send sign up Form
	public int insert(memberDTO memDTO) throws Exception{
		return st.insert("memberns.insert", memDTO);
	}
	
	//myPageUpdateForm.do update user info
	public int update(memberDTO memDTO) throws Exception{
		return st.update("memberns.update", memDTO);
	}
	
	//myPageDeleteGo.do delete Member
	public int delete(memberDTO memDTO) throws Exception{
		return st.delete("memberns.delete", memDTO);
	}
	
	
	
	
	

//	//passwd 찾기
//	public memberDTO findByEmail(String email) {
//		return ((memDAO) st).findByEmail(email);
//
//	}
//	public memberDTO findByResetToken(String token) {
//		return ((memDAO) st).findByResetPasswordToken(token);
//	}


	
}
