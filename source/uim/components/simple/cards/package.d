module uim.components.cards;

public import uim.components.cards.card;
public import uim.components.cards.block;
public import uim.components.cards.body_;
public import uim.components.cards.columns;
public import uim.components.cards.deck;
public import uim.components.cards.deckwrapper;
public import uim.components.cards.footer;
public import uim.components.cards.header;
public import uim.components.cards.image;
public import uim.components.cards.link;
public import uim.components.cards.subtitle;
public import uim.components.cards.text;
public import uim.components.cards.title;

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