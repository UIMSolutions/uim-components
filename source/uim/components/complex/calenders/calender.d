module uim.components.complex.calendars.calendar;

import uim.components;

class DUIMCalendar : DUIMComponent {
	mixin(H5This!("uim-calendar"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div("<slot />");
		return super.toVUEComponent		
		.name("uim-calendar");
	}
}
mixin(UIMShort!"Calendar");
unittest {
	assert(Assert(UIMCalendar, `<uim-calendar></uim-calendar>`));
	auto f = File("./public/js/uim/components/complex/"~"Calendar".toLower~".js", "w"); 
  f.write(UIMCalendar.toVUEComponent.toString);
}
