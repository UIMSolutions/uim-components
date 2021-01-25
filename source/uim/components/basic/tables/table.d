module uim.components.basic.tables.table;

import uim.components;

class DUIMTable : DUIMComponent {
	mixin(H5This!("uim-table"));

	mixin(MyContent!("caption", "H5Caption"));
	unittest {
		assert(Assert(UIMTable.caption("test"), `<uim-table><caption>test</caption></uim-table>`));
	}	

	mixin(MyContent!("header", "UIMTableHeader"));
	unittest {
		assert(Assert(UIMTable.header, `<uim-table><uim-table-header></uim-table-header></uim-table>`));
	}	

	mixin(MyContent!("body_", "UIMTableBody"));
	unittest {
		assert(Assert(UIMTable.body_, `<uim-table><uim-table-body></uim-table-body></uim-table>`));
	}	

	mixin(MyContent!("footer", "UIMTableFooter"));
	unittest {
		assert(Assert(UIMTable.footer, `<uim-table><uim-table-footer></uim-table-footer></uim-table>`));
	}	

	mixin(MyContent!("row", "UIMTableRow"));
	unittest {
		assert(Assert(UIMTable.row, `<uim-table><uim-table-row></uim-table-row></uim-table>`));
	}	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Table("<slot />");
		return super.toVUEComponent		
		.name("uim-Table")
		;
	}
}
mixin(UIMShort!"Table");

unittest {
	assert(Assert(UIMTable, `<uim-table></uim-table>`));
}