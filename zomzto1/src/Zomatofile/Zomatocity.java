package Zomatofile;

public class Zomatocity 
{
	String strsearch;

	public String getStrsearch() {
		return strsearch;
	}

	public void setStrsearch(String strsearch) {
		this.strsearch = strsearch;
	}

	@Override
	public String toString() {
		return "Zomatocity [strsearch=" + strsearch + ", getStrsearch()=" + getStrsearch() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public Zomatocity(String strsearch) {
		super();
		this.strsearch = strsearch;
	}
	
	
}
