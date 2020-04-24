module uim.components.alerts;

public import uim.components.alerts.alert;
public import uim.components.alerts.heading;
public import uim.components.alerts.link;

string alertsRegistration() {
  return 
    UIMAlert.toVUEComponent.globalRegistration~
    UIMAlertHeading.toVUEComponent.globalRegistration~
    UIMAlertLink.toVUEComponent.globalRegistration;
}