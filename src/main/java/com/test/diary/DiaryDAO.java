package com.test.diary;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class DiaryDAO {

	private Connection conn = null;
	private Statement stat = null;
	private PreparedStatement pstat = null;
	private ResultSet rs = null;
	
	public DiaryDAO() {
		conn = DBUtil.open();
	}

	public int checkid(String id) {
		
		try {
			
			String sql = "select count(*) as cnt from tblSMember where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("DiaryDAO.checkid");
			e.printStackTrace();
		}
		
		return 0;
	}

	public ArrayList<MemberDTO> listMember(String id) {
		
		try {
			
			String sql = "select * from tblSMember where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
			
			if(rs.next()) {
				
				MemberDTO dto = new MemberDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setBirth(rs.getString("birth"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setIntro(rs.getString("intro"));
				dto.setImg(rs.getString("img"));
				
				
			}
			
		} catch (Exception e) {
			System.out.println("DiaryDAO.listMember");
			e.printStackTrace();
		}
		
		return null;
	}

	public int joinMember(MemberDTO dto) {

		try {
			
			String sql = "insert into tblSMember (id, pw, name, birth, email, tel, intro, img) values (?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			pstat.setString(3, dto.getName());
			pstat.setString(4, dto.getBirth());
			pstat.setString(5, dto.getEmail());
			pstat.setString(6, dto.getTel());
			pstat.setString(7, dto.getIntro());
			pstat.setString(8, dto.getImg());
			
			return pstat.executeUpdate();
			
			
			
		} catch (Exception e) {
			System.out.println("DiaryDAO.joinMember");
			e.printStackTrace();
		}
		
		return 0;
	}

	public MemberDTO joinShow(String id) {
		
		try {
			
			String sql = "select * from tblSMember where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				//레코드 1줄 > DTO 1개
				MemberDTO dto = new MemberDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setBirth(rs.getString("birth"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				dto.setIntro(rs.getString("intro"));
				dto.setImg(rs.getString("img"));
				
				rs.close();
				pstat.close();
				conn.close();
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println("DiaryDAO.joinShow");
			e.printStackTrace();
		}
		
		return null;
	}

	public int addDiary(String new_title, String new_diary, String id, String new_img) {
		
		try {
			
			String sql = "insert into tblDiary (dNum, id, dregdate, subject, content, img) values "
					+ "(seqDiary.nextVal, ?, default, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			pstat.setString(2, new_title);
			pstat.setString(3, new_diary);
			pstat.setString(4, new_img);
			
			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("addDiary");
			e.printStackTrace();
		}
		
		return 0;
	}

	public int editSchedule(String seq) {
		try {
			
			String sql = "update tblSchedule set state = 'y' where sNum = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			

		} catch (Exception e) {
			System.out.println("editSchedule");
			e.printStackTrace();
		}
		return 0;
	}
	
}
