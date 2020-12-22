package dr_Link.dto;

public class AppointmentDTO {
	private String appointment_num       ;
	private String patient_num           ;
	private String doctor_num            ;
	private String dep_num               ;
	private String treatment_date        ;
	private String treatment_time        ;
	private String reg_date              ;
	
	public String getAppointment_num() {
		return appointment_num;
	}
	public void setAppointment_num(String appointment_num) {
		this.appointment_num = appointment_num;
	}
	public String getPatient_num() {
		return patient_num;
	}
	public void setPatient_num(String patient_num) {
		this.patient_num = patient_num;
	}
	public String getDoctor_num() {
		return doctor_num;
	}
	public void setDoctor_num(String doctor_num) {
		this.doctor_num = doctor_num;
	}
	public String getDep_num() {
		return dep_num;
	}
	public void setDep_num(String dep_num) {
		this.dep_num = dep_num;
	}
	public String getTreatment_date() {
		return treatment_date;
	}
	public void setTreatment_date(String treatment_date) {
		this.treatment_date = treatment_date;
	}
	public String getTreatment_time() {
		return treatment_time;
	}
	public void setTreatment_time(String treatment_time) {
		this.treatment_time = treatment_time;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
