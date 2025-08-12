#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

using namespace std;

int main() {

	int i, j, numero1, numero2, nrandom;
	const float PI = 3.14;
	char numero;
	int largo = 8, ancho = 6, arear, perimetror;
	float radio = 4.5, areac, perimetroc;


	//Numero random

	srand(time(0));

	nrandom = rand() % 10 + 1; //Numero random del 0 al 10

	cout << "El numero randomque salio fue : " << nrandom << endl;

	// Triangulo 

	cout << "Teclea un numero" << endl;
	cin >> numero1;

	for (i = 1; i <= numero1; i++) {
		for (j = 1; j <= i; j++)
			cout << "*";

		cout << endl;
	}

	//Cuadrado

	cout << "Teclea otro numero" << endl;
	cin >> numero2;

	for (i = 1; i <= numero2; i++) {
		for (j = 1; j <= numero2; j++)
			cout << "*";

		cout << endl;
	}

	//Uso while en bucle para calcular cosas 

	do {
		cout << "Teclea el numero de lo que desas calcular"
			<< "\n1.-Area de un rectangulo"
			<< "\n2.-Perimetro de un rectangulo"
			<< "\n3.-Area de un circulo"
			<< "\n4.-Perimetro de un circulo"
			<< "\n5.-Salir"
			<< endl;

		cin >> numero;

		if (numero == '1') {
			arear = largo * ancho;
			cout << "\nLargo : " << largo
				<< "\nAncho : " << ancho
				<< "\nArea del rectangulo : " << arear
				<< endl;
		}
		else if (numero == '2') {
			perimetror = largo * 2 + ancho * 2;
			cout << "\nLargo : " << largo
				<< "\nAncho : " << ancho
				<< "\nPerimetro del rectangulo : " << perimetror
				<< endl;
		}
		else if (numero == '3') {
			areac = PI * radio * radio;
			cout << "\nRadio : " << radio
				<< "\nArea del circulo : " << areac
				<< endl;
		}
		else if (numero == '4') {
			perimetroc = 2 * PI * radio;
			cout << "\nRadio : " << radio
				<< "\nPerimetro del circulo : " << perimetroc
				<< endl;
		}
		else if (numero == '5') {
			cout << "Adios, ten un buen dia" << endl;
		}
		else {
			cout << "Lo que tecleaste no es valido :)" << endl;
		}
	} while (numero != '5');
}