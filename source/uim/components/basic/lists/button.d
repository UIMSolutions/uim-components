module uim.components.basic.lists.button;

import uim.components;

@safe:

class DUIMListButton : DUIMComponent {
	mixin(H5This!("uim-list-button"));

	O active(this O)(bool value = true) { this.classes("active"); return cast(O)this; }
	O disabled(this O)(bool value = true) { _attributes["disabled"] = "true"; return cast(O)this; }

	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListButton("<slot />");
		return super.toVUEComponent		
		.name("uim-list-button")
		.props("active", `type:Boolean,default:false`)
		.props("disabled", `type:Boolean,default:false`)
		.props("color", `type:String,default:'None'`)
		.computed("classes", `return`~[
			"active ? 'active':''",
			"disabled ? 'disabled':''",
			"color !== 'None'? 'btn-'+this.color:''",
		].toJS~`;`)
		;
	}
}
mixin(UIMShort!"ListButton");

unittest {
	assert(Assert(UIMListButton, `<uim-list-button></uim-list-button>`));

	// auto f = File("./public/js/uim/components/basic/lists/button.js", "w"); 
  // f.write(UIMListButton.toVUEComponent.toString);
}