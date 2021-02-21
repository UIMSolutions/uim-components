module uim.components.basic.dropdowns.header;

import uim.components;

class DUIMDropdownHeader : DUIMComponent {
	mixin(H5This!("uim-dropdown-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5DropdownHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-header")
		;
	}
}
mixin(UIMShort!"DropdownHeader");

unittest {
	assert(Assert(UIMDropdownHeader, `<uim-dropdown-header></uim-dropdown-header>`));

	// auto f = File("./public/js/uim/components/basic/dropdowns/headers.js", "w"); 
  // f.write(UIMDropdownHeader.toVUEComponent.toString);
}
