#include <iostream>
#include <string>

int main() {
	std::string nombre;
	int herederos, fortuna, division, resto;
	const float IVA = 22.0;
	float cobrar, ccobrar, impuesto, impuestoc;

	std::cout << "Ingresa tu nombre : " << std::endl;
	std::cin >> nombre;

	std::cout << nombre << ", este es tu testamento. \nSolo hace falta que indiques la division de tu fortuna." << std::endl;
	std::cout << nombre << " indica la cantidad de herederos : " << std::endl;
	std::cin >> herederos;
	std::cout << "Ahora indica tu fortuna total : " << std::endl;
	std::cin >> fortuna;

	division = fortuna / herederos;
	resto = fortuna % herederos;

	std::cout << "El total de $1321 se distribuira como sigue : "
		"\n\tHEREDEROS = " << herederos <<
		"\n\tC / U RECIBE = " << division <<
		"\n\tA CARIDAD = " << resto << std::endl;

	std::cout << "Se ha de grabar todo con el impuesto a la ganancia del " << IVA << " : " << std::endl;

	impuesto = division * IVA / 100;
	impuestoc = resto * IVA / 100;
	cobrar = division - impuesto;
	ccobrar = resto - impuestoc;

	std::cout << "\nEl total de $" << fortuna << "0se distribuira como sigue : "
		"\n\tPOR HERENCIA = " << division << "\tIMPUESTO = " << impuesto << "\tA COBRAR : " << cobrar <<
		"\n\tA CARIDAD = " << resto << "\tIMPUESTO = " << impuestoc << "\tA COBRAR : " << ccobrar << std::endl;

	return 0;
}