module uim.components.alerts.link;

import uim.components;

class DUIMAlertLink : DUIMComponent {
	mixin(H5This!("uim-alert-link"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS4AlertLink([":class":"this.classes", ":style": "this.styles", ":href":"this.href"], "<slot />");
		return super.toVueComponent
    .name("UimAlertLink")
    .props("href", `{ type: String, default: '#' }`)
		.template_(_templateObj);
	}
}
mixin(UIMShort!("AlertLink"));

unittest {
	// assert(UIMAlertLink == "<uim-alert-link></uim-alert-link>");
}