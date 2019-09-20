module uim.components.medias.media;

import uim.components;

class DUIMMedia : DUIMComponent {
	mixin(H5This!("uim-media"));
}
mixin(UIMShort!"Media");

unittest {
	assert(UIMMedia == `<uim-media></uim-media>`);
}
