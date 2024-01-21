package;

#if (!ios && !native && macro)
#error 'extension-iostools is only supported in iOS/iPhoneSim.'
#end
import lime.system.CFFI;

class IosTools {	
	public static function setBrightness(inputValue:Float):Float {
		return setbrightness(inputValue);	
	}

	private static var setbrightness = CFFI.load("extension_iostools", "extension_iostools_set_brightness", 1);	
}
