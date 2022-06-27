package eat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bbs.Bbs;

public class EatDAO {

	private Connection conn;
	private ResultSet rs;
	
	//기본 생성자
	public EatDAO() {
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
	//하나의 게시글을 보는 메소드
		public Eat getEat(int idx) {
			String sql = "select * from eat where idx = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, idx);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					Eat eat = new Eat();
					eat.setIdx(rs.getInt(1));
					eat.setA1(rs.getString(2));
					eat.setA2(rs.getString(3));
					eat.setA3(rs.getString(4));
					eat.setA4(rs.getString(5));
					eat.setA5(rs.getString(6));
					return eat;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
	
}
