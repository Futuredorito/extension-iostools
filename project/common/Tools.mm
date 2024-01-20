#include "Utils.h"
#import <UIKit/UIKit.h>


namespace Tools {
	
	
	float setBrightness(float inputValue) {
        [[UIScreen mainScreen] setBrightness: inputValue];
	}
	
	
}
