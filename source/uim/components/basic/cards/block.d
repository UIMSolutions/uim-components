module uim.components.basic.cards.block;

import uim.components;

class DUIMCardBlock : DUIMComponent {
	mixin(H5This!("uim-card-block"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj =  BS5CardBlock("<slot />");
		return super.toVUEComponent		
		.name("uim-card-block");
	}
}
mixin(UIMShort!"CardBlock");
unittest {
	assert(Assert(UIMCardBlock, `<uim-card-block></uim-card-block>`));

	auto f = File("./public/js/uim/components/basic/cards/block.js", "w"); 
  f.write(UIMCardBlock.toVUEComponent.toString);
}