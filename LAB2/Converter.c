#include <reg51.h>

int sum = 0;
int i, t, mult;

int pow (a, b) {
	if (b == 0) {
		return 1;
	}
	mult = 1;
	for (t = 0; t < b; t++) {
		mult = mult * a;
	}
	return mult;

}

main() {
	
	P2 = (P1 >> 4) * 10 + (P1 & 0x0f);
	
	//for (i = 7; i >= 0; i--) {
		
		//if ((P2 >> i) & 0x01 == 1){
			//sum += pow(2, i);
			//P3 = sum;
		//}
		
	//}
	
	//P3 = sum;
	
	P3 = P2 % 10;
	
	
	return 0;
	
}




//P3 = ((P2 << 4) + (P2 & 0x0f) * 10) / 10;