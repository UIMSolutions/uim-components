module uim.components.basic.dropdowns.divider;

import uim.components;

class DUIMDropdownDivider : DUIMComponent {
	mixin(H5This!("uim-dropdown-divider"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5DropdownDivider("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-divider")
		;
	}
}
mixin(UIMShort!"DropdownDivider");

unittest {
	assert(Assert(UIMDropdownDivider, `<uim-dropdown-divider></uim-dropdown-divider>`));
		
	// auto f = File("./public/js/uim/components/basic/dropdowns/divider.js", "w"); 
  // f.write(UIMDropdownDivider.toVUEComponent.toString);
}
