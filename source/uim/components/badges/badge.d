module uim.components.badges.badge;

import uim.components;

class DUIMBadge : DH5Span {
	mixin(H5This!("uim-badge"));

	O color(this O)(string name) { return this.classes("badge-"~name); };
	O pill(this O)(bool mode = true) { 
		if (mode) this.classes("badge-pill"); 
		return cast(O)this; }
}
mixin(UIMShort!("Badge"));

unittest {
	assert(UIMBadge == "<uim-badge></uim-badge>");
}