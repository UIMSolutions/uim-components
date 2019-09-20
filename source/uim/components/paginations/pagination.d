module uim.components.paginations.pagination;

import uim.components;

class DUIMPagination : DUIMComponent {
	mixin(H5This!("uim-pagination"));
	override public void init() {
		super.init;
	}
	O center(this O)(string aSize) { return this.classes("justify-content-centers"); }
	O right(this O)(string aSize) { return this.classes("justify-content-end"); }
	O size(this O)(string aSize) { return this.classes("pagination-"~aSize); }
}
mixin(UIMShort!"Pagination");

unittest {
	

	assert(UIMPagination == `<uim-pagination></uim-pagination>`);
}