module uim.components.basic.badges;

public import uim.components.basic.badges.badge;

string badgesRegistration() {
  return 
    UIMBadge.toVUEComponent.globalRegistration;
}