module uim.components.buttons.link;

import uim.components;

class DUIMButtonLink : DUIMComponent {
	mixin(H5This!("uim-button-link"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS4ButtonLink([":class":"this.classes", ":style": "this.styles", ":href":"this.href"], "<slot />");
		return super.toVUEComponent
    .name("uim-button-link")
    .props("block", `{type:Boolean,default:false}`)
    .props("color", `{ type: String,default:"none", validator: value => ["none","primary", "secondary", "success", "danger", "warning", "info", "light", "dark", "link"].indexOf(value) >= 0}`)
    .props("disabled", `{type:Boolean,default:false}`)
    .props("href", `{ type: String,default:"#"}`)
    .props("outline", `{ type: String,default:"none", validator: value => ["none", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0}`)
    .props("size", `{ type: String,default:"normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0}`)
    .props("type", `{ type: String,default:"button", validator: value => ["button", "submit", "reset", "menu"].indexOf(value) >= 0}`)
    .methods("click(event)", `if (this.state === "disabled") { event.stopImmediatePropagation(); return; } this.$emit("click", event);`)
    .computed("classes", `return [
    this.block ? 'btn-block' : '',
    (this.color !== "none") && (this.outline === "none") ? 'btn-'+this.color : '',
    this.disabled ? 'disabled' : '',
    this.outline !== "none" ? 'btn-outline-'+this.outline : '',
    this.size !== "normal" ? 'btn-'+this.size : ""];`)
    ;
	}
}
mixin(UIMShort!"ButtonLink");

unittest {
	assert(Assert(UIMButtonLink, `<uim-button-link></uim-button-link>`));
}
