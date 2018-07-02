package samp10;

import java.io.FileWriter;
import java.io.IOException;

public class FileOutputter implements Outputer {
	private String fileName;

	public void setFilename(String fileName) {
		this.fileName = fileName;
	}

	public void print(String msg) {
		try {
			FileWriter fw = new FileWriter(fileName);
			fw.write(msg);
			fw.close();
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}
	
}
