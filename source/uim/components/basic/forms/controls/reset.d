module uim.components.basic.forms.controls.reset;

import uim.components; 

class DUIMInputReset : DUIMComponent {
	mixin(H5This!("uim-input-reset"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputReset();
		return super.toVUEComponent		
		.name("uim-input-reset");
	}	
}
mixin(UIMShort!("InputReset"));

unittest {
	assert(Assert(UIMInputReset, "<uim-input-reset></uim-input-reset>"));	

	auto f = File("./public/js/uim/components/basic/forms/controls/search.js", "w");
  f.write(UIMInputSearch.toVUEComponent.toString);
}