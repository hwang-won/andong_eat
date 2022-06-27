package Info;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    public UserDAO() {
    	try {
    		String dbURL = "jdbc:h2:tcp://localhost/~/finalhw";
    		String dbID = "sa";
    		String dbPassword = "1234";
    		Class.forName("org.h2.Driver");
    		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
    	}catch (Exception e) {
    		e.printStackTrace();
    	}
    }
    
  //로그인 영역
  	public int login(String userID, String userPassword) {
  		String sql = "select userPassword from info where userID = ?";
  		try {
  			pstmt = conn.prepareStatement(sql); //sql쿼리문을 대기 시킨다
  			pstmt.setString(1, userID); //첫번째 '?'에 매개변수로 받아온 'userID'를 대입
  			rs = pstmt.executeQuery(); //쿼리를 실행한 결과를 rs에 저장
  			if(rs.next()) {
  				if(rs.getString(1).equals(userPassword)) {
  					return 1; //로그인 성공
  				}else
  					return 0; //비밀번호 틀림
  			}
  			return -1; //아이디 없음
  		}catch (Exception e) {
  			e.printStackTrace();
  		}
  		return -2; //오류
  	}
  	
  	public int join(Info info) {
  	  String sql = "insert into info values(?, ?, ?, ?, ?)";
  	  try {
  	    pstmt = conn.prepareStatement(sql);
  	    pstmt.setString(1, info.getUserID());
  	    pstmt.setString(2, info.getUserPassword());
  	    pstmt.setString(3, info.getUserName());
  	    pstmt.setString(4, info.getUserGender());
  	    pstmt.setString(5, info.getUserEmail());
  	    return pstmt.executeUpdate();
  	  }catch (Exception e) {
  	 	e.printStackTrace();
  	 	return -1;
  	  }
  	}
}

