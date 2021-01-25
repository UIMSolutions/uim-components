module uim.components.basic.forms.controls.file;

import uim.components; 

class DUIMInputFile : DUIMComponent {
	mixin(H5This!("uim-input-file"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputFile();
		return super.toVUEComponent		
		.name("uim-input-file")
		;
	}
}
mixin(UIMShort!("InputFile"));

unittest {
	assert(Assert(UIMInputFile, "<uim-input-file></uim-input-file>"));	
	
	auto f = File("./public/js/uim/components/basic/forms/controls/file.js", "w");
  f.write(UIMInputFile.toVUEComponent.toString);
}