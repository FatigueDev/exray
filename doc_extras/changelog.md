# Changelog

## 0.6.0
- Added `Exray.Textures.Image` and `Exray.Textures.Texture`, which provide load, draw and basic image generation functions.
- Added `Exray.Utils.Guard` module, which is the starting point for things like `is_vector2(val)` and `is_matrix(val)`.
- Added `Exray.Utils.Math`, which exposes the common math functions from Raymath. Mostly floating point stuff, but..
- Added `Exray.Structs.Vector2` math functions. Lerp, normalize, add, multiply, negate- Plenty to mess around with.
- Changed `Exray.Structs` hierarchy to accomodate structs potentially having multiple helper/math functions embedded. For example, `Exray.Structs.Vector2` now includes it's associated math modules, so using `alias Exray.Structs.Vector2` you now have access to `Vector2.math_stuff()`.

## 0.5.0
- Added a [new build process for NIF compilation](../README.md#why-do-i-have-to-compile-the-nifs-manually-now).

## 0.4.0
- Added the start of the Core.Text module, which includes Loading and Drawing modules.
- Added Core.FrameControl (doesn't work with our precompiled Raylib, though).
- Added Core.Misc; screenshots, open a URL and set config flags.
- Added Core.Random; RNG functions to make your players hate your guts for daring not to give them good numbers.
- Added Exray.Colors; a helper to stamp in the the predefined Raylib colours like RAYWHITE, RED, BLACK etc.
- Yet another specfile and typespec refactor.

## 0.3.0
- Refactored the Unifex spec.exs return values to be closer to `bang!` functions, where in the case of no returned value, it just returns `:ok`; otherwise, it returns the value instead of an `{:ok, value}` tuple.
- Added the Screenspace functions from the Core module and continued to add type conversions within `type_converter.cpp` in c_src.
- Went through and fully fleshed out the `@moduledoc` and `@spec` attributes for the exposed modules for a better dev experience.

## 0.2.0
- Added the rShapes module, started work on documentation.

## 0.1.0
- Initial stuff. Window opening and things. I forgot, I'm writing the changelog at 0.3.0 :^)