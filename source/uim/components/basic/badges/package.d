module uim.components.basic.badges;

public import uim.components;

@safe:
public import uim.components.basic.badges.badge;

string badgesRegistration() {
  return 
    UIMBadge.toVUEComponent.globalRegistration;
}

string badgesVue3(string target) {
  string[] results; 

	results ~= UIMBadge.toVue3(target);

  return results.join(";")~";";
} 