#include <iostream>

using namespace std;
const int PI = 3.14;

namespace RectanguloCuadrado{
	
	float perimetro(float largo, float ancho) {
		return largo * 2 + ancho * 2;
	}
	float area(float largo, float ancho) {
		return largo * ancho;
	}
}

namespace Triangulo {

	float perimetro(float base) {
		return base * 3;
	}
	float area(float base, float altura) {
		return base * altura / 2;
	}
}

namespace Circulo {

	float perimetro(float radio) {
		return 2 * PI * radio;
	}
	float area(float radio) {
		return radio * radio * PI;
	}
}

void imprime(float area, float perimetro) {
	cout << "Perimetro: " << perimetro;
	cout << "\nArea: " << area << endl;
	cout << "\n" << endl;
}


int main() {

	//Calculo de areas y perimetros

	char letra;
	float altura, base, largo, ancho, radio, area, perimetro;


	do {
		cout << "Que deseas calcular: \n";
		cout << "a) Perimetro y area de un rectanfulo.\n";
		cout << "b) Perimetro y area de un cuadrado.\n";
		cout << "c) Area de un triangulo.\n";
		cout << "d) Perimetro y area de un circulo.\n";
		cout << "e) Salir" << endl;

		cin >> letra;

		if (letra == 'a' || letra == 'b') {
			cout << "Largo: ";
			cin >> largo;
			cout << "Ancho: ";
			cin >> ancho;
			perimetro = RectanguloCuadrado::perimetro(largo, ancho);
			area = RectanguloCuadrado::area(largo, ancho);
			imprime(area, perimetro);
		}
		else if (letra == 'c') {
			cout << "Base: ";
			cin >> base;
			cout << "Altura: ";
			cin >> altura;
			perimetro = Triangulo::perimetro(base);
			area = Triangulo::area(base, altura);
			imprime(area, perimetro);
		}
		else if (letra == 'd') {
			cout << "Radio: ";
			cin >> radio;
			perimetro = Circulo::perimetro(radio);
			area = Circulo::area(radio);
			imprime(area, perimetro);
		}
		else if (letra == 'e') {
			cout << "Adios" << endl;
			break;
		}

		else {
			cout << "La letra tecleada no es valida, intentalo de nuevo :) " << endl;
		}
	} while (true);

}