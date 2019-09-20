module uim.components.forms.controls.file;

import uim.components; 

class DUIMInputFile : DH5Input {
	mixin(H5This!("uim-input-file"));	
}
mixin(UIMShort!("InputFile"));

unittest {
	assert(UIMInputFile == "<uim-input-file></uim-input-file>");	
}