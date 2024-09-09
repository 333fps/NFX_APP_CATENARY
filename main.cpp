#include "pch.h"

#include <nfx/Catenary/Catenary.h>

using namespace nfx;

int main(int argc, char* argv[])
{
	(void)argc;
	(void)argv;

	Catenary::Height h{ 1500. };
	Catenary::Laydown ld{ 500. };
	Catenary::LinearDensity l{ 2.0 };

	Catenary c{ h, ld, l };

	std::cout << " Linear density....: " << c.linearDensity() << std::endl;
	std::cout << " Top tension.......: " << c.topTension() << std::endl;
	std::cout << " Alpha angle.......: " << c.alphaAngle() << std::endl;
	std::cout << " Height............: " << c.height() << std::endl;
	std::cout << " Layback...........: " << c.layback() << std::endl;
	std::cout << " Horizontal tension: " << c.horizontalTension() << std::endl;
	std::cout << " Suspended length..: " << c.suspendedLength() << std::endl;
	std::cout << " Laydown...........: " << c.laydown() << std::endl;
	std::cout << " Sag parameter.....: " << c.sagParameter() << std::endl;
}