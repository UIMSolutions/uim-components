module uim.components.basic.paginations.item;

import uim.components;

@safe:

class DUIMPageItem : DUIMComponent {
	mixin(H5This!("uim-page-item"));

	override void initialize() {
		super.initialize;
	}
	
	mixin(MyContent!("link", "UIMPageItem"));

	O active(this O)(bool value = true) { this.classes("active"); return cast(O)this; }
	O disabled(this O)(bool value = true) { this.classes("disabled").attributes("tabindex", "-1"); return cast(O)this; }

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5PageItem("<slot />");
		return super.toVUEComponent		
		.name("uim-page-item")
		;
	} */
}
mixin(UIMShort!"PageItem");

unittest {
	assert(Assert(UIMPageItem, `<uim-page-item></uim-page-item>`));
	assert(Assert(UIMPageItem.active, `<uim-page-item class="active"></uim-page-item>`));
	assert(Assert(UIMPageItem.disabled, `<uim-page-item class="disabled" tabindex="-1"></uim-page-item>`));
}