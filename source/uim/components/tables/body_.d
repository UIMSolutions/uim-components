module uim.components.tables.body_;

import uim.components;

class DUIMTableBody : DUIMComponent {
	mixin(H5This!("uim-table-body"));

	mixin(MyContent!("row", "UIMTableRow"));
	unittest {
		assert(UIMTableBody.row == `<uim-table-body><uim-table-row></uim-table-row></uim-table-body>`);
	}	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableBody("<slot />");
		return super.toVueComponent		
		.name("UimTableBody")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"TableBody");

unittest {
	// assert(UIMTableBody == `<uim-table-body></uim-table-body>`);
}