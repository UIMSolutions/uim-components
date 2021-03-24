module uim.components.basic.forms.controls.text;

import uim.components;

@safe: 

class DUIMInputText : DUIMComponent {
	mixin(H5This!("uim-input-text"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputText();
		return super.toVUEComponent		
		.name("uim-input-text");
	}
}
mixin(UIMShort!("InputText"));

unittest {
	assert(Assert(UIMInputText, "<uim-input-text></uim-input-text>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/text.js", "w");
  // f.write(UIMInputText.toVUEComponent.toString);
}