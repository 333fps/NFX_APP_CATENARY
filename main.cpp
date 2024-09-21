#include <nfx/Catenary/Catenary.h>

using namespace nfx;

int main(int argc, char* argv[])
{
	(void)argc;
	(void)argv;

	Catenary c;

	Catenary::Height h{ 80. };
	Catenary::TopTension tt{ 155 };
	Catenary::LinearDensity l{ .5 };

	c.solve(h, tt, l);

	std::cout << std::setprecision(15) << std::endl;
	std::cout << " Linear density....: " << c.linearDensity() << std::endl;
	std::cout << " Top tension.......: " << c.topTension() << std::endl;
	std::cout << " Alpha angle.......: " << c.alphaAngle() << std::endl;
	std::cout << " Height............: " << c.height() << std::endl;
	std::cout << " Layback...........: " << c.layback() << std::endl;
	std::cout << " Horizontal tension: " << c.horizontalTension() << std::endl;
	std::cout << " Suspended length..: " << c.suspendedLength() << std::endl;
	std::cout << " Laydown...........: " << c.laydown() << std::endl;
	std::cout << " Sag parameter.....: " << c.sagParameter() << std::endl;

	/*
		 Linear density....: 2
		 Top tension.......: 8119.62171928695
		 Alpha angle.......: 50.9111236653963
		 Height............: 1500
		 Layback...........: 2651.09866416962
		 Horizontal tension: 5119.62171928695
		 Suspended length..: 3151.09866416962
		 Laydown...........: 500
		 Sag parameter.....: 2559.81085964347
	*/
}