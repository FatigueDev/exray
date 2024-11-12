defmodule Exray.Unifex.Types do

  def get_types(unifex_config__) do
    import Exray.Structs
    import Unifex.Specs.DSL

    type exVector2 :: %Vector2{
      x: float,
      y: float
    }

    type exVector3 :: %Vector3{
      x: float,
      y: float,
      z: float
    }

    type exVector4 :: %Vector4{
      x: float,
      y: float,
      z: float,
      w: float
    }

    # This is an alias
    # type exQuaternion :: %Quaternion{
    #   x: float, y: float, z: float, w: float}

    type exMatrix :: %Matrix{
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

    type exColor :: %Color{
      r: unsigned,
      g: unsigned,
      b: unsigned,
      a: unsigned
    }

    type exRectangle :: %Rectangle{
      x: float,
      y: float,
      width: float,
      height: float
    }

    type exImage :: %Image{
      data: state, # ! Potentially fucky wucky. Is a `void *`
      width: int,
      height: int,
      mipmaps: int,
      format: int
    }

    type exTexture :: %Texture{
      id: unsigned,
      width: int,
      height: int,
      mipmaps: int,
      format: int
    }
    # type exTexture2D
    # type exTexture2D
    # type exTextureCubemap

    type exRenderTexture :: %RenderTexture{
      id: unsigned,
      texture: exTexture,
      depth: exTexture
    }
    # type exRenderTexture2D

    type exNPatchInfo :: %NPatchInfo{
      source: exRectangle,
      left: int,
      top: int,
      right: int,
      bottom: int,
      layout: int,
    }

    type exGlyphInfo :: %GlyphInfo{
      value: int,
      offsetX: int,
      offsetY: int,
      advanceX: int,
      image: exImage
    }

    type exFont :: %Font{
      baseSize: int,
      glyphCount: int,
      glyphPadding: int,
      texture: exTexture,
      recs: [exRectangle],
      glyphs: [exGlyphInfo]
    }

    type exCamera3D :: %Camera3D{
      position: exVector3,
      target: exVector3,
      up: exVector3,
      fovy: float,
      projection: int
    }
    # type exCamera

    type exCamera2D :: %Camera2D{
      offset: exVector2,
      target: exVector2,
      rotation: float,
      zoom: float
    }

    type exMesh :: %Mesh{
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

    type exShader :: %Shader{
      id: unsigned,
      locs: [int]
    }

    type exMaterialMap :: %MaterialMap{
      texture: exTexture,
      color: exColor,
      value: float
    }

    type exMaterial :: %Material{
      shader: exShader,
      maps: [exMaterialMap],
      params: [float] # [4]
    }

    type exTransform :: %Transform{
      translation: exVector3,
      rotation: exVector3,
      scale: exVector3
    }

    type exBoneInfo :: %BoneInfo{
      name: [unsigned],
      parent: int
    }

    type exModel :: %Model{
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

    type exModelAnimation :: %ModelAnimation{
      boneCount: int,
      frameCount: int,
      bones: [exBoneInfo],
      framePoses: state,
      name: string
    }

    type exRay :: %Ray{
      position: exVector3,
      direction: exVector3
    }

    type exRayCollision :: %RayCollision{
      hit: bool,
      distance: float,
      point: exVector3,
      normal: exVector3
    }

    type exBoundingBox :: %BoundingBox{
      min: exVector3,
      max: exVector3
    }

    unifex_config__
  end
end

# module Exray.Structs.Loader
# interface [NIF, CNode]
# callback :load
# state_type "State"
