module uim.components.basic.tables.footer;

import uim.components;

class DUIMTableFooter : DUIMComponent {
	mixin(H5This!("uim-table-footer"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5TableFooter("<slot />");
		return super.toVUEComponent		
		.name("uim-TableFooter")
		;
	}
}
mixin(UIMShort!"TableFooter");

unittest {
	assert(Assert(UIMTableFooter, `<uim-table-footer></uim-table-footer>`));
}