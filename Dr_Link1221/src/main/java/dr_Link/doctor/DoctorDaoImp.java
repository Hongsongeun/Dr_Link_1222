package dr_Link.doctor;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dr_Link.dto.DoctorDTO;

@Repository("doctorDaoInter")
public class DoctorDaoImp implements DoctorDaoInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public DoctorDTO doctor_profile(int doctor_num) {
		System.out.println("===> ss doctor_profile() 실행");
		return ss.selectOne("doctor.doctor_profile", doctor_num);
	}

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
		return null;
	}

	@Override
	public List<DoctorDTO> getDoctorList(DoctorDTO vo) {
		return null;
	}
	
	/*@Override
	
	 * public List<SearchDTO> getSearch() {
	 * System.out.println("===> ss getSearch() 실행"); return
	 * ss.selectList("doctor.getSearch"); }
	 */

	

}
