package samp10;

public class VehicleImpl implements Vehicle {
	private String name;
	private String rider;
	private Outputer out;

	public void setName(String name) {
		this.name = name;
	}

	public void setRider(String rider) {
		this.rider = rider;
	}

	public void setOut(Outputer out) {
		this.out = out;
	}

	public void ride() {
		String msg = name + "이(가) " + rider + "을(를) 탄다";
		System.out.println(msg);
		out.print(msg);
	}

}
