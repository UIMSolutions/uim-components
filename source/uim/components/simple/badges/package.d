module uim.components.badges;

public import uim.components.badges.badge;

string badgesRegistration() {
  return 
    UIMBadge.toVUEComponent.globalRegistration;
}