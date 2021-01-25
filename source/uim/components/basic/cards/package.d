module uim.components.basic.cards;

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