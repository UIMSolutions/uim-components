module uim.components.forms.controls.password;

import uim.components; 

class DUIMInputPassword : DUIMComponent {
	mixin(H5This!("uim-input-password"));	
}
mixin(UIMShort!("InputPassword"));

unittest {
	assert(UIMInputPassword == "<uim-input-password></uim-input-password>");		
}