package tp;

import java.util.*;
import java.math.*;

public class tp 
{
	public static void main(String[] args)
	{
		int c=0;
		System.out.println(rev(10000));
		for(int i=0;i<=10000;i++)
		{
			if(rev(i)==true)
			{
				c++;
			}
		}
		System.out.println(c);
	}
	
	public static boolean rev2(int r)
	{
		int a[]=new int[5];
		int i=0;
		int x=0;
		int y=0;
		int c=0;
		while(r>0)
		{
			x=r%10;
			if(x%2==0 && i%2==1)
			{
				a[i]=2;
			}
			else if(x%2==1 && i%2==0)
			{
				a[i]=1;
			}
			y=y*10+x;
			r=r/10;
			c++;
		}
		boolean ret=true;
		for(int j=0;j<a.length;j++)
		{
			if(j%2==0)
			{
				if(a[j]==1)
				{
					
				}
				else
				{
					ret=false;
					break;
				}
			}
			else if(j%2==1)
			{
				if(a[j]==2)
				{
					
				}
				else
				{
					ret=false;
					break;
				}
			}
		}
		return ret;
	}
	
	public static boolean rev(int r)
	{
		int x=0;
		int y=0;
		int c=0;
		boolean ret=false;
		while(r>0)
		{
			x=r%10;
			if(x==5)
			{
				ret=true;
				break;
			}
			y=y*10+x;
			r=r/10;
			c++;
		}
		return ret;
		
	}
	
	public static long f(long r)
	{
		if(r==1 || r==0)
		{
			return 1;
		}
		else
		{
			return r*f(r-1);
		}
	}
	
}