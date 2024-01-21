#if !defined(__APPLE__) && !defined(__IOS__)
#error "extension-iostools is only supported in iOS/iPhoneSim."
#endif

#include "Utils.h"
#import <UIKit/UIKit.h>

namespace Tools {
	float setBrightness(float inputValue) {
        [[UIScreen mainScreen] setBrightness: inputValue];
	}	
}
