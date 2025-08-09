#include <iostream>
#include <string>

using namespace std;

int main() {
	//Utilizaremos dos menus , uno con if y otro con switch
	const float PI = 3.14;
	char numero, edad, sexo;
	int largo = 8, ancho = 6, arear, perimetror;
	float radio = 4.5, areac, perimetroc;

	cout << "Teclea el numero de lo que desas calcular"
		<< "\n1.-Area de un rectangulo"
		<< "\n2.-Perimetro de un rectangulo"
		<< "\n3.-Area de un circulo"
		<< "\n4.-Perimetro de un circulo"
		<< "\n5.-Nada"
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
		areac = PI * radio * radio ;
		cout << "\nRadio : " << radio
			<< "\nArea del circulo : " << areac
			<< endl;
	}
	else if (numero == '4') {
		perimetroc =  2 * PI * radio;
		cout << "\nRadio : " << radio
			<< "\nPerimetro del circulo : " << perimetroc
			<< endl;
	}
	else if (numero == '5') {
		cout << "Adios, ten un buen dia" <<endl;
	}
	else {
		cout << "Lo que tecleaste no es valido :)" <<endl;
	}



	//Edad con switch 
	cout << "Ahora teclea en que rango se encuentra tu edad:"
		<< "\n1.-De 10 - 15"
		<< "\n2.-De 16 - 20"
		<< "\n3.-De 21 - 25"
		<< "\n4.-De 26 - 35"
		<< "\n5.-Mas de 35"
		<< endl;
	cin >> edad;

	switch (edad) {
		case('1'):
		case('2'):
			cout << "Todavia estas chiquillo" << endl;
			break;

		case('3'):
		case('4'):
			cout << "Tienes buena edad para cotorrear" << endl;
			break;

		case('5'):
			cout << "Ya estas ruco" << endl;
			break;

		default:
			cout << "Teclaste otro valor no valido" << endl;
			break;
	}
		


	//Operador ternario
	cout << "Por ultimo teclea m si tu sexo es masculino o f si es femenino" << endl;
	cin >> sexo;

	(sexo == 'm') ? cout << "Eres Hombre" : cout << "" << endl;
	(sexo == 'f') ? cout << "Eres Mujer" : cout << "" << endl;
	(sexo != 'f' && sexo != 'm') ? cout << "Tecleaste otro valor desconocido" : cout << "" << endl;

}