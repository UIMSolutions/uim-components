module uim.components.dropdowns.button;

import uim.components;

class DUIMDropdownButton : DUIMComponent {
	mixin(H5This!("uim-dropdown-item"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS4DropdownButton([":class":"this.classes"], "<slot />");		
		return super.toVUEComponent		
			.name("uim-dropdown-button")
			.props("active", `{type:Boolean,default:false}`)
			.props("disabled", `{type:Boolean,default:false}`)
			.props("color", `{type:String,default:'None'}`)
			.computed("classes", `return`~[
				"active ? 'active':''",
				"disabled ? 'disabled':''",
				"color !== 'None'? 'btn-'+this.color:''",
			].toJS~`;`)
			;
	}
}
mixin(UIMShort!"DropdownButton");

unittest {
	assert(Assert(UIMDropdownButton, `<uim-dropdown-item></uim-dropdown-item>`));
}
