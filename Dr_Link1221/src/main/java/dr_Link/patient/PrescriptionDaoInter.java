package dr_Link.patient;

import java.util.List;

import dr_Link.dto.DoctorDTO;
import dr_Link.dto.DrLinkDTO;
import dr_Link.dto.MedicineDTO;
import dr_Link.dto.PatientDTO;
import dr_Link.dto.PrescriptionDTO;

public interface PrescriptionDaoInter {
	public void insertPrescription(PrescriptionDTO vo);
	public PrescriptionDTO detail_prescription(PrescriptionDTO vo) ;
	public PatientDTO prescription_info(PatientDTO patientVo);
	public DoctorDTO prescription_info(String d_id);
	public DrLinkDTO prescription_info(DrLinkDTO drLinkVo );
	public List<MedicineDTO> medicine_info (MedicineDTO vo) ;
}
