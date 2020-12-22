package kr.co.Dr_Link.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.Dr_Link.mvc.dao.MainDaoInter;
import kr.co.Dr_Link.mvc.dto.NewsReplDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private MainDaoInter dao;
	
	
	@Override
	public NewsReplDTO select_repl(NewsReplDTO nr) {
		System.out.println("Service_select_repl 요청");
		return dao.select_repl(nr.getNews_reply_num());
	}

	@Override
	public int insert_repl(NewsReplDTO nr) {
		int flag = dao.insert_repl(nr);
		return flag;
	}

	@Override
	public int update_repl(NewsReplDTO nr) {
		int flag = dao.update_repl(nr);
		return flag;
	}

	@Override
	public int delete_repl(NewsReplDTO nr) {
		int flag = dao.delete_repl(nr);
		return flag;
	}
	
	
	
}
