module uim.components.basic.dropdowns.togglelink;

import uim.components;

@safe:

class DUIMDropdownToggleLink : DUIMComponent {
	mixin(H5This!("uim-dropdown-togglelink"));

	override void initialize() {
		super.initialize;
	}
	
	unittest {
		assert(Assert(UIMDropdownToggleLink, `<uim-dropdown-togglelink></uim-dropdown-togglelink>`));
		assert(Assert(UIMDropdownToggleLink.id("id"), `<uim-dropdown-togglelink id="id"></uim-dropdown-togglelink>`));
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5DropdownToggleLink("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-togglelink");
	} */
}
mixin(UIMShort!"DropdownToggleLink");

unittest {
	// auto f = File("./public/js/uim/components/basic/dropdowns/togglelink.js", "w"); 
  // f.write(UIMDropdownTogglelink.toVUEComponent.toString);
}

