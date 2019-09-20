module uim.components.forms.controls.search;

import uim.components; 

class DUIMInputSearch : DUIMComponent {
	mixin(H5This!("uim-input-search"));	
}
mixin(UIMShort!("InputSearch"));

unittest {
	assert(UIMInputSearch == "<uim-input-search></uim-input-search>");	
}