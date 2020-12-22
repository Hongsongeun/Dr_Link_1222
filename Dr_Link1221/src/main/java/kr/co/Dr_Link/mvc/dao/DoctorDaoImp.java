package kr.co.Dr_Link.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.Dr_Link.mvc.dto.AppointmentDTO;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;
import kr.co.Dr_Link.mvc.dto.PrescriptionDTO;
import kr.co.Dr_Link.mvc.dto.SearchDTO;
import kr.co.Dr_Link.mvc.dto.TreatRecordDTO;

@Repository("DoctorDaoInter")
public class DoctorDaoImp implements DoctorDaoInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public DoctorDTO doctor_profile(DoctorDTO vo) {
		System.out.println("===> Mybatis doctor_profile() 실행");
		return ss.selectOne("doctor.doctor_profile",vo);
	}

	@Override
	public void doctor_profile_update(DoctorDTO vo) {
		System.out.println("===> Mybatis addPrescription() 실행");
		ss.insert("prescription.addPrescription",vo);
	}
	
	@Override
	public List<SearchDTO> getSearch() {
		System.out.println("===> ss getSearch() 실행");
		return ss.selectList("doctor.getSearch");
	}

	public void insertDoctor(DoctorDTO vo) {
		// TODO Auto-generated method stub

	}

	public void updateDoctor(DoctorDTO vo) {
		// TODO Auto-generated method stub

	}

	public void deleteDoctor(DoctorDTO vo) {
		// TODO Auto-generated method stub

	}

	public List<DoctorDTO> getDoctorList() {
		// TODO Auto-generated method stub
		return ss.selectList("DoctorMapper.getDoctorList");
	}

	public List<DoctorDTO> getDoctorList(DoctorDTO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	public DoctorDTO getDoctorInfo(DoctorDTO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	
	// dash_board 갈 때 가져올 예약 목록들
	public List<AppointmentDTO> get_D_board(int doctor_num) {
		System.out.println("get_D_board 요청");
		return ss.selectList("doctor.get_dashList", doctor_num);
	}

	// 오늘자 예약 목록에서 진료가 되었는지 체크
	public List<TreatRecordDTO> getAP_num() {
		System.out.println("getAP_num 요청");
		return ss.selectList("doctor.getAP_num");
	}
	
	// 환자 수 가져오기
	public AppointmentDTO get_total_cnt(int doctor_num) {
		System.out.println("get_total_cnt 요청");
		return ss.selectOne("doctor.dash_total_cnt", doctor_num);
	}
	
	// appointment 페이지로 갈 때
	public List<AppointmentDTO> getApList(int doctor_num, int p_num) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		if (p_num == 1) {
			map.put("start", p_num);
			map.put("end", p_num*10);
		} else {
			map.put("start", p_num*10-9);
			map.put("end", p_num*10);
		}
		map.put("doctor_num", doctor_num);
		System.out.println("getApList 요청: "+ doctor_num + " "+ p_num);
		return ss.selectList("doctor.getApList",map);
	}

}
