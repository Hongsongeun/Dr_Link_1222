package kr.co.Dr_Link.mvc.dto;

public class Chat_doctorDTO {
	private String chat_num;
	private String msg_sender;
	private String msg_recipient;
	private String msg;
	private String msg_date;
	private boolean remove_flag;
	
	public String getChat_num() {
		return chat_num;
	}
	public void setChat_num(String chat_num) {
		this.chat_num = chat_num;
	}
	public String getMsg_sender() {
		return msg_sender;
	}
	public void setMsg_sender(String msg_sender) {
		this.msg_sender = msg_sender;
	}
	public String getMsg_recipient() {
		return msg_recipient;
	}
	public void setMsg_recipient(String msg_recipient) {
		this.msg_recipient = msg_recipient;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getMsg_date() {
		return msg_date;
	}
	public void setMsg_date(String msg_date) {
		this.msg_date = msg_date;
	}
	public boolean isRemove_flag() {
		return remove_flag;
	}
	public void setRemove_flag(boolean remove_flag) {
		this.remove_flag = remove_flag;
	}
	
	
}
