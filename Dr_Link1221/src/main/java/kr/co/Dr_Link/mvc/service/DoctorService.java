package kr.co.Dr_Link.mvc.service;

import java.util.List; 

import kr.co.Dr_Link.mvc.dto.DoctorDTO;

public interface DoctorService {
	
	void insertDoctor(DoctorDTO vo);
	
	void updateDoctor(DoctorDTO vo);
	
	void deleteDoctor(DoctorDTO vo);
	
	List<DoctorDTO> getDoctorList();
	
	List<DoctorDTO> getDoctorList(DoctorDTO vo);
	
	DoctorDTO getDoctorInfo(DoctorDTO vo);

}
