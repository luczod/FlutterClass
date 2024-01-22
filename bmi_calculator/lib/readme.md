- ### Flutter Outline unable

  Got nothing on their flutter outline, or are unable to find the extract widget option, find the 'Dart Analysis'
  tab right below, Then click on the 'Restart Dart Analysis Serve' Icon, which is the red rotating arrows icon.
  The flutter outline will then be refreshed and you'll be able to extract your widgets there.

- ### Extract widget

  Click in extract widget and the flutter create a class to selected widget.

- ### Final vs Const

  a const because the color comes from when we create a new reusable card
  and that could be created at any time not just at the time when the code is compiled, but it could be
  any time when our app is running. Constants must be initialized constant values, for example
  they must NOT BE initialized with a function.

- ### Colors
  An immutable 32 bit color value in ARGB format.
  Alfa or the opacity of the color.
  Color c1 = const Color(0xFF42A5F5); #42A5F5
  Color c2 = const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5); opacity = 1 #42A5F5
  Color c3 = const Color.fromARGB(255, 66, 165, 245); opacity = 1 #42A5F5
