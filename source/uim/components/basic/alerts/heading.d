module uim.components.basic.alerts.heading;

import uim.components;

@safe:

class DUIMAlertHeading : DUIMComponent {
	mixin(H5This!("uim-alert-heading")); 

	override void initialize() {
		super.initialize;
	}

	O size(this O)(int size) {
		if ((size > 0) && (size < 7)) _tag = "h"~to!string(size);
		return cast(O)this;
	}
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS5AlertHeading("<slot />");
		return super.toVUEComponent
    .name("uim-alert-heading")
		;
	} */
}
mixin(UIMShort!("AlertHeading"));

unittest {
	assert(Assert(UIMAlertHeading, "<uim-alert-heading></uim-alert-heading>"));

	// auto f = File("./public/js/uim/components/basic/alerts/heading.js", "w"); 
  // f.write(UIMAlertHeading.toVUEComponent.toString);
}