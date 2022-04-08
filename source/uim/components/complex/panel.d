module uim.components.complex.panel;

import uim.components;

@safe:

/// Collapsible panel component
class DUIMPanel : DUIMComponent {
	mixin(H5This!("uim-panel"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = UIMCol(["uim-panel", "mb-1"])(
				BS5CollapseLink(["btn-primary", "btn-block", "py-2", "shadow-sm"], 
				[":href":"'#'+this.id", ":aria-expanded":"this.isOpen", ":aria-controls":"this.id"], 
          H5P(["d-flex", "align-items-center", "justify-content-between", "mb-0", "px-3", "py-2"], 
						H5Strong(["text-uppercase"], "{{this.title}}"), H5I([":class":"[this.isOpen ? 'fa fa-angle-up' : 'fa fa-angle-down']"]))
        ),
        BS5Collapse(["shadow-sm show"], [":id":"this.id"],
          BS5Card
					.body_(["shadow-sm show"], [":id":"this.id"],
              H5P(H5Slot)
						)
        )
      );
		return super.toVUEComponent		
		.name("uim-panel")
		.props("isOpen", `type:Boolean,default:false`)
		.props("id", `type:String, default:''`)
		.props("title", `type:String, default:''`)
		.methods("toogle()", "this.isOpen = !this.isOpen");
	} */
}
mixin(UIMShort!"Panel");
unittest {
	assert(Assert(UIMPanel, `<uim-panel></uim-panel>`));
}
