package samp09;

public class VehicleImpl implements Vehicle {
	private String name;
	private String rider;
	private Output output;
	
	public void setName(String name) {	this.name = name;	}
	public void setRider(String rider) {this.rider = rider;	}
	public void setOutput(Output output) {this.output = output; }
	
	public void ride() {
		String msg = name+"님이(가) "+rider+"를(을) 타시는 군요";
		System.out.println(msg);
		output.write(msg);
	}
}