module uim.components.basic.alerts;

public import uim.components.basic.alerts.alert;
public import uim.components.basic.alerts.heading;
public import uim.components.basic.alerts.link;

string alertsRegistration() {
  return 
    UIMAlert.toVUEComponent.globalRegistration~
    UIMAlertHeading.toVUEComponent.globalRegistration~
    UIMAlertLink.toVUEComponent.globalRegistration;
}