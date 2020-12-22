package kr.co.Dr_Link.mvc.dto;

public class TreatRecordDTO {

	private int treatment_num, patient_num, doctor_num, appoint_num, monitoring_time;
    private String start_treatment_time;
    
	public int getTreatment_num() {
		return treatment_num;
	}
	public void setTreatment_num(int treatment_num) {
		this.treatment_num = treatment_num;
	}
	public int getPatient_num() {
		return patient_num;
	}
	public void setPatient_num(int patient_num) {
		this.patient_num = patient_num;
	}
	public int getDoctor_num() {
		return doctor_num;
	}
	public void setDoctor_num(int doctor_num) {
		this.doctor_num = doctor_num;
	}
	public int getAppoint_num() {
		return appoint_num;
	}
	public void setAppoint_num(int appoint_num) {
		this.appoint_num = appoint_num;
	}
	public int getMonitoring_time() {
		return monitoring_time;
	}
	public void setMonitoring_time(int monitoring_time) {
		this.monitoring_time = monitoring_time;
	}
	public String getStart_treatment_time() {
		return start_treatment_time;
	}
	public void setStart_treatment_time(String start_treatment_time) {
		this.start_treatment_time = start_treatment_time;
	}
    
    
}
