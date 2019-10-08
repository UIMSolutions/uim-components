﻿module uim.components.tables.body_;

import uim.components;

class DUIMTableBody : DUIMComponent {
	mixin(H5This!("uim-table-body"));

	mixin(MyContent!("row", "UIMTableRow"));
	unittest {
		assert(Assert(UIMTableBody.row, `<uim-table-body><uim-table-row></uim-table-row></uim-table-body>`));
	}	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableBody("<slot />");
		return super.toVUEComponent		
		.name("UimTableBody")
		;
	}
}
mixin(UIMShort!"TableBody");

unittest {
	assert(Assert(UIMTableBody, `<uim-table-body></uim-table-body>`));
}