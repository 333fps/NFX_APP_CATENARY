#include <nfx/Catenary/Catenary.h>

using namespace nfx;

int main(int argc, char* argv[])
{
	(void)argc;
	(void)argv;

	Catenary c;

	Catenary::LinearDensity l{ 0.5 };
	Catenary::TopTension tt{ 154.747763904733 };
	Catenary::AlphaAngle aa{ 42. };
	Catenary::Height h{ 79.4955278094665 };
	Catenary::Layback lb{ 186.108462726882 };
	Catenary::HorizontalTension ht{ 115. };
	Catenary::SuspendedLength sl{ 207.092930188503 };
	Catenary::Laydown ld{ 20.9844674616207 };
	Catenary::SagParameter sag{ 230. };

	c.solve(h, lb, l);

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
}