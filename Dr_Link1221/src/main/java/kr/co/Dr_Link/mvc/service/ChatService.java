package kr.co.Dr_Link.mvc.service;

import java.util.List; 

import kr.co.Dr_Link.mvc.dto.Chat_doctorDTO;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;

public interface ChatService {
	void insertChat(Chat_doctorDTO vo);
	
	List<Chat_doctorDTO> readChat(Chat_doctorDTO vo);
	
	void removeChat(Chat_doctorDTO vo);
	
}
