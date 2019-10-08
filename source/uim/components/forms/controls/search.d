module uim.components.forms.controls.search;

import uim.components; 

class DUIMInputSearch : DUIMComponent {
	mixin(H5This!("uim-input-search"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputSearch();
		return super.toVUEComponent		
		.name("UimInputSearch");
	}
}
mixin(UIMShort!("InputSearch"));

unittest {
	assert(Assert(UIMInputSearch, "<uim-input-search></uim-input-search>"));	
}