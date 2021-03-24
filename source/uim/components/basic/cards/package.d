module uim.components.basic.cards;

public import uim.components;

@safe:
public import uim.components.basic.cards.card;
public import uim.components.basic.cards.block;
public import uim.components.basic.cards.body_;
public import uim.components.basic.cards.columns;
public import uim.components.basic.cards.deck;
public import uim.components.basic.cards.deckwrapper;
public import uim.components.basic.cards.footer;
public import uim.components.basic.cards.header;
public import uim.components.basic.cards.image;
public import uim.components.basic.cards.link;
public import uim.components.basic.cards.subtitle;
public import uim.components.basic.cards.text;
public import uim.components.basic.cards.title;

string cardsRegistration() {
  return 
    UIMCard.toVUEComponent.globalRegistration~
    UIMCardBlock.toVUEComponent.globalRegistration~
    UIMCardBody.toVUEComponent.globalRegistration~
    UIMCardColumns.toVUEComponent.globalRegistration~
    UIMCardDeck.toVUEComponent.globalRegistration~
    UIMCardDeckwrapper.toVUEComponent.globalRegistration~
    UIMCardFooter.toVUEComponent.globalRegistration~
    UIMCardHeader.toVUEComponent.globalRegistration~
    UIMCardImage.toVUEComponent.globalRegistration~
    UIMCardLink.toVUEComponent.globalRegistration~
    UIMCardSubtitle.toVUEComponent.globalRegistration~
    UIMCardText.toVUEComponent.globalRegistration~
    UIMCardTitle.toVUEComponent.globalRegistration;
}

string cardsVue3(string target) {
  string[] results; 

	results ~= UIMCard.toVue3(target);
	results ~= UIMCardBlock.toVue3(target);
	results ~= UIMCardBody.toVue3(target);
	results ~= UIMCardColumns.toVue3(target);
	results ~= UIMCardDeck.toVue3(target);
	results ~= UIMCardDeckwrapper.toVue3(target);
	results ~= UIMCardFooter.toVue3(target);
	results ~= UIMCardHeader.toVue3(target);
	results ~= UIMCardImage.toVue3(target);
	results ~= UIMCardLink.toVue3(target);
	results ~= UIMCardSubtitle.toVue3(target);
	results ~= UIMCardText.toVue3(target);
	results ~= UIMCardTitle.toVue3(target);

  return results.join(";")~";";
} 