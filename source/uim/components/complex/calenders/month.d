module uim.components.complex.calendars.month;

import uim.components;

@safe:

class DUIMCalendarMonth : DUIMComponent {
	mixin(H5This!("uim-calendar-month"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-calendar-month"], "<slot />");
		return super.toVUEComponent		
		.name("uim-calendar-month");
	}
}
mixin(UIMShort!"CalendarMonth");
unittest {
	assert(Assert(UIMCalendarMonth, `<uim-calendar-month></uim-calendar-month>`));

	auto f = File("./public/js/uim/components/complex/"~"CalendarMonth".toLower~".js", "w"); 
  f.write(UIMCalendarMonth.toVUEComponent.toString);
}
