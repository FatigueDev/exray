module(Exray.Textures.Texture.Drawing.Loader)
interface([NIF, CNode])
callback(:load)
callback(:upgrade)
state_type("State")

Code.require_file(
  "./c_src/exray/exray_types.exs",
  Bundlex.Helper.MixHelper.get_project_dir(:exray) |> elem(1)
)

unifex_config__ = Exray.Unifex.Types.get_types(unifex_config__)

# void DrawTexture(Texture2D texture, int posX, int posY, Color tint);                               // Draw a Texture2D
spec(draw_texture(texture :: exTexture, pos_x :: int, pos_y :: int, tint :: exColor) :: :ok)

# void DrawTextureV(Texture2D texture, Vector2 position, Color tint);                                // Draw a Texture2D with position defined as Vector2
spec(draw_texture_v(texture :: exTexture, position :: exVector2, tint :: exColor) :: :ok)

# void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);  // Draw a Texture2D with extended parameters
spec(
  draw_texture_ex(
    texture :: exTexture,
    position :: exVector2,
    rotation :: float,
    scale :: float,
    tint :: exColor
  ) :: :ok
)

# void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);            // Draw a part of a texture defined by a rectangle
spec(
  draw_texture_rec(
    texture :: exTexture,
    source :: exRectangle,
    position :: exVector2,
    tint :: exColor
  ) :: :ok
)

# void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint); // Draw a part of a texture defined by a rectangle with 'pro' parameters
spec(
  draw_texture_pro(
    texture :: exTexture,
    source :: exRectangle,
    dest :: exRectangle,
    origin :: exVector2,
    rotation :: float,
    tint :: exColor
  ) :: :ok
)

# void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint); // Draws a texture (or part of it) that stretches or shrinks nicely
spec(
  draw_texture_n_patch(
    texture :: exTexture,
    n_patch_info :: exNPatchInfo,
    dest :: exRectangle,
    origin :: exVector2,
    rotation :: float,
    tint :: exColor
  ) :: :ok
)
