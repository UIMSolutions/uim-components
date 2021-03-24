module uim.components.complex.calendars.day;

import uim.components;

@safe:

class DUIMCalendarDay : DUIMComponent {
	mixin(H5This!("uim-calendar-day"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-calendar-day"], "<slot />");
		return super.toVUEComponent		
		.name("uim-calendar-day");
	}
}
mixin(UIMShort!"CalendarDay");
unittest {
	assert(Assert(UIMCalendarDay, `<uim-calendar-day></uim-calendar-day>`));
		auto f = File("./public/js/uim/components/complex/"~"CalendarDay".toLower~".js", "w"); 
  f.write(UIMCalendarDay.toVUEComponent.toString);
}
