module uim.components.complex;

public import uim.components.complex.blogs;
public import uim.components.complex.calendars;
public import uim.components.complex.chats;
public import uim.components.complex.invoices;
public import uim.components.complex.mailboxes;
public import uim.components.complex.menues;
public import uim.components.complex.timelines;
public import uim.components.complex.wikis;

public import uim.components.complex.panel;

string complexRegistration() {
  return     
    UIMMenuMega.toVUEComponent.globalRegistration~
    UIMPanel.toVUEComponent.globalRegistration;
}