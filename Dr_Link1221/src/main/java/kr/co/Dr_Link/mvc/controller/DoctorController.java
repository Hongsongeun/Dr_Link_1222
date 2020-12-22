package kr.co.Dr_Link.mvc.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.Dr_Link.mvc.dao.DoctorDaoInter;
import kr.co.Dr_Link.mvc.dao.MainDaoInter;
import kr.co.Dr_Link.mvc.dao.PatientDaoInter;
import kr.co.Dr_Link.mvc.dao.PrescriptionDaoInter;
import kr.co.Dr_Link.mvc.dto.AppointmentDTO;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;
import kr.co.Dr_Link.mvc.dto.DrLinkDTO;
import kr.co.Dr_Link.mvc.dto.MedicineDTO;
import kr.co.Dr_Link.mvc.dto.PatientDTO;
import kr.co.Dr_Link.mvc.dto.PrescriptionDTO;
import kr.co.Dr_Link.mvc.dto.TreatRecordDTO;
import kr.co.Dr_Link.mvc.service.DoctorService;

@Controller
@RequestMapping(value = "/doctor")
public class DoctorController {

	
	@Autowired
	private DoctorService doctorService;
	@Autowired
	private MainDaoInter dao;
	@Autowired
	private DoctorDaoInter doctor_dao;
	
	@RequestMapping(value = "/add_prescription") 
	public String add_prescription(DrLinkDTO vo,Model model) {
		//DrLinkDTO info = pre_dao.drLink_info(vo); 
		System.out.println("처방입력 페이지로 이동");
		//model.addAttribute("info",info);
		System.out.println("controller drLink_info 실행 완료");	    
		return "/doctor/add_prescription";
	}
	
	@RequestMapping("/search_doctor.do")
	public String searchPage(Model model) {
		model.addAttribute("doctor_list", doctorService.getDoctorList());
		
		return "doctor/search_doctor";
	}
	
	@RequestMapping("/doctor-profile.do")
	public String profilePage(HttpServletRequest request, Model model) {
		
		return "doctor/doctor-profile";
	}
	
	@ResponseBody
	@RequestMapping("/doctorSearch.do")
	public String searchDoctor(HttpServletRequest request, Model model) {
		
		
		return "";
	}
	
	@RequestMapping(value = "/end_prescription", method = RequestMethod.POST) 
	public String end_prescription(PrescriptionDTO vo,HttpServletRequest request) {
		System.out.println("end 로 들어옴");
		System.out.println("처방입력 완료");
		//pre_dao.insertPrescription(vo);
		System.out.println(" controller insertPrescription 실행 완료");	    
		return "/doctor/end_prescription";
	}

	@RequestMapping(value = "{step}")
	public String accessAnyFiles(@PathVariable String step) {
		System.out.println("doctor 컨트롤러 실행");
		return "/doctor/"+step;
	}
	
	/* 배열 붙이는 메소드 */
	public static String arrayJoin(String glue, String array[]) {
	    String result = "";

	    for (int i = 0; i < array.length; i++) {
	      result += array[i];
	      if (i < array.length - 1) result += glue;
	    }
	    return result;
	  }
	
	// 예약현황
	@RequestMapping(value = "/appointments")
	public ModelAndView goAPPage(HttpSession session, HttpServletRequest rq) {
		// 페이징 처리를 위해 들어오는 넘버
		String page_num = rq.getParameter("p_num");
		int p_num =  page_num == null ? 1 : Integer.parseInt(page_num);
		List<AppointmentDTO> ap = doctor_dao.getApList(3, p_num);
		ModelAndView mv = new ModelAndView("/doctor/appointments");
		mv.addObject("apList", ap);
		try {
			if(ap.get(0).getTotal_cnt() > 0) {
				p_num = (ap.get(0).getTotal_cnt()%10 == 0) ? p_num%10 : (p_num/10)+1;
				mv.addObject("p_num", p_num);
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
			
		/*
		try {
			Date today = new Date(); 
			SimpleDateFormat format6, format7; 
			format6 = new SimpleDateFormat("오늘은 yyyy년의 w주차이며 D번째 날입니다."); 
			format7 = new SimpleDateFormat("오늘은 M월의 w번째 주, d번째 날이며, F번째 E요일입니다."); 
			System.out.println(format6.format(today)); 
			System.out.println(format7.format(today));
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		
		return mv;
	}
	
	// dash_board
	@RequestMapping(value = "/doctor-dashboard")
	public ModelAndView doctor_dashboard(HttpSession session, HttpServletRequest rq) {
		// 의사가 대시보드로 이동할 때 세션에 있는 의사의 pk 번호를 가져온다.
		//session.getAttribute("doctor_num");
		ModelAndView mv = new ModelAndView("/doctor/doctor-dashboard");
		AppointmentDTO ap_dto = doctor_dao.get_total_cnt(3);
		List<TreatRecordDTO> tr_dto = doctor_dao.getAP_num();
		List<AppointmentDTO> apList = doctor_dao.get_D_board(3);
		int cnt=0;
		try {
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
			String day = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
			Date today = format.parse(day);
			for(int i=0; i<apList.size(); i++) {
				Date apDay = format.parse(apList.get(i).getAppointment_time().substring(0, 8));
				// if에 들어간 i의 값은 오늘 보다 큰 날짜의 데이터를 담고있는 List의 index 번호
				if (today.compareTo(apDay) < 0) {
					cnt=i; 
					break;
				}
				cnt++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*
		try{
			if(rq.getParameter("d_page") != null ) {
				nt = dao.getNewsPage(Integer.parseInt(rq.getParameter("d_page")));
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
        }*/
		
		mv.addObject("allCnt", ap_dto);
		mv.addObject("afterTreat", tr_dto);
		mv.addObject("dashList", apList);
		mv.addObject("cnt", cnt);
		return mv;
	}
}
