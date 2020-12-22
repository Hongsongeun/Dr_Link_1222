package kr.co.Dr_Link.mvc.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.Dr_Link.mvc.dao.ChatDAOImpl;
import kr.co.Dr_Link.mvc.dto.Chat_doctorDTO;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;

@Service("chatService")
public class ChatServiceImpl implements ChatService {
	@Autowired
	private ChatDAOImpl chatDAO;

	@Override
	public void insertChat(Chat_doctorDTO vo) {
		chatDAO.insertChat(vo);
	}

	@Override
	public List<Chat_doctorDTO> readChat(Chat_doctorDTO vo) {
		
		return chatDAO.readChat(vo);
	}

	@Override
	public void removeChat(Chat_doctorDTO vo) {
		chatDAO.removeChat(vo);
	}


}
