module uim.components.basic.buttons.button;

import uim.components;

class DUIMButton :DUIMComponent {
	mixin(H5This!("uim-button"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS5Button([":class":"this.classes", ":style":"this.styles", "@click":"click", ":aria-pressed":"this.active"], "<slot />");
		return super.toVUEComponent
		.name("uim-button")
    .props("block", `type:Boolean,default:false`)
    .props("color", `type:String,default:"none", validator:value => ["none", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark", "link"].indexOf(value) >= 0`)
    .props("active", `type:Boolean,default:false`)
    .props("disabled", `type:Boolean,default:false`)
    .props("outline", `type:String,default:"none", validator:value => ["none", "primary", "secondary", "success", "danger", "warning", "info", "light", "dark"].indexOf(value) >= 0`)
    .props("size", `type:String,default:"normal", validator:value => ["normal", "lg", "sm"].indexOf(value) >= 0`)
    .props("type", `type:String,default:"button", validator:value => ["button", "submit", "reset", "menu"].indexOf(value) >= 0`)
    .methods("click(event)", `if (this.state === "disabled"){event.stopImmediatePropagation();return;}this.$emit("click", event);`)
    .computed("classes", `return [
    this.block ? 'btn-block':'',
    (this.color !== "none")&&(this.outline === "none") ? 'btn-'+this.color:'',
    (this.active)&&(!this.disabled) ? 'active':'',
    this.disabled ? 'disabled':'',
    this.outline !== "none"?'btn-outline-'+this.outline:'',
    this.size !== "normal"?'btn-'+this.size:""];`);
	}
}
mixin(UIMShort!"Button");

unittest {
	assert(Assert(UIMButton, `<uim-button></uim-button>`));

	// auto f = File("./public/js/uim/components/basic/buttons/button.js", "w"); 
  // f.write(UIMButton.toVUEComponent.toString);
}
