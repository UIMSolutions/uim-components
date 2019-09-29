module uim.components.tables.footer;

import uim.components;

class DUIMTableFooter : DUIMComponent {
	mixin(H5This!("uim-table-footer"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableFooter("<slot />");
		return super.toVueComponent		
		.name("UimTableFooter")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"TableFooter");

unittest {
	// assert(UIMTableFooter == `<uim-table-footer></uim-table-footer>`);
}