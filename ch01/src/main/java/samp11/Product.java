package samp11;

public class Product {
	private String name;
	private int price;
	public Product(String name, int price) {
		this.name = name;
		this.price = price;
	}
	@Override
	public String toString() {
		return "[이름:" + name +", 가격:" + price + "]";
	}
}
