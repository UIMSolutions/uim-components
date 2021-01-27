module uim.components.complex.calendars.events;

import uim.components;

class DUIMCalendarEvents : DUIMComponent {
	mixin(H5This!("uim-calendar-events"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-calendar-events"], "<slot />");
		return super.toVUEComponent		
		.name("uim-calendar-events");
	}
}
mixin(UIMShort!"CalendarEvents");
unittest {
	assert(Assert(UIMCalendarEvents, `<uim-calendar-events></uim-calendar-events>`));

	auto f = File("./public/js/uim/components/complex/"~"CalendarEvents".toLower~".js", "w"); 
  f.write(UIMCalendarEvents.toVUEComponent.toString);
}
