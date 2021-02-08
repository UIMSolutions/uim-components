module uim.components.complex.menues.mega;

import uim.components;

/** 
 * Big Dropdown menuitem compoent with many columns and rows
 * 
 * Params:
 *   groups - contains a array of groups
 *            every group has the properties id (String), name (String, optional), title (String), items (Array)
 *            items - contains a array of (menu)items
 *                    every item has the properties id (String), name (String, optional), title (String), link (Array)
 *     
 */
class DUIMMenuMega : DUIMComponent {
	mixin(H5This!("uim-menu-mega"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Li(["nav-item", "dropdown", "uim-megamenu"],
              H5A("megamenu", ["nav-link", "dropdown-toggle", "font-weight-bold", "text-uppercase"], 
              ["href":"", "data-toggle":"dropdown", "aria-haspopup":"true", "aria-expanded":"false"], "Mega Menu"),
              H5Div(["dropdown-menu", "border-0", "p-0", "m-0"], ["aria-labelledby":"megammenu"],
                BS5Container.row(["bg-white", "rounded-0", "m-0", "shadow-sm"],
                  H5Div(["col-lg-7", "col-xl-8"],
                    H5Div(["p-4"],
                      BS5Row(
                        H5Div(["col-lg-6", "mb-4"]).vFor("group in this.groups", "group.id")(
                          H5H6(["font-weight-bold", "text-uppercase"], "{{group.title}}"),
                          H5Ul(["list-unstyled"])
                            .item(["nav-item"]).vFor("item in group.items", "item.id")(
														H5A(["nav-link", "text-small", "pb-0"], [":href":"item.link"], "{{item.title}}"))
                        )
                      )
                    )
                  ),
                  H5Div(["col-lg-5", "col-xl-4", "px-0", "d-none", "d-lg-block"], ["style":"background: center center url(https://res.cloudinary.com/mhmd/image/upload/v1556990826/mega_bmtcdb.png)no-repeat; background-size: cover;"])
                )
              )
            );
		return super.toVUEComponent		
		.name("uim-menu-mega")
		.props("groups", `type:Object,default(){return{}}`);
	}
}
mixin(UIMShort!"MenuMega");
unittest {
	assert(Assert(UIMMenuMega, `<uim-menu-mega></uim-menu-mega>`));
}
