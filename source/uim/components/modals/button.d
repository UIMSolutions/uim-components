module uim.components.modals.button;

import uim.components;

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
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalButton("<slot />");
		return super.toVueComponent		
		.name("UimModalButton")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ModalButton");
