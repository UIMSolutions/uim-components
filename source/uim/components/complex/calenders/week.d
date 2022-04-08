module uim.components.complex.calendars.week;

import uim.components;

@safe:

/// Component for presenting a calender week including events
class DUIMCalendarWeek : DUIMComponent {
	mixin(H5This!("uim-calendar-week"));

	/* override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5CardColumns(["uim-calendar-week"], 
			BS5Card(["border"], ["v-for":"weekday, index in this.weekdays"])
				.header(H5H2(H5String("{{weekName(start.addDays(index))}}"), H5Small(["ml-1"], "{{dayString(start.addDays(index))}}")))
				(BS5ListLinks(["list-group-flush"]).link([":href":"this.rootPath+'/event/'+event.id", "v-for":"event in eventsOfWeek(start.addDays(index))", ":key":"event.id"], 
					H5Span(["ml-1"], "{{event.title}}")
					)
				)
				.footer(BS5ButtonGroup(["btn-group-sm", "w-100"], BS5ButtonLink([":href":"'/events'"], `<i class="fas fa-plus-circle"></i> Neuer Eintrag`))
					)
		);
		return super.toVUEComponent		
		.name("uim-calendar-week")
		.props("rootPath", `type:String, default: '/'`)
		.props("start", `type:Date, default(){return new Date();}`)
		.props("weekdays", `type:Array, default(){return ['mo', 'di', 'mi', 'do', 'fr', 'sa', 'so']}`)
		.props("events", `type:Object, default(){return {}}`)
		.methods("eventsOfWeek(day)", "if (this.dayString(day) in this.events) return this.events[this.dayString(day)]; return [];")
		.methods("dayString(day)", "return ''+day.getDate()+'. '+day.getMonth()+'.'+' '+day.getFullYear();")
		.methods("weekName(day)", "switch(day.getDay()){
case 0: return 'So';
case 1: return 'Mo';
case 2: return 'Di';
case 3: return 'Mi';
case 4: return 'Do';
case 5: return 'Fr';
case 6: return 'Sa';
default: return 'XX';
		}");
	} */
}
mixin(UIMShort!"CalendarWeek");
unittest {
	assert(Assert(UIMCalendarWeek, `<uim-calendar-week></uim-calendar-week>`));
	
	auto f = File("./public/js/uim/components/complex/"~"CalendarWeek".toLower~".js", "w"); 
  // f.write(UIMCalendarWeek.toVUEComponent.toString);
}
