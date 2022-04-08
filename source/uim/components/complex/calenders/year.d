module uim.components.complex.calendars.year;

import uim.components;

@safe:

class DUIMCalendarYear : DUIMComponent {
	mixin(H5This!("uim-calendar-year"));

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-calendar-year"], "<slot />");
		return super.toVUEComponent		
		.name("uim-calendar-year");
	} */
}
mixin(UIMShort!"CalendarYear");
unittest {
	assert(Assert(UIMCalendarYear, `<uim-calendar-year></uim-calendar-year>`));
		
	auto f = File("./public/js/uim/components/complex/"~"CalendarYear".toLower~".js", "w"); 
  f.write(UIMCalendarYear.toVUEComponent.toString);
}
