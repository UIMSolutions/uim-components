module uim.components.demos.components.modals;

import uim.components;

@safe: 


@safe: 
static this() {
	demoUIMComps.pages("basic/components/modals", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Modals - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          modalsVue3("vue")~ 
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 

auto staticExample = demoUIMExample("static", "Static",  
  H5Div(
    UIMModal("modalStatic", ["fade show"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticTitle", "aria-modal":"true", "style":"display: block; position: relative; z-index: 1;"], 
      UIMModalDialog(["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle(["id":"modalStaticTitle"], "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"]))),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))
  ), 
  `UIMModal("modalStatic", ["fade show"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticTitle", "aria-modal":"true", "style":"display: block; position: relative; z-index: 1;"], 
    UIMModalDialog(["role":"document"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle(["id":"modalStaticTitle"], "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"]))),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))`, 
          `<div class="modal fade show" id="modalStatic" tabindex="-1" role="dialog" aria-labelledby="modalStaticTitle" aria-modal="true" style="display: block; position: relative; z-index: 1;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalStaticTitle">Modal title</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Action</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>`);

auto headerExample = demoUIMExample("header", "Header only",  
  H5Div(
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeader"], "Open modal"),
    UIMModal("modalHeader", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderTitle", "aria-hidden":"true"], 
      UIMModalDialog(
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle(["id":"modalHeaderTitle"], "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")))))
  ), 
`UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeader"], "Open modal"),
  UIMModal("modalHeader", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderTitle", "aria-hidden":"true"], 
    UIMModalDialog(
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle(["id":"modalHeaderTitle"], "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")))))`, ``);

auto footerExample = demoUIMExample("headerfooter", "Header and footer",  
  H5Div(
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeaderFooter"], "Open modal"),
    UIMModal("modalHeaderFooter", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderFooterTitle", "aria-hidden":"true"],
      UIMModalDialog( 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalHeaderFooterTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeaderFooter"], "Open modal"),
  UIMModal("modalHeaderFooter", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderFooterTitle", "aria-hidden":"true"],
    UIMModalDialog( 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalHeaderFooterTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, ``);

auto longExample = demoUIMExample("scrollablecontent", "Long scrollable content",  
  H5Div(
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLong"], "Open modal"),
    UIMModal("modalLong", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLongTitle", "aria-hidden":"true"], 
      UIMModalDialog(
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalLongTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
            H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. 
            Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
            H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. 
            In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
            H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. 
            Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
            H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. 
            Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),          
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), `UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLong"], "Open modal"),
  UIMModal("modalLong", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLongTitle", "aria-hidden":"true"], 
    UIMModalDialog(
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalLongTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
          H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. 
          Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
          H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. 
          In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
          H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. 
          Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
          H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. 
          Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),          
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
          ``);

auto scrollableExample = demoUIMExample("scrollablebody", "Scrollable body",  
  H5Div(
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalScrollableBody"], "Open modal"),
    UIMModal("modalScrollableBody", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalScrollableBodyTitle", "aria-hidden":"true"], 
      UIMModalDialog("modal-dialog-scrollable", 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalScrollableBodyTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
            H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
            H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
            H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
            H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalScrollableBody"], "Open modal"),
  UIMModal("modalScrollableBody", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalScrollableBodyTitle", "aria-hidden":"true"], 
    UIMModalDialog("modal-dialog-scrollable", 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalScrollableBodyTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
          H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
          H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
          H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
          H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
  ``);

auto verticallyExample = demoUIMExample("vertically", "Vertically centered",  
  H5Div(
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalVertical"], "Open modal"),
    UIMModal("modalVertical", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalVerticalTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-dialog-centered"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalVerticalTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalVertical"], "Open modal"),
  UIMModal("modalVertical", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalVerticalTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-dialog-centered"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalVerticalTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
  ``);

auto sizingExample = demoUIMExample("sizing", "Sizing",  
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Small"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalSmall"], "Open modal"),
    UIMModal("modalSmall", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalSmallTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-sm"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalSmallTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Medium"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalMedium"], "Open modal"),
    UIMModal("modalMedium", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalMediumTitle", "aria-hidden":"true"], 
      UIMModalDialog(
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalMediumTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Large"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLarge"], "Open modal"),
    UIMModal("modalLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLargeTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-lg"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalLargeTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Extra Large"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalExtraLarge"], "Open modal"),
    UIMModal("modalExtraLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalExtraLargeTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-xl"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalExtraLargeTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `H5H4(["h5", "text-muted", "mt-3"], "Small"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalSmall"], "Open modal"),
  UIMModal("modalSmall", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalSmallTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-sm"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalSmallTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Medium"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalMedium"], "Open modal"),
  UIMModal("modalMedium", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalMediumTitle", "aria-hidden":"true"], 
    UIMModalDialog(
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalMediumTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Large"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLarge"], "Open modal"),
  UIMModal("modalLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLargeTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-lg"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalLargeTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Extra Large"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalExtraLarge"], "Open modal"),
  UIMModal("modalExtraLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalExtraLargeTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-xl"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalExtraLargeTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
  ``);

auto alwaysExample = demoUIMExample("always", "Always",  
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Always"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenAlways"], "Open modal"),
    UIMModal("modalFullscreenAlways", ["fade"], ["tabindex":"-1", "role":"dialog", 
      "aria-labelledby":"modalFullscreenAlwaysTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-fullscreen"], ["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalFullscreenAlwaysTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below small"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenSm"], "Open modal"),
    UIMModal("modalFullscreenSm", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenSmTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-fullscreen-sm-down"], ["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalFullscreenSmTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below medium"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenMd"], "Open modal"),
      UIMModal("modalFullscreenMd", ["fade"],  ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenMdTitle", "aria-hidden":"true"], 
        UIMModalDialog(["modal-fullscreen-md-down"], ["role":"document"], 
          UIMModalContent(
            UIMModalHeader(
              UIMModalTitle("modalFullscreenMdTitle", "Modal title"),
              UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
            UIMModalBody(
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
            UIMModalFooter(
              UIMButton(["btn-primary"], "Action"),
              UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below large"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenLg"], "Open modal"),
    UIMModal("modalFullscreenLg", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenLgTitle", "aria-hidden":"true"],
      UIMModalDialog(["modal-fullscreen-lg-down"], ["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalFullscreenLgTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))), 
    H5H4(["h5", "text-muted", "mt-3"], "Below extra large"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXl"], "Open modal"),
    UIMModal("modalFullscreenXl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXlTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-fullscreen-xl-down"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalFullscreenXlTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below extra extra large"),
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXxl"], "Open modal"),
    UIMModal("modalFullscreenXxl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXxlTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-fullscreen-xxl-down"], ["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalFullscreenXxlTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
), 
`H5H4(["h5", "text-muted", "mt-3"], "Always"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenAlways"], "Open modal"),
  UIMModal("modalFullscreenAlways", ["fade"], ["tabindex":"-1", "role":"dialog", 
  "aria-labelledby":"modalFullscreenAlwaysTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-fullscreen"], ["role":"document"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalFullscreenAlwaysTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below small"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenSm"], "Open modal"),
  UIMModal("modalFullscreenSm", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenSmTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-fullscreen-sm-down"], ["role":"document"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalFullscreenSmTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below medium"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenMd"], "Open modal"),
    UIMModal("modalFullscreenMd", ["fade"],  ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenMdTitle", "aria-hidden":"true"], 
      UIMModalDialog(["modal-fullscreen-md-down"], ["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalFullscreenMdTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below large"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenLg"], "Open modal"),
  UIMModal("modalFullscreenLg", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenLgTitle", "aria-hidden":"true"],
    UIMModalDialog(["modal-fullscreen-lg-down"], ["role":"document"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalFullscreenLgTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))), 
  H5H4(["h5", "text-muted", "mt-3"], "Below extra large"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXl"], "Open modal"),
  UIMModal("modalFullscreenXl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXlTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-fullscreen-xl-down"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalFullscreenXlTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below extra extra large"),
  UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXxl"], "Open modal"),
  UIMModal("modalFullscreenXxl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXxlTitle", "aria-hidden":"true"], 
    UIMModalDialog(["modal-fullscreen-xxl-down"], ["role":"document"], 
      UIMModalContent(
        UIMModalHeader(
          UIMModalTitle("modalFullscreenXxlTitle", "Modal title"),
          UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        UIMModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        UIMModalFooter(
          UIMButton(["btn-primary"], "Action"),
          UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
      ``);

auto animationExample = demoUIMExample("animation", "No animation",  
  H5Div(
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalNoAnimation"], "Open modal"),
    UIMModal("modalNoAnimation", ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalNoAnimationTitle", "aria-hidden":"true"], 
      UIMModalDialog(["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalNoAnimationTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalNoAnimation"], "Open modal"),
    UIMModal("modalNoAnimation", ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalNoAnimationTitle", "aria-hidden":"true"], 
      UIMModalDialog(["role":"document"], 
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalNoAnimationTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
            ``);

auto backExample = demoUIMExample("backdrop", "Static backdrop",  
  H5Div(
    UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalStaticBackdrop", "data-backdrop":"static", "data-keyboard":"false"], "Open modal"),
    UIMModal("modalStaticBackdrop", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticBackdropTitle", "aria-hidden":"true"], 
      UIMModalDialog(["role":"document"],
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalStaticBackdropTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])), 
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `UIMButton(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalStaticBackdrop", "data-backdrop":"static", "data-keyboard":"false"], "Open modal"),
    UIMModal("modalStaticBackdrop", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticBackdropTitle", "aria-hidden":"true"], 
      UIMModalDialog(["role":"document"],
        UIMModalContent(
          UIMModalHeader(
            UIMModalTitle("modalStaticBackdropTitle", "Modal title"),
            UIMButton(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])), 
          UIMModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          UIMModalFooter(
            UIMButton(["btn-primary"], "Action"),
            UIMButton(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, ``);

      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Modals")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "modals"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Modals"),
      H5Hr,

      staticExample,  
      headerExample,  
      footerExample,  
      longExample,  
      scrollableExample,  
      verticallyExample,  
      sizingExample,  
      animationExample,  
      backExample,
      alwaysExample,
      animationExample,
      backExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}