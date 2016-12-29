package invest;

import java.util.StringTokenizer;

public class Test {
	public static void main(String[] args) {
		StringTokenizer st = new StringTokenizer("this. is. a. test",".");
	     while (st.hasMoreTokens()) {
	         System.out.println(st.nextToken());
	     }
	     
//	     String[] result = "this.is.a.test".split(".")

	}
}
