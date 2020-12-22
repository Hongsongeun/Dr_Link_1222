package kr.co.Dr_Link.mvc.dao;

import java.util.List;

import kr.co.Dr_Link.mvc.dto.AppointmentDTO;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;
import kr.co.Dr_Link.mvc.dto.SearchDTO;
import kr.co.Dr_Link.mvc.dto.TreatRecordDTO;

public interface DoctorDaoInter {
	public DoctorDTO doctor_profile(DoctorDTO vo);
	public void doctor_profile_update(DoctorDTO vo);
	public List<SearchDTO> getSearch();
	
	public List<AppointmentDTO> getApList(int doctor_num, int p_num);
	
	public List<AppointmentDTO> get_D_board(int doctor_num);
	public List<TreatRecordDTO> getAP_num();
	public AppointmentDTO get_total_cnt(int doctor_num);
}
	