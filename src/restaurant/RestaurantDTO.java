package restaurant;

import java.io.Serializable;

public class RestaurantDTO implements Serializable{
	
	private int restaurant_id;
    private String restaurant_name;
    private String restaurant_adress;
    private int restaurant_category1;
    private int restaurant_category2;
    
	public int getRestaurant_id() {
		return restaurant_id;
	}
	public void setRestaurant_id(int restaurant_id) {
		this.restaurant_id = restaurant_id;
	}
	public String getRestaurant_name() {
		return restaurant_name;
	}
	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}
	public String getRestaurant_adress() {
		return restaurant_adress;
	}
	public void setRestaurant_adress(String restaurant_adress) {
		this.restaurant_adress = restaurant_adress;
	}
	public int getRestaurant_category1() {
		return restaurant_category1;
	}
	public void setRestaurant_category1(int restaurant_category1) {
		this.restaurant_category1 = restaurant_category1;
	}
	public int getRestaurant_category2() {
		return restaurant_category2;
	}
	public void setRestaurant_category2(int restaurant_category2) {
		this.restaurant_category2 = restaurant_category2;
	}
    
    
	

}
