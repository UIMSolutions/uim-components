module uim.components.forms.controls.image;

import uim.components; 

class DUIMInputImage : DUIMComponent {
	mixin(H5This!("uim-input-image"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputImage();
		return super.toVueComponent		
		.name("UimInputImage")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputImage"));

unittest {
	// assert(UIMInputImage == "<uim-input-image></uim-input-image>");	
}