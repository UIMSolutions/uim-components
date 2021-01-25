module uim.components.basic.modals.footer;

import uim.components;

class DUIMModalFooter : DUIMComponent {
	mixin(H5This!("uim-modal-footer"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ModalFooter("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-footer")
		;
	}
}
mixin(UIMShort!"ModalFooter");

unittest {
	assert(Assert(UIMModalFooter, `<uim-modal-footer></uim-modal-footer>`));

	auto f = File("./public/js/uim/components/basic/modals/footer.js", "w"); 
  f.write(UIMModalFooter.toVUEComponent.toString);
}