module uim.components.tables.table;

import uim.components;

class DUIMTable : DUIMComponent {
	mixin(H5This!("uim-table"));

	mixin(MyContent!("caption", "H5Caption"));
	unittest {
		assert(UIMTable.caption("test") == `<uim-table><caption>test</caption></uim-table>`);
	}	

	mixin(MyContent!("header", "UIMTableHeader"));
	unittest {
		assert(UIMTable.header == `<uim-table><uim-table-header></uim-table-header></uim-table>`);
	}	

	mixin(MyContent!("body_", "UIMTableBody"));
	unittest {
		assert(UIMTable.body_ == `<uim-table><uim-table-body></uim-table-body></uim-table>`);
	}	

	mixin(MyContent!("footer", "UIMTableFooter"));
	unittest {
		assert(UIMTable.footer == `<uim-table><uim-table-footer></uim-table-footer></uim-table>`);
	}	

	mixin(MyContent!("row", "UIMTableRow"));
	unittest {
		assert(UIMTable.row == `<uim-table><uim-table-row></uim-table-row></uim-table>`);
	}	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Table("<slot />");
		return super.toVueComponent		
		.name("UimTable")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Table");

unittest {
	// assert(UIMTable == `<uim-table></uim-table>`);
}