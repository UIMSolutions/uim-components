module uim.components.basic.forms.controls.checkbox;

import uim.components; 

class DUIMCheckbox : DUIMComponent {
	mixin(H5This!("uim-checkbox"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Checkbox();
		return super.toVUEComponent		
		.name("uim-checkbox")
		;
	}	
}
mixin(UIMShort!("Checkbox"));

unittest {
	assert(Assert(UIMCheckbox, "<uim-checkbox></uim-checkbox>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/checkbox.js", "w");
  // f.write(UIMCheckbox.toVUEComponent.toString);
}