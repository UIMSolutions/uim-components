module uim.components.basic.tabs.list;

import uim.components;

@safe:

class DUIMTabList : DUIMComponent {
	mixin(H5This!("uim-tab-list"));
	override public void _init() {
		super._init;
	}

	mixin(MyContent!("item", "UIMNavItem"));

	O vertical(this O)(bool mode = true) { return this.classes("flex-column"); }

	O tabs(this O)(bool mode = true) { return this.classes("nav-tabs"); }
	unittest {
		assert(Assert(UIMTabList.tabs, `<uim-tab-list class="nav-tabs"></uim-tab-list>`));
	}

	O pills(this O)(bool mode = true) { return this.classes("nav-pills"); }	
	unittest {
		assert(Assert(UIMTabList.pills, `<uim-tab-list class="nav-pills"></uim-tab-list>`));
	}

	O fill(this O)(bool mode = true) { return this.classes("nav-fill"); }
	unittest {
		assert(Assert(UIMTabList.fill, `<uim-tab-list class="nav-fill"></uim-tab-list>`));
	}

	O justified(this O)(bool mode = true) { return this.classes("nav-justified"); }
	unittest {
		assert(Assert(UIMTabList.justified, `<uim-tab-list class="nav-justified"></uim-tab-list>`));
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5NavItem("<slot />");
		return super.toVUEComponent			
		.name("uim-tab-list")
		.props("fill", `type:Boolean,default:false`)
		.props("justified", `type:Boolean,default:false`)
		.props("pills", `type:Boolean,default:false`)
		.props("tabs", `type:Boolean,default:false`)
		.props("vertical", `type:Boolean,default:false`);
	}
}
mixin(UIMShort!"TabList");

unittest {
	assert(Assert(UIMTabList, `<uim-tab-list></uim-tab-list>`));

	// auto f = File("./public/js/uim/components/basic/tabs/list.js", "w"); 
  // f.write(UIMTabList.toVUEComponent.toString);
}
