package kr.co.Dr_Link.mvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.Dr_Link.mvc.dao.DoctorDaoImp;
import kr.co.Dr_Link.mvc.dao.DoctorDaoInter;
import kr.co.Dr_Link.mvc.dao.MainDaoInter;
import kr.co.Dr_Link.mvc.dao.PatientDaoImp;
import kr.co.Dr_Link.mvc.dao.PatientDaoInter;
import kr.co.Dr_Link.mvc.dto.AppointmentDTO;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;
import kr.co.Dr_Link.mvc.dto.Hospital_boardDTO;
import kr.co.Dr_Link.mvc.dto.NewsDTO;
import kr.co.Dr_Link.mvc.dto.NewsReplDTO;
import kr.co.Dr_Link.mvc.dto.PatientDTO;
import kr.co.Dr_Link.mvc.dto.PrescriptionDTO;
import kr.co.Dr_Link.mvc.dto.SearchDTO;
import kr.co.Dr_Link.mvc.service.BoardService;
import kr.co.Dr_Link.mvc.service.PatientServiceImpl;

@Controller
public class MainController {
	
	@Autowired
	private MainDaoInter dao;
	@Autowired	
	private DoctorDaoInter doc_dao;
	@Autowired
	private PatientServiceImpl service;
	@Autowired
	private PatientDaoInter patient_dao;
	@Autowired
	private BoardService board;
	
