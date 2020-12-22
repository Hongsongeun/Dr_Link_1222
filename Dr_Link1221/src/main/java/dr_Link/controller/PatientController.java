package dr_Link.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dr_Link.dto.DrLinkDTO;
import dr_Link.dto.PatientDTO;
import dr_Link.dto.PrescriptionDTO;
import dr_Link.patient.PatientDaoInter;
import dr_Link.patient.PrescriptionDaoInter;



@Controller
@RequestMapping(value = "/patients")
public class PatientController {

	@Autowired	
	private PrescriptionDaoInter pre_dao;
	@Autowired
	private PatientDaoInter patient_dao;
	
	@RequestMapping(value = "{step}")
	public String accessAnyFiles(@PathVariable String step) {
		System.out.println("patients 컨트롤러");
		return "/patients/"+step+".page";
	}
	
	@RequestMapping("updatePatient")
	public String updatePatient(PatientDTO vo) {
		patient_dao.updatePatient(vo);
		
		return "redirect:/patients/profile-settings?patient_num="+vo.getPatient_num();
	}
	
	@RequestMapping("profile-settings")
	public String profile_setting(HttpSession session, Model model) {
		PatientDTO result = (PatientDTO) session.getAttribute("user");
		result = patient_dao.getPatientDTO(Integer.parseInt(result.getPatient_num()));
		model.addAttribute("patient", result);
		return "/patients/profile-settings.page";
	}
	
	@RequestMapping("booking")
	public String booking() {
		
		return "/patients/booking.page";
	}
	
	/* 김다유 : patient_dashboard 페이지로 이동 - 처방기록리스트 */
	/* patient_dashboard에서 진료기록, 결제기록, 예약기록 담당하시는 분들 여기서 값 세팅해주세요 */
	@RequestMapping(value = "patient_dashboard")
	public String treatmentRecord(Model model, HttpSession session) {
//		List<TreatmentRecordDTO> treatmentRecord = patient_dao.treatmentRecord(Integer.parseInt(request.getParameter("patient_num")));
//		model.addAttribute("treatmentRecord", treatmentRecord);
		PatientDTO result = (PatientDTO) session.getAttribute("user");
		result = patient_dao.getPatientDTO(Integer.parseInt(result.getPatient_num()));
		model.addAttribute("patient", result);
		return "/patients/patient_dashboard.page";
	}
	
	/* 김다유 : 처방기록 상세 페이지로 이동 */
	@RequestMapping(value = "/detail_prescription") 
	public String end_prescription(PrescriptionDTO vo,Model model, DrLinkDTO drLinkVo) {
		PrescriptionDTO prescription = pre_dao.detail_prescription(vo);
		DrLinkDTO drLinkinfo = pre_dao.prescription_info(drLinkVo);
		
		System.out.println("★getPatient_num : "+ prescription.getPatient_num());
		System.out.println("★getDoctor_num : "+ prescription.getDoctor_num());
		System.out.println("★getTreatment_num : "+ prescription.getTreatment_num());
		
		model.addAttribute("prescription",prescription);
		model.addAttribute("drLinkinfo",drLinkinfo);
		System.out.println("controller detail_prescription 실행 완료");
		    
		return "/patients/detail_prescription";
	}

}
