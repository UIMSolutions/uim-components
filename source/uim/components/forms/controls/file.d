module uim.components.forms.controls.file;

import uim.components; 

class DUIMInputFile : DUIMComponent {
	mixin(H5This!("uim-input-file"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputFile();
		return super.toVueComponent		
		.name("UimInputFile")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputFile"));

unittest {
	// assert(UIMInputFile == "<uim-input-file></uim-input-file>");	
}