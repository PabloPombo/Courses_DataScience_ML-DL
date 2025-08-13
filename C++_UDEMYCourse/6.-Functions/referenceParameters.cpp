#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <time.h>

using namespace std;


bool areaPerimetro(int &largo, int &ancho, float& perimetro, float& area) {

	string entrada1, entrada2;

	cout << "Ingresa el ancho: " << endl;
	cin >> entrada1;
	cout << "Ingresa el largo: " << endl;
	cin >> entrada2;

	for (char c : entrada1) {
		if (!isdigit(c)) {
			cout << "ERROR: La entrada que pusiste no es correcta el ancho esta mal" << endl;
			return false;
		}
	}
	for (char c : entrada2) {
		if (!isdigit(c)) {
			cout << "ERROR: La entrada que pusiste no es correcta el largo esta mal" << endl;
			return false;
		}
	}

	largo = stoi(entrada1);
	ancho = stoi(entrada2);

	if (largo <= 0 || ancho <= 0) {
		cout << "ERROR: La entrada que pusiste no es correcta las entradas son menores a cero" << endl;
		return false;
	}
	else {
		perimetro = largo * 2 + ancho * 2;
		area = largo * ancho;
		return true;
	}
}

bool menu(char letra) {
	if (letra == 'a' || letra == 'b') {
		cout << "Continuemos, si se encuentra en lo que podemos hacer \n";
		return true;
	}
	else if (letra == 'c' || letra == 'd') {
		cout << "Lo sentimos ya no se encuentra en nuestras capacidades por favor teclee otra letra :) \n";
		return false;
	}
	else {
		cout << "No se encuentra en el menu lo que tecleaste \n";
		return false;
	}
}


void imprime(float area, float perimetro) {
	cout << "Perimetro: " << perimetro;
	cout << "\nArea: " << area << endl;
	cout << "\n" << endl;
}


int main() {

	//Parametros por referencia calculando area y perimetro

	char letra;
	int largo = 0, ancho = 0;
	float area, perimetro;
	bool entrada1, entrada2;


	do {
		cout << "Que deseas calcular: \n";
		cout << "a) Perimetro y area de un rectanfulo.\n";
		cout << "b) Perimetro y area de un cuadrado.\n";
		cout << "c) Area de un triangulo.\n";
		cout << "d) Perimetro y area de un circulo. " << endl;;

		cin >> letra;
	 
		entrada1 = menu(letra);

		if (entrada1) {
			entrada2 = areaPerimetro(largo, ancho, perimetro, area);
			if (entrada2)
				imprime(area, perimetro);
		}
		
	} while (!entrada1 || !entrada2);
}