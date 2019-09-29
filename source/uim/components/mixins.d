module uim.components.mixins;

import uim.components;

template UIMFunc(string name) {
	const char[] UIMFunc = "
auto UIM"~name~"(string content) { return new DUIM"~name~"(content); }
auto UIM"~name~"(DH5Obj[] content...) { return new DUIM"~name~"(content); }

auto UIM"~name~"(string id, string[] classes) { return new DUIM"~name~"(id, classes); }
auto UIM"~name~"(string id, string[] classes, string content) { return new DUIM"~name~"(id, classes, content); }
auto UIM"~name~"(string id, string[] classes, DH5Obj[] content...) { return new DUIM"~name~"(id, classes, content); }

auto UIM"~name~"(string id, string[string] attributes) { return new DUIM"~name~"(id, attributes); }
auto UIM"~name~"(string id, string[string] attributes, string content) { return new DUIM"~name~"(id, attributes, content); }
auto UIM"~name~"(string id, string[string] attributes, DH5Obj[] content...) { return new DUIM"~name~"(id, attributes, content); }

auto UIM"~name~"(string id, string[] classes, string[string] attributes) { return new DUIM"~name~"(id, classes, attributes); }
auto UIM"~name~"(string id, string[] classes, string[string] attributes, string content) { return new DUIM"~name~"(id, classes, attributes, content); }
auto UIM"~name~"(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { return new DUIM"~name~"(id, classes, attributes, content); }

auto UIM"~name~"(string[] classes) { return new DUIM"~name~"(classes); }
auto UIM"~name~"(string[] classes, string content) { return new DUIM"~name~"(classes, content); }
auto UIM"~name~"(string[] classes, DH5Obj[] content...) { return new DUIM"~name~"(classes, content); }

auto UIM"~name~"(string[string] attributes) { return new DUIM"~name~"(attributes); }
auto UIM"~name~"(string[string] attributes, string content) { return new DUIM"~name~"(attributes, content); }
auto UIM"~name~"(string[string] attributes, DH5Obj[] content...) { return new DUIM"~name~"(attributes, content); }

auto UIM"~name~"(string[] classes, string[string] attributes) { return new DUIM"~name~"(classes, attributes); }
auto UIM"~name~"(string[] classes, string[string] attributes, string content) { return new DUIM"~name~"(classes, attributes, content); }
auto UIM"~name~"(string[] classes, string[string] attributes, DH5Obj[] content...) { return new DUIM"~name~"(classes, attributes, content); }
";
}

template UIMFunc(string left, string right) {
	const char[] UIMFunc = "
	auto UIM"~left~"(string content) { return new DUIM"~right~"(content); }
	auto UIM"~left~"(DH5Obj[] content...) { return new DUIM"~right~"(content); }

	auto UIM"~left~"(string id, string[] classes) { return new DUIM"~right~"(id, classes); }
	auto UIM"~left~"(string id, string[] classes, string content) { return new DUIM"~right~"(id, classes, content); }
	auto UIM"~left~"(string id, string[] classes, DH5Obj[] content...) { return new DUIM"~right~"(id, classes, content); }

	auto UIM"~left~"(string id, string[string] attributes) { return new DUIM"~right~"(id, attributes); }
	auto UIM"~left~"(string id, string[string] attributes, string content) { return new DUIM"~right~"(id, attributes, content); }
	auto UIM"~left~"(string id, string[string] attributes, DH5Obj[] content...) { return new DUIM"~right~"(id, attributes, content); }

	auto UIM"~left~"(string id, string[] classes, string[string] attributes) { return new DUIM"~right~"(id, classes, attributes); }
	auto UIM"~left~"(string id, string[] classes, string[string] attributes, string content) { return new DUIM"~right~"(id, classes, attributes, content); }
	auto UIM"~left~"(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { return new DUIM"~right~"(id, classes, attributes, content); }

	auto UIM"~left~"(string[] classes) { return new DUIM"~right~"(classes); }
	auto UIM"~left~"(string[] classes, string content) { return new DUIM"~right~"(classes, content); }
	auto UIM"~left~"(string[] classes, DH5Obj[] content...) { return new DUIM"~right~"(classes, content); }

	auto UIM"~left~"(string[string] attributes) { return new DUIM"~right~"(attributes); }
	auto UIM"~left~"(string[string] attributes, string content) { return new DUIM"~right~"(attributes, content); }
	auto UIM"~left~"(string[string] attributes, DH5Obj[] content...) { return new DUIM"~right~"(attributes, content); }

	auto UIM"~left~"(string[] classes, string[string] attributes) { return new DUIM"~right~"(classes, attributes); }
	auto UIM"~left~"(string[] classes, string[string] attributes, string content) { return new DUIM"~right~"(classes, attributes, content); }
	auto UIM"~left~"(string[] classes, string[string] attributes, DH5Obj[] content...) { return new DUIM"~right~"(classes, attributes, content); }
	";
}

template UIMThis(string bsName, string classes = null, string attributes = null) {
	const char[] strClasses = (classes) ? "_classes("~classes~");" : "";
	const char[] strAttributes = (attributes)? "_attributes.add("~attributes~");" : "";
	
	const char[] UIMThis = `
	this(string content) { super(content); `~strClasses~strAttributes~`}
	this(DH5Obj[] content...) { super(content); `~strClasses~strAttributes~`}

	this(string id, string[] someClasses) { super(id, someClasses); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, string content) { super(id, someClasses, content); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, DH5Obj[] content...) { super(id, someClasses, content); `~strClasses~strAttributes~`}

	this(string id, string[string] attributes) { super(id, attributes); `~strClasses~strAttributes~`}
	this(string id, string[string] attributes, string content) { super(id, attributes).content(content); `~strClasses~strAttributes~`}
	this(string id, string[string] attributes, DH5Obj[] content...) { super(id, attributes).content(content); `~strClasses~strAttributes~`}

	this(string id, string[] someClasses, string[string] attributes) { super(id, someClasses, attributes); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, string[string] attributes, string content) { super(id, someClasses, attributes, content); `~strClasses~strAttributes~`}
	this(string id, string[] someClasses, string[string] attributes, DH5Obj[] content...) { super(id, someClasses, attributes, content); `~strClasses~strAttributes~`}

	this(string[] someClasses) { super(someClasses); `~strClasses~strAttributes~`}
	this(string[] someClasses, string content) { super(someClasses, content); `~strClasses~strAttributes~`}
	this(string[] someClasses, DH5Obj[] content...) { super(someClasses, content); `~strClasses~strAttributes~`}

	this(string[string] attributes) { super(attributes); `~strClasses~strAttributes~`}
	this(string[string] attributes, string content) { super(attributes, content); `~strClasses~strAttributes~`}
	this(string[string] attributes, DH5Obj[] content...) { super(attributes, content); `~strClasses~strAttributes~`}

	this(string[] classes, string[string] attributes) { super(classes, attributes); `~strClasses~strAttributes~`}
	this(string[] classes, string[string] attributes, string content) { super(classes, attributes, content); `~strClasses~strAttributes~`}
	this(string[] classes, string[string] attributes, DH5Obj[] content...) { super(classes, attributes, content); `~strClasses~strAttributes~`}
	`;
}

template UIMShort(string name) {		
	const char[] UIMShort = h5Methods("auto UIM"~name, "new DUIM"~name);
}