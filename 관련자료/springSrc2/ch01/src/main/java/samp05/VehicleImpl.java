package samp05;
public class VehicleImpl implements Vehicle {
	private String rider;
	private String name;
	public VehicleImpl(String rider, String name) {
		this.rider = rider;  this.name = name;
	}
	public void ride() {
		System.out.println(name+"이(가) "+rider+"을(를) 탔다");		
	}
}