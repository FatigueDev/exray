# Changelog

## 0.3.0
- Refactored the Unifex spec.exs return values to be closer to `bang!` functions, where in the case of no returned value, it just returns `:ok`; otherwise, it returns the value instead of an `{:ok, value}` tuple.
- Added the Screenspace functions from the Core module and continued to add type conversions within `type_converter.cpp` in c_src.
- Went through and fully fleshed out the `@moduledoc` and `@spec` attributes for the exposed modules for a better dev experience.

## 0.2.0
- Added the rShapes module, started work on documentation.

## 0.1.0
- Initial stuff. Window opening and things. I forgot, I'm writing the changelog at 0.3.0 :^)