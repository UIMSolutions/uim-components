module uim.components.basic.forms.controls.button;

import uim.components;

@safe: 

class DUIMInputButton : DUIMComponent {
	mixin(H5This!("uim-input-button"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputButton();
		return super.toVUEComponent		
		.name("uim-input-button");
	}
}
mixin(UIMShort!("InputButton"));

unittest {
	assert(Assert(UIMInputButton, "<uim-input-button></uim-input-button>"));
		
	// auto f = File("./public/js/uim/components/basic/forms/controls/button.js", "w"); 
  // f.write(UIMInputButton.toVUEComponent.toString);
}