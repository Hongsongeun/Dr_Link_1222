package dr_Link.patient;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dr_Link.dto.DoctorDTO;
import dr_Link.dto.DrLinkDTO;
import dr_Link.dto.MedicineDTO;
import dr_Link.dto.PatientDTO;
import dr_Link.dto.PrescriptionDTO;

@Repository("PrescriptionDaoInter")
public class PrescriptionDaoImp implements PrescriptionDaoInter {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	/* 리스트 처리 해야 함 ... */
	@Override
	public void insertPrescription(PrescriptionDTO vo) {
		System.out.println("===> Mybatis insertPrescription() 실행");
		ss.insert("prescription.insertPrescription",vo);
	}

	@Override
	public PrescriptionDTO detail_prescription(PrescriptionDTO vo) {
		System.out.println("===> Mybatis detail_prescription() 실행");
		return ss.selectOne("prescription.detail_prescription",vo);
	}



	@Override
	public PatientDTO prescription_info(PatientDTO patientVo) {
		System.out.println("===> Mybatis prescription_info(환자정보) 실행");
		return ss.selectOne("prescription.patient_info",patientVo);
	}

	@Override
	public DoctorDTO prescription_info(String d_id) {
		System.out.println("===> Mybatis prescription_info(의사정보) 실행");
		return ss.selectOne("prescription.doctor_info",d_id);
	}

	@Override
	public DrLinkDTO prescription_info(DrLinkDTO drLinkVo) {
		System.out.println("===> Mybatis prescription_info(병원정보) 실행");
		return ss.selectOne("prescription.drLink_info",drLinkVo);
	}

	@Override
	public List<MedicineDTO> medicine_info(MedicineDTO vo) {
		System.out.println("===> Mybatis medicine_info() 실행");
		return ss.selectList("prescription.medicine_info",vo);
	}

}