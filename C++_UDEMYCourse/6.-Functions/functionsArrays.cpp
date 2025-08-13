#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string>

using namespace std;
const int MAX_NUMEROS = 10;

void imprimir(int numeros[]) {
	for (int i = 0; i < MAX_NUMEROS; i++) {
		cout << numeros[i] << ", ";
	}
}

int existencianum(int entrada, int numeros[]) {
	for (int i = 0; i < MAX_NUMEROS; i++) {
		if (entrada == numeros[i])
			return true;
	}
	return false;
}

void conteo(int entrada, int numeros[]) {
	int cuenta = 0;
	for (int i = 0; i < MAX_NUMEROS; i++) {
		if (entrada == numeros[i])
			cuenta++;
	}
	cout << "Tu numero se repite: " << cuenta << " veces" << endl;
}


int main() {

	int num, numeros[MAX_NUMEROS], entrada;
	bool existencia;

	srand(time(NULL));

	for (int i = 0; i < MAX_NUMEROS; i++) {
		numeros[i] = rand() % 10 + 1;
	}
		
	imprimir(numeros);
	cout << endl;


	do {
		cout << "Teclea un numero para ver si existe y cuantas repeticiones tiene: ";
		cin >> entrada;

		existencia = existencianum(entrada, numeros);

		if (existencia) {
			conteo(entrada, numeros);
		}
		else {
			cout << "Tu numero no se encuentra en la lista" << endl;
		}
	} while (existencia == true);

	return 0;
}




