package Zomatofile;

public class calculatemanu 
{
	int intcost;

	public int getIntcost() {
		return intcost;
	}

	public void setIntcost(int intcost) {
		this.intcost = intcost;
	}

	@Override
	public String toString() {
		return "calculatemanu [intcost=" + intcost + ", getIntcost()=" + getIntcost() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public calculatemanu(int intcost) {
		super();
		this.intcost = intcost;
	}
	
	
	
}
