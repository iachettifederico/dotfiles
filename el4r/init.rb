# Beginning of the el4r block:
# RCtool generated this block automatically. DO NOT MODIFY this block!
# This is the el4r initialization file.
# End of the el4r block.
# User-setting area is below this line.

$LOAD_PATH.unshift "/home/fedex/.rvm/gems/ruby-1.9.3-p374/gems/xiki-0.6.5/lib"   # <- substitute (xiki directory) with the output of "xiki directory"
require 'xiki'
Xiki.init

KeyBindings.keys   # Use default key bindings
Themes.use "Default"  # Use xiki theme

define_key(:notes_mode_map, kbd("C-c C-c")) do 
  Launcher.launch_or_hide(:blink=>true) 
end

el4r_load "el4r-mode.rb"
