module uim.components.basic.alerts.link;

import uim.components;

class DUIMAlertLink : DUIMComponent {
	mixin(H5This!("uim-alert-link"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS5AlertLink([":class":"this.classes", ":style": "this.styles", ":href":"this.href"], "<slot />");
		return super.toVUEComponent
    .name("uim-alert-link")
    .props("href", `{ type: String,default:'#'}`);
	}
}
mixin(UIMShort!("AlertLink"));

unittest {
	assert(Assert(UIMAlertLink, "<uim-alert-link></uim-alert-link>"));
}