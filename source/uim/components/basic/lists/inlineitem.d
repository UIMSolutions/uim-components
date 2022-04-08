module uim.components.basic.lists.inlineitem;

import uim.components;

@safe:

class DUIMListInlineItem : DUIMComponent {
	mixin(H5This!("uim-list-inlineitem"));
	
	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ListInlineItem("<slot />");
		return super.toVUEComponent		
		.name("uim-list-inlineitem")
		;
	} */
}
mixin(UIMShort!"ListInlineItem");

unittest {
	assert(Assert(UIMListInlineItem, `<uim-list-inlineitem></uim-list-inlineitem>`));

	// auto f = File("./public/js/uim/components/basic/lists/inlineitem.js", "w"); 
  // f.write(UIMListInlineItem.toVUEComponent.toString);
}