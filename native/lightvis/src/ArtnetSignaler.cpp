#include <core/Godot.hpp>
#include <Reference.hpp>

using namespace godot;

class ArtnetSignaler : public GodotScript<Reference>
{
	GODOT_CLASS(ArtnetSignaler);
public:
	ArtnetSignaler(){}
	static void _register_methods()
	{
		//register_signal<AcnSignaler>("acn_input");
		register_signal<ArtnetSignaler>("artnet_input");
	}
};