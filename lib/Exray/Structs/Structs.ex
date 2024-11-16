defmodule Exray.Structs do
  @moduledoc false

  use TypedStruct

  typedstruct [module: Vector2] do #, enforce: true
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
  # alias Vector4, as: Quaternion

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

  typedstruct [module: Color] do #, enforce: true
    field :r, non_neg_integer
    field :g, non_neg_integer
    field :b, non_neg_integer
    field :a, non_neg_integer
  end

  typedstruct [module: Rectangle] do #, enforce: true
    field :x, float
    field :y, float
    field :width, float
    field :height, float
  end

  typedstruct [module: Image] do #, enforce: true
    field :data, [any] # ! Potentially fucky wucky. Is a `void *`
    field :width, integer
    field :height, integer
    field :mipmaps, integer
    field :format, integer
  end

  typedstruct [module: Texture] do #, enforce: true
    field :id, non_neg_integer
    field :width, integer
    field :height, integer
    field :mipmaps, integer
    field :format, integer
  end
  # alias Texture, as: Texture2D
  # alias Texture, as: TextureCubemap

  typedstruct [module: RenderTexture] do #, enforce: true
    field :id, non_neg_integer
    field :texture, Texture.t
    field :depth, Texture.t
  end
  # alias RenderTexture, as: RenderTexture2D

  typedstruct [module: NPatchInfo] do #, enforce: true
    field :source, Rectangle.t
    field :left, integer
    field :top, integer
    field :right, integer
    field :bottom, integer
    field :layout, integer
  end

  typedstruct [module: GlyphInfo] do #, enforce: true
    field :value, integer
    field :offsetX, integer
    field :offsetY, integer
    field :advanceX, integer
    field :image, Image.t
  end

  typedstruct [module: Font] do #, enforce: true
    field :baseSize, integer
    field :glyphCount, integer
    field :glyphPadding, integer
    field :texture, Texture.t
    field :recs, [Rectangle.t]
    field :glyphs, [GlyphInfo.t]
  end

  typedstruct [module: Camera3D] do #, enforce: true
    field :position, Vector3.t
    field :target, Vector3.t
    field :up, Vector3.t
    field :fovy, float
    field :projection, integer
  end
  # alias Camera3D, as: Camera

  typedstruct [module: Camera2D] do #, enforce: true
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

  typedstruct [module: Shader] do #, enforce: true
    field :id, non_neg_integer
    field :locs, [integer]
  end

  typedstruct [module: MaterialMap] do #, enforce: true
    field :texture, Texture.t
    field :color, Color.t
    field :value, float
  end

  typedstruct [module: Material] do #, enforce: true
    field :shader, Shader.t
    field :maps, [MaterialMap.t]
    field :params, [float], enforce: false # [4]
  end

  typedstruct [module: Transform] do #, enforce: true
    field :translation, Vector3.t
    field :rotation, Quaternion.t
    field :scale, Vector3.t
  end

  typedstruct [module: BoneInfo] do #, enforce: true
    field :name, [non_neg_integer]
    field :parent, integer
  end

  typedstruct [module: Model] do #, enforce: true
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

  typedstruct [module: ModelAnimation] do #, enforce: true
    field :boneCount, integer
    field :frameCount, integer
    field :bones, [BoneInfo.t]
    field :framePoses, [[Transform.t]]
    field :name, String.t
  end

  typedstruct [module: Ray] do #, enforce: true
    field :position, Vector3.t
    field :direction, Vector3.t
  end

  typedstruct [module: RayCollision] do #, enforce: true
    field :hit, boolean
    field :distance, float
    field :point, Vector3.t
    field :normal, Vector3.t
  end

  typedstruct [module: BoundingBox] do #, enforce: true
    field :min, Vector3
    field :max, Vector3
  end

  # typedstruct [module: Wave] do #, enforce: true
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

  typedstruct [module: VrDeviceInfo] do #, enforce: true
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

  typedstruct [module: VrStereoConfig] do #, enforce: true
    field :projection, [Matrix.t] # [2]
    field :viewOffset, [Matrix.t] # [2]
    field :leftLensCenter, [float] # [2]
    field :rightLensCenter, [float] # [2]
    field :leftScreenCenter, [float] # [2]
    field :rightScreenCenter, [float] # [2]
    field :scale, [float] # [2]
    field :scaleIn, [float] # [2]
  end

  typedstruct [module: FilePathList] do #, enforce: true
    field :capacity, non_neg_integer
    field :count, non_neg_integer
    field :paths, [String.t], enforce: false
  end

  typedstruct [module: AutomationEvent] do #, enforce: true
    field :frame, non_neg_integer
    field :type, non_neg_integer
    field :params, [integer], enforce: false # [4]
  end

  typedstruct [module: AutomationEventList] do #, enforce: true
    field :capacity, non_neg_integer
    field :count, non_neg_integer
    field :events, [AutomationEvent.t]
  end

end
