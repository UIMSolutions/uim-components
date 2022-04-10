module uim.components.basic.lists.link;

import uim.components;

@safe:

class DUIMListLink : DUIMComponent {
	mixin(H5This!("uim-list-link"));

	override void initialize() {
		super.initialize;
	}
	
	O active(this O)(bool value = true) { return this.classes("active"); }
	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }

	/* override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListLink("<slot />");
		return super.toVUEComponent		
		.name("uim-list-link")
		;
	} */
}
mixin(UIMShort!"ListLink");

unittest {
	assert(Assert(UIMListLink, `<uim-list-link></uim-list-link>`));
	assert(Assert(UIMListLink.active, `<uim-list-link class="active"></uim-list-link>`));
	assert(Assert(UIMListLink.disabled, `<uim-list-link class="disabled"></uim-list-link>`));

	// auto f = File("./public/js/uim/components/basic/lists/link.js", "w"); 
  // f.write(UIMListLink.toVUEComponent.toString);
}