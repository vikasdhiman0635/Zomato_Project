package Zomatofile;

public class Userprofilerew 
{
	String strusername;

	public String getStrusername() {
		return strusername;
	}

	public void setStrusername(String strusername) {
		this.strusername = strusername;
	}

	@Override
	public String toString() {
		return "Userprofilerew [strusername=" + strusername + ", getStrusername()=" + getStrusername() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public Userprofilerew(String strusername) {
		super();
		this.strusername = strusername;
	}
	
	
}