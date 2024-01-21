#if !defined(__APPLE__) && !defined(__IOS__) && !defined(TARGET_OS_SIMULATOR)
#error "extension-iostools is only supported in iOS/iPhoneSim."
#endif

#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#include <hx/CFFI.h>
#include "Utils.h"

using namespace Tools;

static value extension_iostools_set_brightness (value inputValue) {
    int returnValue = setBrightness(val_int(inputValue));
    return alloc_int(returnValue);
    
}
DEFINE_PRIM (extension_iostools_set_brightness, 1);

static value extension_iostools_set_dimming (value inputValue) {
    bool returnValue = setDimming(val_bool(inputValue));
    return alloc_int(returnValue);
    
}
DEFINE_PRIM (extension_iostools_set_dimming, 1);

extern "C" void extension_iostools_main () {    
    val_int(0);
}
DEFINE_ENTRY_POINT (extension_iostools_main);

extern "C" int extension_iostools_register_prims () { return 0; }
