﻿module uim.components.basic.alerts.link;

import uim.components;

@safe:

class DUIMAlertLink : DUIMComponent {
	mixin(H5This!("uim-alert-link"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS5AlertLink([":class":"this.classes", ":style": "this.styles", ":href":"this.href"], "<slot />");
		return super.toVUEComponent
    .name("uim-alert-link")
    .props("href", `type:String,default:'#'`);
	} */
}
mixin(UIMShort!("AlertLink"));

unittest {
	assert(Assert(UIMAlertLink, "<uim-alert-link></uim-alert-link>"));

	// auto f = File("./public/js/uim/components/basic/alerts/link.js", "w"); 
  // f.write(UIMAlertLink.toVUEComponent.toString);
}
