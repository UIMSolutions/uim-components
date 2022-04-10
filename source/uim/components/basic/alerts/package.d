module uim.components.basic.alerts;

public import uim.components;

@safe:
public import uim.components.basic.alerts.alert;
public import uim.components.basic.alerts.heading;
public import uim.components.basic.alerts.link;

/* string alertsRegistration() {
  return 
    UIMAlert.toVUEComponent.globalRegistration~
    UIMAlertHeading.toVUEComponent.globalRegistration~
    UIMAlertLink.toVUEComponent.globalRegistration;
}

string alertsVue3(string target) {
  string[] results; 

	results ~= UIMAlert.toVue3(target);
	results ~= UIMAlertHeading.toVue3(target);
	results ~= UIMAlertLink.toVue3(target);

  return results.join(";")~";";
}  */