	@RequestMapping(value = "/Dr_LinkMainPage")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = {"/", "index"})
	public String indexRq() {
		System.out.println("index 요청: ");
		return "main.page";
	}
	
	@RequestMapping(value = {"logout"})
	public String logout(HttpSession session) {
		System.out.println("logout 요청: ");
		//session.removeAttribute("");
		session.removeAttribute("user_name");
		session.removeAttribute("user_num");
		return "redirect:main.page";
	}
	
	@RequestMapping(value = "{step}")
	public String accessAnyFiles(@PathVariable String step) {
		System.out.println("main 컨트롤러 요청: "+step);
		return step+".page";
	}

	@RequestMapping(value = "/doctor_profile")
	public String doctor_profile(DoctorDTO vo, Model model) {
		/*
		 * try {
		 * 
		 * DoctorDTO doctor_profile = doctor_dao.doctor_profile(vo); String graduation =
		 * doctor_profile.getD_graduation(); String[] college = graduation.split(",");
		 * 
		 * String[][] result = new String[college.length][];
		 * 
		 * for (String s : college) { System.out.println(s); }
		 * 
		 * for (int i = 0; i < college.length; ++i) { result[i] = college[i].split(" ");
		 * System.out.println(result[i][0]); System.out.println(result[i][1]); }
		 * 
		 * model.addAttribute("doctor_profile",doctor_profile);
		 * model.addAttribute("doctor_graduation",result);
		 * System.out.println("의사상세프로필 이동");
		 * 
		 * } catch (NullPointerException e) {
		 * 
		 * }
		 */
		return "doctor_profile.page";
	}
	

	@RequestMapping(value = "userInsert")
	public String userInsert(PatientDTO dto) {
		System.out.println("===> dao로 가자!");
		patient_dao.insertPatient(dto);
		System.out.println("===> Mybatis add() 실행 성공인가?");
		return "login.page";
	}

	@RequestMapping(value = "loginCheck")
	public String loginCheck(PatientDTO dto, HttpSession session) {
		System.out.println("===> dao로 가자!");
		PatientDTO result = patient_dao.loginCheckPatient(dto);
		if (result == null) {
			return "login";
		} else {
			System.out.println("===> Mybatis loginchk() 실행 성공인가?");
			session.setAttribute("user_name", result.getP_id());
			session.setAttribute("user_num", result.getPatient_num());
		}
		return "main.page";
	}
	
	
	// 아이디 찾기
	@RequestMapping(value = "find_id.do", method = RequestMethod.POST)
	public String find_id(HttpServletResponse response, @RequestParam("email") String email, Model md) throws Exception{
		md.addAttribute("id", service.find_id(response, email));
		return "find-id";
	}


	// 아이디 중복 검사(AJAX)
	@RequestMapping(value = "check_id.do", method = RequestMethod.POST)
	public void check_id(@RequestParam("p_id") String p_id, HttpServletResponse response) throws Exception{
		System.out.println("===> Mybatis 아이디 중복 검사(AJAX) 실행 성공인가?");
		service.check_id(p_id, response);
	}
	
	
	// id 중복 체크 컨트롤러
	@RequestMapping(value = "idCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("p_id") String p_id) {
		System.out.println("===> Mybatis idCheck() 실행 성공인가?");
		return patient_dao.idCheck(p_id);
	}
	
	// 비밀번호 찾기
	@RequestMapping(value = "find_pw.do", method = RequestMethod.POST)
	public void find_pw(@ModelAttribute PatientDTO dto, HttpServletResponse response) throws Exception{
		System.out.println("===> Mybatis 비밀번호 찾기 실행 성공인가?");
		service.find_pw(response, dto);
	}
	
	/*
	 * // 의료진소개
	 * 
	 * @RequestMapping("/search") public String view(SearchDTO vo, Model model) {
	 * List<SearchDTO> getSearch = doctor_dao.getSearch();
	 * model.addAttribute("getSearch", getSearch); return "search"; }
	 */
	
	@RequestMapping(value = "notice")
	public ModelAndView getH_BoardList(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("notice.page");
		List<Hospital_boardDTO> li;
		// dao.getAll(); 나중에 수정해야 할 사항
		int pageAll = dao.getBoardCnt();
		pageAll = (pageAll%10 == 0) ? pageAll%10 : (pageAll/10)+1;
		try {
			if(request.getParameter("d_page") != null) {
				li = dao.getAllHospitalBoards(Integer.parseInt(request.getParameter("d_page")));
			} else {
				li = dao.getAllHospitalBoards();
			}
			mv.addObject("h_boardList",li);
			mv.addObject("page_num", pageAll);
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
	@RequestMapping(value = "notice_detail")
	public ModelAndView getH_BoardDetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("notice_detail.page");
		int h_b_num = Integer.parseInt(request.getParameter("b_num"));
		dao.plusWatchCnt(h_b_num);
		Hospital_boardDTO dto = dao.getDetailHospitalBoard(h_b_num);
		mv.addObject("h_board", dto);
		
		return mv;
	}
	
	@RequestMapping(value = "health-blog")
	public ModelAndView getHealth_Board(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("health-blog.page");
		List<NewsDTO> nt;
		try{
			if(request.getParameter("d_page") != null ) {
				nt = dao.getNewsPage(Integer.parseInt(request.getParameter("d_page")));
			} else { nt = dao.getAllNewsBoards(); }
			
			for(int i=0; i<nt.size(); i++) { 
				String regdate = nt.get(i).getNews_regdate().substring(0, 10).replace("-", ".");
				nt.get(i).setNews_regdate(regdate); }
			int page_num = nt.get(0).getGetCnt();
			
			page_num = (page_num%4 == 0) ? page_num/4 : (page_num/4)+1;
			mv.addObject("newsList", nt);
			mv.addObject("p_num", page_num);
        }catch (Exception e){
            System.out.println(e.toString());
        }
		return mv;
	}
	
	@RequestMapping(value = "health-blog-detail")
	public ModelAndView getHealth_BoardDetail(HttpServletRequest request, NewsReplDTO news) {
		ModelAndView mv = new ModelAndView("health-blog-detail.page");
		try {
			if(request.getParameter("b_num") != null) {
			NewsDTO dto = dao.getNewsBoardsDetail(Integer.parseInt(request.getParameter("b_num")));
			List<NewsReplDTO> nr = dao.getNewsRepl(Integer.parseInt(request.getParameter("b_num")));
			
			mv.addObject("n_board", dto);
			mv.addObject("n_repl", nr);
			for(NewsReplDTO n : nr) {
				//System.out.println("가져온 값: "+ nr.get(0).getN_comments_num());
			}
			System.out.println("ajax");
			} else {
				
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
	@RequestMapping(value = "leave_comment", method = RequestMethod.POST)
	@ResponseBody
	public Object comments_repl(@RequestBody NewsReplDTO nr, HttpSession session, HttpServletRequest rq) {
		
		int result=0;
		int b_num = nr.getNews_board_num();
		try {
			String handle_repl= nr.getRepl_handling();
			if(handle_repl.equals("댓글")) {
				result = board.insert_repl(nr);
			} else if (handle_repl.equals("답글")) {
				nr.setN_comments_num(nr.getNews_reply_num());
				result = board.insert_repl(nr);
			} else if (handle_repl.equals("수정")) {
				result = board.update_repl(nr);
			}
			else {
				result = board.delete_repl(nr);
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		
		HashMap<String, String> map = new HashMap<String, String>();
		if(result>0) {
			map.put("success", "작업이 완료되었습니다.");
			map.put("url", "http://localhost:8070/Dr_Link/health-blog-detail?b_num="+b_num);
		}
		else map.put("err", "작업이 서버에 오류가 있어 수행되지 않았습니다.");
		
		return map;
	}
	
}
