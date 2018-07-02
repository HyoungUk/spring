package samp07;

public class VehicleImpl implements Vehicle {
	private String rider;
	private String name;
	
	public void setRider(String rider) {
		this.rider = rider;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void ride() {
		System.out.println(name+"이(가) "+rider+"을(를) 탄다");		
	}
}