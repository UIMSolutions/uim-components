module uim.components.paginations.pagination;

import uim.components;

class DUIMPagination : DUIMComponent {
	mixin(H5This!("uim-pagination"));
	override public void _init() {
		super._init;
	}
	O center(this O)(string aSize) { return this.classes("justify-content-centers"); }
	O right(this O)(string aSize) { return this.classes("justify-content-end"); }
	O size(this O)(string aSize) { return this.classes("pagination-"~aSize); }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Pagination("<slot />");
		return super.toVUEComponent		
		.name("uim-pagination")
		;
	}
}
mixin(UIMShort!"Pagination");

unittest {
	assert(Assert(UIMPagination, `<uim-pagination></uim-pagination>`));
}