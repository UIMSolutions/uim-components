module uim.components.forms.controls.textarea;

import uim.components; 

class DUIMInputTextArea : DH5Textarea {
	mixin(H5This!("uim-input-textarea"));

	mixin(MyAttribute!"rows");
	mixin(MyAttribute!"cols");
}
mixin(UIMShort!("InputTextArea"));

unittest {
	assert(UIMInputTextArea == "<uim-input-textarea></uim-input-textarea>");	
}