module uim.components.basic.dropdowns.button;

import uim.components;

class DUIMDropdownButton : DUIMComponent {
	mixin(H5This!("uim-dropdown-button"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5DropdownButton([":class":"this.classes"], "<slot />");		
		return super.toVUEComponent		
			.name("uim-dropdown-button")
			.props("active", `type:Boolean,default:false`)
			.props("disabled", `type:Boolean,default:false`)
			.props("color", `{type:String,default:'None'}`)
			.computed("classes", `return`~[
				"active ? 'active':''",
				"disabled ? 'disabled':''",
				"color !== 'None'? 'btn-'+this.color:''",
			].toJS~`;`);
	}
}
mixin(UIMShort!"DropdownButton");

unittest {
	assert(Assert(UIMDropdownButton, `<uim-dropdown-button></uim-dropdown-button>`));

	auto f = File("./public/js/uim/components/basic/dropdowns/button.js", "w"); 
  f.write(UIMDropdownButton.toVUEComponent.toString);
}
