package menu;

import java.io.Serializable;

public class MenuDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int menu_id;
	private int restaurant_id;
	private String menu_name;
	private int menu_price;
	private double menu_ave_star;
	private String menu_summary;
	
	public int getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}
	public int getRestaurant_id() {
		return restaurant_id;
	}
	public void setRestaurant_id(int restaurant_id) {
		this.restaurant_id = restaurant_id;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public double getMenu_ave_star() {
		return menu_ave_star;
	}
	public void setMenu_ave_star(double menu_ave_star) {
		this.menu_ave_star = menu_ave_star;
	}
	public String getMenu_summary() {
		return menu_summary;
	}
	public void setMenu_summary(String menu_summary) {
		this.menu_summary = menu_summary;
	}
	
	


}