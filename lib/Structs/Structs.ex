defmodule Exray.Structs do
  @moduledoc false

  use TypedStruct

  typedstruct [module: Vector2, enforce: true] do
    field :x, float, default: 0.0
    field :y, float, default: 0.0
  end

  typedstruct [module: Vector3] do
    field :x, float, default: 0.0
    field :y, float, default: 0.0
    field :z, float, default: 0.0
  end

  typedstruct [module: Vector4] do
    field :x, float, default: 0.0
    field :y, float, default: 0.0
    field :z, float, default: 0.0
    field :w, float, default: 0.0
  end
  alias Vector4, as: Quaternion

  typedstruct [module: Matrix] do
    field :m0, float, default: 0.0
    field :m4, float, default: 0.0
    field :m8, float, default: 0.0
    field :m12, float, default: 0.0
    field :m1, float, default: 0.0
    field :m5, float, default: 0.0
    field :m9, float, default: 0.0
    field :m13, float, default: 0.0
    field :m2, float, default: 0.0
    field :m6, float, default: 0.0
    field :m10, float, default: 0.0
    field :m14, float, default: 0.0
    field :m3, float, default: 0.0
    field :m7, float, default: 0.0
    field :m11, float, default: 0.0
    field :m15, float, default: 0.0
  end

  typedstruct [module: Color, enforce: true] do
    field :r, non_neg_integer
    field :g, non_neg_integer
    field :b, non_neg_integer
    field :a, non_neg_integer
  end

  typedstruct [module: Rectangle, enforce: true] do
    field :x, float
    field :y, float
    field :width, float
    field :height, float
  end

  typedstruct [module: Image, enforce: true] do
    field :data, any # ! Potentially fucky wucky. Is a `void *`
    field :width, integer
    field :height, integer
    field :mipmaps, integer
    field :format, integer
  end

  typedstruct [module: Texture, enforce: true] do
    field :id, non_neg_integer
    field :width, integer
    field :height, integer
    field :mipmaps, integer
    field :format, integer
  end
  alias Texture, as: Texture2D
  alias Texture, as: TextureCubemap

  typedstruct [module: RenderTexture, enforce: true] do
    field :id, non_neg_integer
    field :texture, Texture.t
    field :depth, Texture.t
  end
  alias RenderTexture, as: RenderTexture2D

  typedstruct [module: NPatchInfo, enforce: true] do
    field :source, Rectangle.t
    field :left, integer
    field :top, integer
    field :right, integer
    field :bottom, integer
    field :layout, integer
  end

  typedstruct [module: GlyphInfo, enforce: true] do
    field :value, integer
    field :offsetX, integer
    field :offsetY, integer
    field :advanceX, integer
    field :image, Image.t
  end

  typedstruct [module: Font, enforce: true] do
    field :baseSize, integer
    field :glyphCount, integer
    field :glyphPadding, integer
    field :texture, Texture2D.t
    field :recs, [Rectangle.t]
    field :glyphs, [GlyphInfo.t]
  end

  typedstruct [module: Camera3D, enforce: true] do
    field :position, Vector3.t
    field :target, Vector3.t
    field :up, Vector3.t
    field :fovy, float
    field :projection, integer
  end
  alias Camera3D, as: Camera

  typedstruct [module: Camera2D, enforce: true] do
    field :offset, Vector2.t
    field :target, Vector2.t
    field :rotation, float
    field :zoom, float
  end

  typedstruct [module: Mesh] do
    field :vertextCount, integer
    field :triangleCount, integer

    field :vertices, [float]
    field :texcoords, [float]
    field :texcoords2, [float]
    field :normals, [float]
    field :tangents, [float]
    field :colors, String.t
    field :indices, [integer]

    field :animVertices, [float], enforce: false
    field :animNormals, [float], enforce: false
    field :boneIds, String.t, enforce: false
    field :boneWeights, [float], enforce: false
    field :vaoId, non_neg_integer, enforce: false
    field :vboId, [non_neg_integer], enforce: false
  end

  typedstruct [module: Shader, enforce: true] do
    field :id, non_neg_integer
    field :locs, [integer]
  end

  typedstruct [module: MaterialMap, enforce: true] do
    field :texture, Texture2D.t
    field :color, Color.t
    field :value, float
  end

  typedstruct [module: Material, enforce: true] do
    field :shader, Shader.t
    field :maps, [MaterialMap.t]
    field :params, [float], enforce: false # [4]
  end

  typedstruct [module: Transform, enforce: true] do
    field :translation, Vector3.t
    field :rotation, Quaternion.t
    field :scale, Vector3.t
  end

  typedstruct [module: BoneInfo, enforce: true] do
    field :name, [non_neg_integer]
    field :parent, integer
  end

  typedstruct [module: Model, enforce: true] do
    field :transform, Matrix.t
    field :meshCount, integer
    field :materialCount, integer
    field :meshes, [Mesh.t], enforce: false
    field :materials, [Material.t], enforce: false
    field :meshMaterial, [integer], enforce: false
    field :boneCount, integer
    field :bones, [BoneInfo.t], enforce: false
    field :bindPose, [Transform.t], enforce: false
  end

  typedstruct [module: ModelAnimation, enforce: true] do
    field :boneCount, integer
    field :frameCount, integer
    field :bones, [BoneInfo.t]
    field :framePoses, [[Transform.t]]
    field :name, String.t
  end

  typedstruct [module: Ray, enforce: true] do
    field :position, Vector3.t
    field :direction, Vector3.t
  end

  typedstruct [module: RayCollision, enforce: true] do
    field :hit, boolean
    field :distance, float
    field :point, Vector3.t
    field :normal, Vector3.t
  end

  typedstruct [module: BoundingBox, enforce: true] do
    field :min, Vector3
    field :max, Vector3
  end

  # typedstruct [module: Wave, enforce: true] do
  #   field :frameCount, non_neg_integer
  #   field :sampleRate, non_neg_integer
  #   field :sampleSize, non_neg_integer
  #   field :data, any # ! Potentially fucky wucky. Is a `void *`.
  # end



  # // Opaque structs declaration
  # // NOTE: Actual structs are defined internally in raudio module
  # typedef struct rAudioBuffer rAudioBuffer;
  # typedef struct rAudioProcessor rAudioProcessor;

  # // AudioStream, custom audio stream
  # typedef struct AudioStream {
  #     rAudioBuffer *buffer;       // Pointer to internal data used by the audio system
  #     rAudioProcessor *processor; // Pointer to internal data processor, useful for audio effects

  #     unsigned int sampleRate;    // Frequency (samples per second)
  #     unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
  #     unsigned int channels;      // Number of channels (1-mono, 2-stereo, ...)
  # } AudioStream;

  # // Sound
  # typedef struct Sound {
  #     AudioStream stream;         // Audio stream
  #     unsigned int frameCount;    // Total number of frames (considering channels)
  # } Sound;

  # // Music, audio stream, anything longer than ~10 seconds should be streamed
  # typedef struct Music {
  #     AudioStream stream;         // Audio stream
  #     unsigned int frameCount;    // Total number of frames (considering channels)
  #     bool looping;               // Music looping enable

  #     int ctxType;                // Type of music context (audio filetype)
  #     void *ctxData;              // Audio context data, depends on type
  # } Music;

  typedstruct [module: VrDeviceInfo, enforce: true] do
    field :hResolution, integer
    field :vResolution, integer
    field :hScreenSize, float
    field :vScreenSize, float
    field :vScreenCenter, float
    field :eyeToScreenDistance, float
    field :lensSeparationDistance, float
    field :interpupillaryDistance, float
    field :lensDistortionValues, [float] # [4]
    field :chromaAbCorrection, [float]# [4]
  end

  typedstruct [module: VrStereoConfig, enforce: true] do
    field :projection, [Matrix.t] # [2]
    field :viewOffset, [Matrix.t] # [2]
    field :leftLensCenter, [float] # [2]
    field :rightLensCenter, [float] # [2]
    field :leftScreenCenter, [float] # [2]
    field :rightScreenCenter, [float] # [2]
    field :scale, [float] # [2]
    field :scaleIn, [float] # [2]
  end

  typedstruct [module: FilePathList, enforce: true] do
    field :capacity, non_neg_integer
    field :count, non_neg_integer
    field :paths, [String.t], enforce: false
  end

  typedstruct [module: AutomationEvent, enforce: true] do
    field :frame, non_neg_integer
    field :type, non_neg_integer
    field :params, [integer], enforce: false # [4]
  end

  typedstruct [module: AutomationEventList, enforce: true] do
    field :capacity, non_neg_integer
    field :count, non_neg_integer
    field :events, [AutomationEvent.t]
  end

end
