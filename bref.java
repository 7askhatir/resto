package bref1;

import java.util.Scanner;
import java.io.IOException;


public class bref1 {
  
	public static void main(String[] args) {
		String name;
		String prenom;
		int nbrHour;
		float tarifHour;
		float tarifToutal;
		System.out.println("Bienvenu"); 
		Scanner in=new Scanner(System.in);
		System.out.println("donner votre nome");
		name=in.nextLine();
		System.out.println("donne votre prenom");
		prenom=in.nextLine();
		System.out.println("bienvenu" +" "+ name +" "+prenom);
		System.out.println(" le nombre d’heures travaillées");
		nbrHour=in.nextInt();
	    while(nbrHour > 60) {
	    	System.out.println("  informations erronés ! ");
			System.out.println(" le nombre d’heures travaillées infirieur ou egal 60");
			nbrHour=in.nextInt();
	    }
		System.out.println(" le tarif par heure\r\n"); 
		tarifHour=in.nextFloat();
		if(nbrHour>40) tarifToutal=(40*tarifHour)+(nbrHour-40)*tarifHour*3/2;
		else tarifToutal=(tarifHour*nbrHour);
		System.out.println("votre indemnisation est de "+tarifToutal+" MAD");	
	}
}
