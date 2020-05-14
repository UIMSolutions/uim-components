module uim.components.snippets.menuicon;

import uim.components;

class DH5MenuIcon : DH5Obj {
	mixin(H5This!"div");

  override void _init() {
    super._init;
    this.classes("menu-icon").attributes("onclick", "menuIconAction(this)");
    this.content(H5Div(["menu-icon-bar1"]), H5Div(["menu-icon-bar2"]), H5Div(["menu-icon-bar3"]));
  }
}

string menuicon_css() {
    return `
.menu-icon {
  display: inline-block;
  cursor: pointer;
}

.menu-icon-bar1, .menu-icon-bar2, .menu-icon-bar3 {
  width: 35px;
  height: 5px;
  background-color: #333;
  margin: 6px 0;
  transition: 0.4s;
}

.change .menu-icon-bar1 {
  -webkit-transform: rotate(-45deg) translate(-9px, 6px) ;
  transform: rotate(-45deg) translate(-9px, 6px) ;
}

/* Fade out the second bar */
.change .menu-icon-bar2 {
  opacity: 0;
}

/* Rotate last bar */
.change .menu-icon-bar3 {
  -webkit-transform: rotate(45deg) translate(-8px, -8px) ;
  transform: rotate(45deg) translate(-8px, -8px) ;
}`;
}

string menuicon_js() {
    return `function myFunction(x) { x.classList.toggle("change"); }`;
}