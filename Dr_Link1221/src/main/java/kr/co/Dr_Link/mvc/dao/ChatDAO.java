package kr.co.Dr_Link.mvc.dao;

import java.util.List; 

import kr.co.Dr_Link.mvc.dto.Chat_doctorDTO;

public interface ChatDAO {
	List<Chat_doctorDTO> readChat(Chat_doctorDTO vo);
	
	void insertChat(Chat_doctorDTO vo);
	
	void removeChat(Chat_doctorDTO vo);
}
