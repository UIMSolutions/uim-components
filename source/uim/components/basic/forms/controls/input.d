module uim.components.basic.forms.controls.input;

import uim.components; 

class DUIMInput : DUIMComponent {
	mixin(H5This!("uim-input"));	
}
mixin(UIMShort!("Input"));

unittest {
	auto f = File("./public/js/uim/components/basic/forms/controls/input.js", "w");
  f.write(UIMInput.toVUEComponent.toString);
}