#include "pch.h"

#include <nfx/Catenary/Catenary.h>

using namespace nfx;

int main(int argc, char* argv[])
{
	(void)argc;
	(void)argv;

	Catenary c;

	Catenary::Height h{ 1500. };
	Catenary::Laydown ld{ 500. };
	Catenary::LinearDensity l{ 2.0 };

	c.update(h, ld, l);

	auto copy = Catenary{ c };

	c.reset();

	std::cout << " Linear density....: " << c.linearDensity() << std::endl;
	std::cout << " Top tension.......: " << c.topTension() << std::endl;
	std::cout << " Alpha angle.......: " << c.alphaAngle() << std::endl;
	std::cout << " Height............: " << c.height() << std::endl;
	std::cout << " Layback...........: " << c.layback() << std::endl;
	std::cout << " Horizontal tension: " << c.horizontalTension() << std::endl;
	std::cout << " Suspended length..: " << c.suspendedLength() << std::endl;
	std::cout << " Laydown...........: " << c.laydown() << std::endl;
	std::cout << " Sag parameter.....: " << c.sagParameter() << std::endl;

	std::cout << "\nCopy" << std::endl;
	std::cout << " Linear density....: " << copy.linearDensity() << std::endl;
	std::cout << " Top tension.......: " << copy.topTension() << std::endl;
	std::cout << " Alpha angle.......: " << copy.alphaAngle() << std::endl;
	std::cout << " Height............: " << copy.height() << std::endl;
	std::cout << " Layback...........: " << copy.layback() << std::endl;
	std::cout << " Horizontal tension: " << copy.horizontalTension() << std::endl;
	std::cout << " Suspended length..: " << copy.suspendedLength() << std::endl;
	std::cout << " Laydown...........: " << copy.laydown() << std::endl;
	std::cout << " Sag parameter.....: " << copy.sagParameter() << std::endl;
}