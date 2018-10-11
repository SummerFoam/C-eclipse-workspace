package test;

import java.util.Date;
import java.util.Scanner;

public class Nextdate {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		int year = 1000,month = 1,day = 1;
		while(1000<=year &&year<=3000 && 1<=month && month<=12 && 1<=day && day<=31) {
			System.out.println("输入年、月、日");
			year=scanner.nextInt();
			month=scanner.nextInt();
			day=scanner.nextInt();
			System.out.println(getInfo(year,month,day));
		}
	}

	private static String getInfo(int x, int y, int z) {
		// TODO Auto-generated method stub
		String result=null;
		if(x>=1000 && x<=3000 && y<=12 && z<=31) {
			//闰年
			if(x%4 == 0) {
				if(y>2 && y<12 && z>=1 && z<31) {
					z=z+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				
				}
				else if(y==1&& z<31) {
					z=z+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y==1&& z==31) {
					z=1;
					y=y+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y==2&& z<29) {
					z=z+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y == 2 && z == 29) {
					y=y+1;
					z=1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(z == 31 && y<12){
					y=y+1;
					z=1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y == 12 && z==31){
						x=x+1;
						y=1;
						z=1;
						result="下一天是:"+x+"年"+y+"月"+z+"日";
					}
			}else {//不是闰年
				if(y>2 && y<12 && z>=1 && z<31) {
					z=z+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				
				}
				else if(y==1&& z<31) {
					z=z+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y==1&& z==31) {
					z=1;
					y=y+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y==2&& z<28) {
					z=z+1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y == 2 && z == 28) {
					y=y+1;
					z=1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(z == 31 && y<12){
					y=y+1;
					z=1;
					result="下一天是:"+x+"年"+y+"月"+z+"日";
				}
				else if(y == 12 && z==31){
						x=x+1;
						y=1;
						z=1;
						result="下一天是:"+x+"年"+y+"月"+z+"日";
					}

		}
		}else{
			result="超出范围";
		}
		
		
		return result;
	}
}
