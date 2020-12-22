package kr.co.Dr_Link.mvc.service;

import kr.co.Dr_Link.mvc.dto.NewsReplDTO;

public interface BoardService {
	
	public NewsReplDTO select_repl(NewsReplDTO nr);
	public int insert_repl(NewsReplDTO nr);
	public int update_repl(NewsReplDTO nr);
	public int delete_repl(NewsReplDTO nr);
}
