module uim.components.basic.badges.badge;

import uim.components;

class DUIMBadge : DUIMComponent {
	mixin(H5This!("uim-badge"));

	O color(this O)(string name) { return this.classes("badge-"~name); };
	O pill(this O)(bool mode = true) { 
		if (mode) this.classes("badge-pill"); 
		return cast(O)this; }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Badge("<slot />");
		return super.toVUEComponent
		.name("uim-badge")
		.props("color", `type:String,default:"none",`~
			`validator: value => ["none","primary","secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0`)
		.props("pill", `type:Boolean,default:false`)
		.computed("classes", `return [
		this.color !== "none" ? 'badge-'+this.color : '',
		this.pill ? 'badge-pill' : ''
		];`)
		;
	}
}
mixin(UIMShort!("Badge"));

unittest {
	assert(Assert(UIMBadge, "<uim-badge></uim-badge>"));

	auto f = File("./public/js/uim/components/basic/badges/badge.js", "w"); 
  f.write(UIMBadge.toVUEComponent.toString);
}
