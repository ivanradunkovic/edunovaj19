package edunova;

import javax.swing.JOptionPane;

public class CiklickaTablica {

public static void main(String[] args) {
		
		int a=Integer.parseInt(JOptionPane.showInputDialog("Broj redaka"));
		int b=Integer.parseInt(JOptionPane.showInputDialog("Broj stupaca"));
		
		
		int[][] tablica= new int [a][b];
		
		int najmanjiStupac = 0;
		int najveciStupac = b-1;
		int najmanjiRedak = 0;
		int najveciRedak = a-1;
	    int broj=1;    
		
	    while(broj<=(a*b)){
			for (int i = najveciStupac; i >= najmanjiStupac; i--){
				tablica[najveciRedak][i] = broj++;
				}
			if(broj>(a*b)) {
				break;
			}
			for (int i = najveciRedak-1; i >= najmanjiRedak; i--) {
				tablica[i][najmanjiStupac] = broj++;
				}
			if(broj>(a*b)) {
				break;
			}
			for (int i = najmanjiStupac+1; i <= najveciStupac; i++){
				tablica[najmanjiRedak][i] = broj++;
				}
			if(broj>(a*b)) {
				break;
			}
			for (int i = najmanjiRedak+1; i <= najveciRedak-1; i++){
				tablica[i][najveciStupac] = broj++;
				}
			if(broj>(a*b)) {
				break;
			}
			
			najmanjiStupac++;
			najmanjiRedak++;
			najveciStupac--;
			najveciRedak--;
		        }
		
		for(int i=0;i<a;i++) {
			for(int j=0;j<b;j++) {
				System.out.print(tablica[i][j]+ "	");
				
			}
		System.out.println();
		}
		
	}
		
	}