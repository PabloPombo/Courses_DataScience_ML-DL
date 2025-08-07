
#include <iostream>
#include <string>

int main() {
    // Perímetro y área de un rectángulo
    int largo = 8, altura, base;
    int ancho = 4;

    int perimetro = 2 * (largo + ancho);
    int area = largo * ancho;

    std::cout << "El perímetro es: " << perimetro << std::endl;
    std::cout << "El área es: " << area << std::endl;


    // Perímetro y área de un rectángulo con datos del usuario
    float areaTriangulo;

    std::cout << "\nAhora dame un valor de altura para calcular el aerea de un triangulo" << std::endl;
    std::cin >> altura;
    std::cout << "Dame el valor de la base" << std::endl;
    std::cin >> base;

    areaTriangulo = base * altura / 2;

    std::cout << "El Area del triangulo es: " <<areaTriangulo << std::endl;


    //Area y perimetor de circulo
    const int PI = 3.1416;
    float radio, areaC, perimetroC;

    std::cout << "\nDame el radio de un circulo que quieras calcular su area y perimetro" << std::endl;
    std::cin >> radio;

    perimetroC = 2 * PI * radio;
    areaC = radio * radio * PI;

    std::cout << "Perimetro de circulo: " <<perimetroC << std::endl;
    std::cout << "Area de circulo: " << areaC << std::endl;

    //Palabraen varias
    char letra1, letra2, letra3, letra4;
    std::string nombre;

    std::cout <<"\nDame una palabra con 4 letras: " << std::endl;
    std::cin >> letra1;
    std::cin >> letra2;
    std::cin >> letra3;
    std::cin >> letra4;

    std::cout << "Ahora dame un nomnre: " << std::endl;
    std::cin >> nombre;

    std::cout << letra1 << std::endl << letra2 << std::endl  << letra3 << std::endl << letra4 << std::endl;
    std::cout << nombre + " " + letra1+letra2+letra3+letra4 << std::endl;

    return 0;
}