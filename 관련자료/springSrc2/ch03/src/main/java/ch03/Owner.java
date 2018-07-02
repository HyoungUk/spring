package ch03;
import java.util.ArrayList;
import java.util.List;
public class Owner {
	private String ownerName;
	private List<Pet> petList = new ArrayList<Pet>();
	
	public List<Pet> getPetList() {		return petList;	}
	public void setPetList(List<Pet> petList) {
		this.petList = petList;
	}
	public String getOwnerName() {		return ownerName;	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}	
}