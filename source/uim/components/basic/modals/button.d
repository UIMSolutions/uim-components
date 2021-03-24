module uim.components.basic.modals.button;

import uim.components;

@safe:

class DUIMModalButton : DUIMComponent {
	mixin(H5This!("uim-modal-button"));
	override public void _init() {
		super._init;
	}
	O target(this O)(string targetId) { _attributes["data-target"] = "#"~targetId;  return cast(O)this; }
	O backdrop(this O)(bool modeBackdrop = true) { _attributes["data-backdrop"] = "static"; return cast(O)this; }
	O keyboard(this O)(bool mode = true) { if (mode == false) _attributes["data-keyboard"] = "false"; 
		return cast(O)this;
	}
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ModalButton("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-button")
		;
	}
}
mixin(UIMShort!"ModalButton");

unittest {
	// auto f = File("./public/js/uim/components/basic/modals/button.js", "w"); 
  // f.write(UIMModalButton.toVUEComponent.toString);
}
