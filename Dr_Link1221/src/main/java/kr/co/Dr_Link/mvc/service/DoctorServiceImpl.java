package kr.co.Dr_Link.mvc.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.Dr_Link.mvc.dao.DoctorDaoImp;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;

@Service("doctorService")
public class DoctorServiceImpl implements DoctorService {
	
	@Autowired
	private DoctorDaoImp doctorDAO;

	@Override
	public void insertDoctor(DoctorDTO vo) {
		
	}

	@Override
	public void updateDoctor(DoctorDTO vo) {
		
	}

	@Override
	public void deleteDoctor(DoctorDTO vo) {
		
	}
	
	@Override
	public List<DoctorDTO> getDoctorList() {
		return doctorDAO.getDoctorList();
	}

	@Override
	public List<DoctorDTO> getDoctorList(DoctorDTO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DoctorDTO getDoctorInfo(DoctorDTO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
