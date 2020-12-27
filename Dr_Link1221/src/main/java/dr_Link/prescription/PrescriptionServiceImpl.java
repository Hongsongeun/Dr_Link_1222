package dr_Link.prescription;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dr_Link.doctorProfile.DoctorDTO;
import dr_Link.dto.DrLinkDTO;
import dr_Link.dto.MedicineDTO;
import dr_Link.dto.PatientDTO;

@Repository("PrescriptionService")
public class PrescriptionServiceImpl implements PrescriptionService{
	

	@Autowired
	private PrescriptionDaoInter prescriptionDao;

	@Override
	public List<PrescriptionDTO> prescriptionRecord(int patient_num) {
		return prescriptionDao.prescriptionRecord(patient_num);
	}

	@Override
	public void add_prescription(PrescriptionDTO vo) {
		prescriptionDao.add_prescription(vo);
	}

	@Override
	public PrescriptionDTO detail_prescription(PrescriptionDTO vo) {
		return prescriptionDao.detail_prescription(vo);
	}

	@Override
	public PatientDTO patient_info(int patient_num) {
		return prescriptionDao.patient_info(patient_num);
	}

	@Override
	public DoctorDTO doctor_info(int doctor_num) {
		return prescriptionDao.doctor_info(doctor_num);
	}

	@Override
	public List<MedicineDTO> medicine_info(MedicineDTO vo) {
		return prescriptionDao.medicine_info(vo);
	}

	@Override
	public List<MedicineDTO> medicine_detail_info(String[] medicine_num) {
		return prescriptionDao.medicine_detail_info(medicine_num);
	}

	@Override
	public DrLinkDTO drLink_info(DrLinkDTO vo) {
		return prescriptionDao.drLink_info(vo);
	}

	@Override
	public DrLinkDTO prescription_info(DrLinkDTO drLinkVo) {
		// TODO Auto-generated method stub
		return null;
	}

}
