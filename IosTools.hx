package;

#if (!ios && !native && macro)
#error 'extension-iostools is only supported in iOS/iPhoneSim.'
#end
import lime.system.CFFI;

class IosTools {	
	public static function setBrightness(inputValue:Float):Float {
		return setbrightness(inputValue);	
	}

	public static function isBoldEnabled():Bool {
		return isBolded();
	}

	public static var isBolded = CFFI.load("extension-iostools", "extension_iostools_isBold", 0);	
	private static var setbrightness = CFFI.load("extension-iostools", "extension_iostools_set_brightness", 1);	
}
