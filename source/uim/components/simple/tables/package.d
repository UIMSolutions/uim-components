module uim.components.tables;

public import uim.components.tables.table;
public import uim.components.tables.body_;
public import uim.components.tables.header;
public import uim.components.tables.footer;
public import uim.components.tables.cell;
public import uim.components.tables.row;

string tablesRegistration() {
  return 
    UIMTable.toVUEComponent.globalRegistration~
    UIMTableBody.toVUEComponent.globalRegistration~
    UIMTableCell.toVUEComponent.globalRegistration~
    UIMTableRow.toVUEComponent.globalRegistration~
    UIMTableFooter.toVUEComponent.globalRegistration~
    UIMTableHeader.toVUEComponent.globalRegistration;
}