package kr.co.Dr_Link.mvc.dao;

import java.util.List; 

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.Dr_Link.mvc.dto.Chat_doctorDTO;

@Repository("chatDAO") 
public class ChatDAOImpl implements ChatDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	
	public List<Chat_doctorDTO> readChat(Chat_doctorDTO vo) {
		return mybatis.selectList("ChatMapper.getChatList", vo);
	}

	
	public void insertChat(Chat_doctorDTO vo) {
		mybatis.insert("ChatMapper.insertChat", vo);
	}

	
	public void removeChat(Chat_doctorDTO vo) {
		mybatis.delete("ChatMapper.deleteChat", vo);
	}

}
