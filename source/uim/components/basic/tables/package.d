module uim.components.basic.tables;

public import uim.components;

@safe:

public import uim.components.basic.tables.table;
public import uim.components.basic.tables.body_;
public import uim.components.basic.tables.header;
public import uim.components.basic.tables.footer;
public import uim.components.basic.tables.cell;
public import uim.components.basic.tables.row;

/* string tablesRegistration() {
  return 
    UIMTable.toVUEComponent.globalRegistration~
    UIMTableBody.toVUEComponent.globalRegistration~
    UIMTableCell.toVUEComponent.globalRegistration~
    UIMTableRow.toVUEComponent.globalRegistration~
    UIMTableFooter.toVUEComponent.globalRegistration~
    UIMTableHeader.toVUEComponent.globalRegistration;
}

string tablesVue3(string target) {
  return [
    UIMTable, 
    UIMTableBody, 
    UIMTableCell, 
    UIMTableRow, 
    UIMTableFooter,
    UIMTableHeader
  ].map!(a => a.toVue3(target)~";").join("");
}  */