package dr_Link.doctor;

import java.util.List;

import dr_Link.dto.DoctorDTO;

public interface DoctorDaoInter {
	
	void insertDoctor(DoctorDTO vo);
	
	void updateDoctor(DoctorDTO vo);
	
	void deleteDoctor(DoctorDTO vo);
	
	// read
	DoctorDTO doctor_profile(int doctor_num);
	
	List<DoctorDTO> getDoctorList();
	
	// 조건
	List<DoctorDTO> getDoctorList(DoctorDTO vo);
		

	
	}

	