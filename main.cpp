#include <nfx/Catenary/Catenary.h>

using namespace nfx;

int main(int argc, char* argv[])
{
	(void)argc;
	(void)argv;

	Catenary c;

	Catenary::Height h{ 80. };
	Catenary::Layback tt{ 186.667719164158 };
	Catenary::LinearDensity l{ .5 };

	c.solve(h, tt, l);

	std::cout << std::setprecision(15) << std::endl;
	std::cout << "Linear density....: " << c.linearDensity() << std::endl;
	std::cout << "Top tension.......: " << c.topTension() << std::endl;
	std::cout << "Alpha angle.......: " << c.alphaAngle() << std::endl;
	std::cout << "Height............: " << c.height() << std::endl;
	std::cout << "Layback...........: " << c.layback() << std::endl;
	std::cout << "Horizontal tension: " << c.horizontalTension() << std::endl;
	std::cout << "Suspended length..: " << c.suspendedLength() << std::endl;
	std::cout << "Laydown...........: " << c.laydown() << std::endl;
	std::cout << "Sag parameter.....: " << c.sagParameter() << std::endl;

	Catenary c2{ Catenary::SuspendedLength{ 207.845967965072 }, Catenary::Laydown{ 21.1782488009143 }, Catenary::LinearDensity{ 0.5 } };

	(void)c2;
	std::cout << "\nLinear density....: " << c2.linearDensity() << std::endl;
	std::cout << "Top tension.......: " << c2.topTension() << std::endl;
	std::cout << "Alpha angle.......: " << c2.alphaAngle() << std::endl;
	std::cout << "Height............: " << c2.height() << std::endl;
	std::cout << "Layback...........: " << c2.layback() << std::endl;
	std::cout << "Horizontal tension: " << c2.horizontalTension() << std::endl;
	std::cout << "Suspended length..: " << c2.suspendedLength() << std::endl;
	std::cout << "Laydown...........: " << c2.laydown() << std::endl;
	std::cout << "Sag parameter.....: " << c2.sagParameter() << std::endl;
}