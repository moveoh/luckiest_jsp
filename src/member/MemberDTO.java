package member;

public class MemberDTO {
	private int id;
	private String member_pw;
	private String member_email;
	private String member_nic;
	private String member_join_date;
	private String member_salty;
	private String member_sweet;
	private String member_spicy;
	
	public MemberDTO(){}
	
	public MemberDTO(String member_email, String member_pw){
		this.member_email = member_email;
		this.member_pw = member_pw;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_nic() {
		return member_nic;
	}
	public void setMember_nic(String member_nic) {
		this.member_nic = member_nic;
	}
	public String getMember_join_date() {
		return member_join_date;
	}
	public void setMember_join_date(String member_join_date) {
		this.member_join_date = member_join_date;
	}
	public String getMember_salty() {
		return member_salty;
	}
	public void setMember_salty(String member_salty) {
		this.member_salty = member_salty;
	}
	public String getMember_sweet() {
		return member_sweet;
	}
	public void setMember_sweet(String member_sweet) {
		this.member_sweet = member_sweet;
	}
	public String getMember_spicy() {
		return member_spicy;
	}
	public void setMember_spicy(String member_spicy) {
		this.member_spicy = member_spicy;
	}
	
	
}
