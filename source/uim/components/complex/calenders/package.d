module uim.components.complex.calendars;

public import uim.components.complex.calendars.day;
public import uim.components.complex.calendars.week;
public import uim.components.complex.calendars.month;
public import uim.components.complex.calendars.year;
public import uim.components.complex.calendars.calendar;
public import uim.components.complex.calendars.events;
public import uim.components.complex.calendars.event;

string calendarRegistration() {
  return 
    UIMCalendar.toVUEComponent.globalRegistration~
    UIMCalendarDay.toVUEComponent.globalRegistration~
    UIMCalendarWeek.toVUEComponent.globalRegistration~
    UIMCalendarMonth.toVUEComponent.globalRegistration~
    UIMCalendarYear.toVUEComponent.globalRegistration~
    UIMCalendarEvent.toVUEComponent.globalRegistration~
    UIMCalendarEvents.toVUEComponent.globalRegistration;
}