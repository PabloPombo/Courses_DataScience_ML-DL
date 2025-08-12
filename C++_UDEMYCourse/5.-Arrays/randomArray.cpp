#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string>

using namespace std;

int main() {

	const int NUMERO = 3, LARGO = 10, FILAS = 4, COLUMNAS = 6;
	const char ULTIMA_LETRA = 'Z', PRIMER_LETRA = 'A';

	srand(time(NULL));

	int numeros1[NUMERO], sumanum = 0, numeros[LARGO], i =0, j=0, num;
	char letras[NUMERO], tabla[FILAS][COLUMNAS], letra, BuscarLetra;
	bool existe=false;
	string palabra;

	

	//Arreglo con numeros 

	
	for (i = 0; i < NUMERO; i++) {
		cout << "Teclea un numero : "; cin >> numeros1[i];
		cout << "Teclea una letra : "; cin >> letras[i];

		sumanum += numeros1[i];
		palabra += letras[i];
	}

	cout << "\nLa suma de los numeros es : " << sumanum << endl;
	cout << "La suma de las letras es : " << palabra << endl;

	///FOR EACH
	for (int a : numeros1) {
		cout << "\n" << a << " ";
	}

	/*
	// Array random con numeros que no se repitan 

	cout << "\n\n";

	for (i = 0; i <= LARGO; i++) {
		num = rand() % LARGO + 1;
		for (j = 0; j < i; j++) {
			if (numeros[j] == num) {
				num = rand() % LARGO + 1;
				j = -1;
			}
		}

		numeros[i] = num;
		cout << numeros[i] << " ";
	}
	
	*/

	// Tabla letras y encontrar si esta una 


	cout << "\n\n";

	for (i = 0; i < FILAS; i++) {
		for (j = 0; j < COLUMNAS; j++) {
			letra = PRIMER_LETRA + rand() % (ULTIMA_LETRA - PRIMER_LETRA + 1);
			tabla[i][j] = letra;
			cout << tabla[i][j] << " ";
		}
		cout << endl;
	}

	cout << "\nEncontrar LETRA : ";
	cin >> BuscarLetra;

	for (i = 0; i < FILAS; i++) {
		for (j = 0; j < COLUMNAS; j++) {
			if (BuscarLetra == tabla[i][j]) {
				existe = true;
				break;
			}
		}
		if (existe) break;
	}

	(existe) ? cout << "SE ENCONTRO LA LETRA EN LA POSICION : " << i << ", " << j << endl : cout << "NO SE ENCUENTRA LA LETRA: " << BuscarLetra << endl;



	return 0;
}




