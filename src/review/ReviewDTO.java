package review;

import java.io.Serializable;

public class ReviewDTO implements Serializable{

	private int review_id;
    private String member_nic;
    private int menu_id;
    private String comment_date;
    private String comment_content;
    private Double star_score;
    
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getMember_nic() {
		return member_nic;
	}
	public void setMember_nic(String member_nic) {
		this.member_nic = member_nic;
	}
	public int getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Double getStar_score() {
		return star_score;
	}
	public void setStar_score(Double star_score) {
		this.star_score = star_score;
	}
    
    

    
}
