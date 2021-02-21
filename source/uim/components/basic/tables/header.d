module uim.components.basic.tables.header;

import uim.components;

class DUIMTableHeader : DUIMComponent {
	mixin(H5This!("uim-table-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5TableHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-TableHeader")
		;
	}
}
mixin(UIMShort!"TableHeader");

unittest {
	assert(Assert(UIMTableHeader, `<uim-table-header></uim-table-header>`));

	// auto f = File("./public/js/uim/components/basic/tables/header.js", "w"); 
  // f.write(UIMTableHeader.toVUEComponent.toString);
}
