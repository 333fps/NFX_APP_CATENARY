#include "pch.h"

#include <nfx/Catenary/Catenary.h>

using namespace nfx;

int main(int argc, char* argv[])
{
	(void)argc;
	(void)argv;
	Catenary::AlphaAngle aa{ 60. };
	Catenary::Height h{ 150. };
	Catenary::Laydown ld{ 500. };
	Catenary::LinearDensity l{ 1.0 };
	Catenary::Layback lb{ 150. };
	Catenary::HorizontalTension ht{ 25. };

	Catenary c{ ht, lb, l };

	std::cout << std::setprecision(12) << std::endl;

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