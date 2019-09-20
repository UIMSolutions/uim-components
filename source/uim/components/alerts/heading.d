module uim.components.alerts.heading;

import uim.components;

class DUIMAlertHeading : DH5H6 {
	mixin(H5This!("uim-alert-heading")); 

	O size(this O)(int size) {
		if ((size > 0) && (size < 7)) _tag = "h"~to!string(size);
		return cast(O)this;
	}
}
mixin(UIMShort!("AlertHeading"));

unittest {
	assert(UIMAlertHeading == "<uim-alert-heading></uim-alert-heading>")
}