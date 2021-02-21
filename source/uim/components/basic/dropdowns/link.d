module uim.components.basic.dropdowns.link;

import uim.components;

class DUIMDropdownLink : DUIMComponent {
	mixin(H5This!("uim-dropdown-item"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5DropdownLink("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-link")
		;
	}
}
mixin(UIMShort!"DropdownLink");

unittest {
	assert(Assert(UIMDropdownLink, `<uim-dropdown-item></uim-dropdown-item>`));

	// auto f = File("./public/js/uim/components/basic/dropdowns/link.js", "w"); 
  // f.write(UIMDropdownLink.toVUEComponent.toString);
}
