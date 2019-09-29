module uim.components.forms.controls.search;

import uim.components; 

class DUIMInputSearch : DUIMComponent {
	mixin(H5This!("uim-input-search"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputSearch();
		return super.toVueComponent		
		.name("UimInputSearch")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputSearch"));

unittest {
	// assert(UIMInputSearch == "<uim-input-search></uim-input-search>");	
}