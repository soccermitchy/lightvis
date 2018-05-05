#include <core/Godot.hpp>
#include <Reference.hpp>

using namespace godot;

class AcnSignaler : public GodotScript<Reference>
{
	GODOT_CLASS(AcnSignaler);
public:
	AcnSignaler(){}
	static void _register_methods()
	{
		//register_signal<AcnSignaler>("acn_input");
		
	}
};