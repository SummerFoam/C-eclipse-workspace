package test;

import java.util.Scanner;

public class Triangle {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		int a = 1,b=1,c=1;
		while(a!=0 && b!=0 && c!=0) {
			System.out.println("���������ε�������");
			a=scanner.nextInt();
			b=scanner.nextInt();
			c=scanner.nextInt();
			System.out.println(getTriangleType(a,b,c));
		}
	}

	private static String getTriangleType(int x, int y, int z) {
		// TODO Auto-generated method stub
		String result=null;
		if(x>0 && x<101 && y>0 && y<101 && z>0 && z<101) {
			if(x+y>z && x+z>y && y+z>x) {
				if(x==y || x==z || y==z) {
					result="����������";
				}else {
					result="һ��������";
				}
				if(x==y && y==z) {
					result="�ȱ�������";
				}
			}else {
				result="������������";
			}
		}
		return result;
	}
	
}
