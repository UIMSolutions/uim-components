module uim.components.alerts.heading;

import uim.components;

class DUIMAlertHeading : DUIMComponent {
	mixin(H5This!("uim-alert-heading")); 

	O size(this O)(int size) {
		if ((size > 0) && (size < 7)) _tag = "h"~to!string(size);
		return cast(O)this;
	}
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS4AlertHeading("<slot />");
		return super.toVueComponent
    .name("UimAlertHeading")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("AlertHeading"));

unittest {
	// assert(UIMAlertHeading == "<uim-alert-heading></uim-alert-heading>");
}