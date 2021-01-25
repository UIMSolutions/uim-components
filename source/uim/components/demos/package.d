module uim.components.demos;

import std.string;

public import uim.core;
public import uim.oop;
public import uim.html;
public import uim.javascript;
public import uim.bootstrap;
public import uim.vue;
public import uim.web;

import uim.components; 

DH5App demoUIMComps;
static this() {
    demoUIMComps = new class DH5App {
        this() {
            super();
        }
    };
}