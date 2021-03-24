module uim.components.basic.modals.content;

import uim.components;

@safe:

class DUIMModalContent : DUIMComponent {
	mixin(H5This!("uim-modal-content"));
	override public void _init() {
		super._init;
	}
	O fade(this O)(bool mode = true) { return this.classes("fade"); }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ModalContent("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-content")
		;
	}
}
mixin(UIMShort!"ModalContent");

unittest {
	assert(Assert(UIMModalContent, `<uim-modal-content></uim-modal-content>`));

	// auto f = File("./public/js/uim/components/basic/modals/content.js", "w"); 
  // f.write(UIMModalContent.toVUEComponent.toString);
}