module uim.components.complex.timelines.item;

import uim.components;

@safe:

/**
 * Timelime item component
 * 
 */
class DUIMTimelineItem : DUIMComponent {
	mixin(H5This!("uim-timeline-item"));
    
    string _id;
    string id() { return _id; }
    O id(this O)(string newId) { _id = newId; return cast(O)this; }

    string _name;
    string name() { return _name; }
    O name(this O)(string newName) { _name = newName; return cast(O)this; }

    string _title;
    string title() { return _title; }
    O title(this O)(string newTitle) { _title = newTitle; return cast(O)this; }

    string _description;
    string description() { return _description; }
    O description(this O)(string newDescription) { _description = newDescription; return cast(O)this; }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Li(["timeline-item", "bg-white", "rounded", "ml-3", "p-4", "shadow"], ["v-for":"item in timeline", ":key":"item.id"],
                        H5Div(["timeline-arrow"]),
                        H5H2(["h5", "mb-0"], "{{item.title}}"),
                        H5Span(["small", "text-gray"], H5I(["far", "fa-clock", "mr-1"]), H5String("{{item.dateOf}}")),
                        H5P(["text-small", "mt-2", "font-weight-light"], "{{item.description}}")
                    );
		return super.toVUEComponent		
		.name("uim-timeline-item")
        .props("item", "type:Object,return{}");
	}
}
mixin(UIMShort!"TimelineItem");
unittest {
	assert(Assert(UIMTimelineItem, `<uim-timeline-item></uim-timeline-item>`));
    
    auto f = File("./public/js/uim/components/complex/timelines/item.js", "w"); 
    f.write(UIMTimelineItem.toVUEComponent.toString);
}