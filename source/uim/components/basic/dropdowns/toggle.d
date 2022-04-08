module uim.components.basic.dropdowns.toggle;

import uim.components;

@safe:

class DUIMDropdownToggle : DUIMComponent {
	mixin(H5This!("uim-dropdown-toggle"));

	override void initialize() {
		super.initialize;
	}

	unittest {
		assert(Assert(UIMDropdownToggle, `<uim-dropdown-toggle></uim-dropdown-toggle>`));
		assert(Assert(UIMDropdownToggle.id("id"), `<uim-dropdown-toggle id="id"></uim-dropdown-toggle>`));
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5DropdownToggle("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-toggle");
	} */
}
mixin(UIMShort!"DropdownToggle");

unittest {
	// auto f = File("./public/js/uim/components/basic/dropdowns/toggle.js", "w"); 
  // f.write(UIMDropdownToggle.toVUEComponent.toString);
}

