module uim.components.complex.calendars.event;

import uim.components;

@safe:

class DUIMCalendarEvent : DUIMComponent {
	mixin(H5This!("uim-calendar-event"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5ListItem(["uim-calendar-event"], 
                    H5Div(["d-flex", "w-100", "justify-content-between"], 
                      H5H5(["mb-1"], "{{event.title}}"),
                      H5Small("{{event.date}}")
                    ),
                    H5P(["mb-1"], "{{event.description}}"),
                    H5Small("{{event.location}}")
                  );
		return super.toVUEComponent		
		.name("uim-calendar-event")
		.props("event", `type:Object, default:null`);
	}
}
mixin(UIMShort!"CalendarEvent");
unittest {
	assert(Assert(UIMCalendarEvent, `<uim-calendar-event></uim-calendar-event>`));
	auto f = File("./public/js/uim/components/complex/"~"CalendarEvent".toLower~".js", "w"); 
  f.write(UIMCalendarEvent.toVUEComponent.toString);
}
