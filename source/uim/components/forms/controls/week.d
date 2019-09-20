module uim.components.forms.controls.week;

import uim.components; 

class DUIMInputWeek : DUIMComponent {
	mixin(H5This!("uim-input-week"));	
}
mixin(UIMShort!("InputWeek"));

unittest {
	assert(UIMInputUrl == "<uim-input-week></uim-input-week>");	
}