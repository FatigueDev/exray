defmodule Exray.Unifex.Types do
  @moduledoc false

  def get_types(unifex_config__) do
    Code.put_compiler_option(:ignore_module_conflict, true)

    import Unifex.Specs.DSL

    type(
      exVector2 :: %Exray.Structs.Vector2{
        x: float,
        y: float
      }
    )

    type(
      exVector3 :: %Exray.Structs.Vector3{
        x: float,
        y: float,
        z: float
      }
    )

    type(
      exVector4 :: %Exray.Structs.Vector4{
        x: float,
        y: float,
        z: float,
        w: float
      }
    )

    # This is an alias
    # type exQuaternion :: %Exray.Structs.Quaternion{
    #   x: float, y: float, z: float, w: float}

    type(
      exMatrix :: %Exray.Structs.Matrix{
        m0: float,
        m4: float,
        m8: float,
        m12: float,
        m1: float,
        m5: float,
        m9: float,
        m13: float,
        m2: float,
        m6: float,
        m10: float,
        m14: float,
        m3: float,
        m7: float,
        m11: float,
        m15: float
      }
    )

    type(
      exColor :: %Exray.Structs.Color{
        r: unsigned,
        g: unsigned,
        b: unsigned,
        a: unsigned
      }
    )

    type(
      exRectangle :: %Exray.Structs.Rectangle{
        x: float,
        y: float,
        width: float,
        height: float
      }
    )

    type(
      exImage :: %Exray.Structs.Image{
        # ! Potentially fucky wucky. Is a `void *`
        data: state,
        width: int,
        height: int,
        mipmaps: int,
        format: int
      }
    )

    type(
      exTexture :: %Exray.Structs.Texture{
        id: unsigned,
        width: int,
        height: int,
        mipmaps: int,
        format: int
      }
    )

    # type exTexture2D
    # type exTextureCubemap

    type(
      exRenderTexture :: %Exray.Structs.RenderTexture{
        id: unsigned,
        texture: exTexture,
        depth: exTexture
      }
    )

    # type exRenderTexture2D

    type(
      exNPatchInfo :: %Exray.Structs.NPatchInfo{
        source: exRectangle,
        left: int,
        top: int,
        right: int,
        bottom: int,
        layout: int
      }
    )

    type(
      exGlyphInfo :: %Exray.Structs.GlyphInfo{
        value: int,
        offsetX: int,
        offsetY: int,
        advanceX: int,
        image: exImage
      }
    )

    type(
      exFont :: %Exray.Structs.Font{
        baseSize: int,
        glyphCount: int,
        glyphPadding: int,
        texture: exTexture,
        recs: [exRectangle],
        glyphs: [exGlyphInfo]
      }
    )

    type(
      exCamera3D :: %Exray.Structs.Camera3D{
        position: exVector3,
        target: exVector3,
        up: exVector3,
        fovy: float,
        projection: int
      }
    )

    # type exCamera

    type(
      exCamera2D :: %Exray.Structs.Camera2D{
        offset: exVector2,
        target: exVector2,
        rotation: float,
        zoom: float
      }
    )

    type(
      exMesh :: %Exray.Structs.Mesh{
        vertextCount: int,
        triangleCount: int,
        vertices: [float],
        texcoords: [float],
        texcoords2: [float],
        normals: [float],
        tangents: [float],
        colors: string,
        indices: [int],
        animVertices: [float],
        animNormals: [float],
        boneIds: string,
        boneWeights: [float],
        vaoId: unsigned,
        vboId: [unsigned]
      }
    )

    type(
      exShader :: %Exray.Structs.Shader{
        id: unsigned,
        locs: [int]
      }
    )

    type(
      exMaterialMap :: %Exray.Structs.MaterialMap{
        texture: exTexture,
        color: exColor,
        value: float
      }
    )

    type(
      exMaterial :: %Exray.Structs.Material{
        shader: exShader,
        maps: [exMaterialMap],
        # [4]
        params: [float]
      }
    )

    type(
      exTransform :: %Exray.Structs.Transform{
        translation: exVector3,
        rotation: exVector3,
        scale: exVector3
      }
    )

    type(
      exBoneInfo :: %Exray.Structs.BoneInfo{
        name: [unsigned],
        parent: int
      }
    )

    type(
      exModel :: %Exray.Structs.Model{
        transform: exMatrix,
        meshCount: int,
        materialCount: int,
        meshes: [exMesh],
        materials: [exMaterial],
        meshMaterial: [int],
        boneCount: int,
        bones: [exBoneInfo],
        bindPose: [exTransform]
      }
    )

    type(
      exModelAnimation :: %Exray.Structs.ModelAnimation{
        boneCount: int,
        frameCount: int,
        bones: [exBoneInfo],
        framePoses: state,
        name: string
      }
    )

    type(
      exRay :: %Exray.Structs.Ray{
        position: exVector3,
        direction: exVector3
      }
    )

    type(
      exRayCollision :: %Exray.Structs.RayCollision{
        hit: bool,
        distance: float,
        point: exVector3,
        normal: exVector3
      }
    )

    type(
      exBoundingBox :: %Exray.Structs.BoundingBox{
        min: exVector3,
        max: exVector3
      }
    )

    unifex_config__
  end
end
