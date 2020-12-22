package kr.co.Dr_Link.mvc.dto;

import java.util.List;

public class AppointmentDTO {

	private int appoint_num, patient_num;
	private int doctor_num, dep_num;
	private int today_cnt, tomo_cnt, total_cnt; 
	private String appointment_time;
	private String reg_time;
	
	private List<PatientDTO> patients;
	private List<DepartmentDTO> departments;
	
	
	
	
	public int getToday_cnt() {
		return today_cnt;
	}
	public void setToday_cnt(int today_cnt) {
		this.today_cnt = today_cnt;
	}
	public int getTomo_cnt() {
		return tomo_cnt;
	}
	public void setTomo_cnt(int tomo_cnt) {
		this.tomo_cnt = tomo_cnt;
	}
	public int getTotal_cnt() {
		return total_cnt;
	}
	public void setTotal_cnt(int total_cnt) {
		this.total_cnt = total_cnt;
	}
	public int getAppoint_num() {
		return appoint_num;
	}
	public void setAppoint_num(int appoint_num) {
		this.appoint_num = appoint_num;
	}
	public List<PatientDTO> getPatients() {
		return patients;
	}
	public void setPatients(List<PatientDTO> patients) {
		this.patients = patients;
	}
	public List<DepartmentDTO> getDepartments() {
		return departments;
	}
	public void setDepartments(List<DepartmentDTO> departments) {
		this.departments = departments;
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
	public int getDep_num() {
		return dep_num;
	}
	public void setDep_num(int dep_num) {
		this.dep_num = dep_num;
	}
	public String getAppointment_time() {
		return appointment_time;
	}
	public void setAppointment_time(String appointment_time) {
		this.appointment_time = appointment_time;
	}
	public String getReg_time() {
		return reg_time;
	}
	public void setReg_time(String reg_time) {
		this.reg_time = reg_time;
	}
}
