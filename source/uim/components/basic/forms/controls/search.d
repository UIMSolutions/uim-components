module uim.components.basic.forms.controls.search;

import uim.components; 

class DUIMInputSearch : DUIMComponent {
	mixin(H5This!("uim-input-search"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputSearch();
		return super.toVUEComponent		
		.name("uim-input-search");
	}
}
mixin(UIMShort!("InputSearch"));

unittest {
	assert(Assert(UIMInputSearch, "<uim-input-search></uim-input-search>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/search.js", "w");
  // f.write(UIMInputSearch.toVUEComponent.toString);
}