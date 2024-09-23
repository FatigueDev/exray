defmodule Exray.Core.Structs do
  @moduledoc false

  defmodule Vector2 do
    defstruct [:x, :y]
    @enforce_keys [:x, :y]
    @type t :: %__MODULE__{x: float, y: float}
  end

  defmodule Vector3 do
    defstruct [:x, :y, :z]
    @enforce_keys [:x, :y, :z]
    @type t :: %__MODULE__{x: float, y: float, z: float}
  end

  defmodule Vector4 do
    defstruct [:x, :y, :z, :w]
    @enforce_keys [:x, :y, :z, :w]
    @type t :: %__MODULE__{x: float, y: float, z: float, w: float}
  end
  alias Vector4, as: Quaternion

  defmodule Matrix do
    defstruct [:m0, :m4, :m8, :m12, :m1, :m5, :m9, :m13, :m2, :m6, :m10, :m14, :m3, :m7, :m11, :m15]
    @enforce_keys [:m0, :m4, :m8, :m12, :m1, :m5, :m9, :m13, :m2, :m6, :m10, :m14, :m3, :m7, :m11, :m15]
    @type t :: %__MODULE__{
      m0: float, m4: float, m8: float, m12: float,
      m1: float, m5: float, m9: float, m13: float,
      m2: float, m6: float, m10: float, m14: float,
      m3: float, m7: float, m11: float, m15: float
    }
  end

  defmodule Color do
    defstruct [:r, :g, :b, :a]
    @enforce_keys [:r, :g, :b, :a]
    @type t :: %__MODULE__{
      r: non_neg_integer,
      g: non_neg_integer,
      b: non_neg_integer,
      a: non_neg_integer,
    }
  end

  defmodule Rectangle do
    defstruct [:x, :y, :width, :height]
    @enforce_keys [:x, :y, :width, :height]
    @type t :: %__MODULE__{x: float, y: float, width: float, height: float}
  end

  defmodule Image do
    defstruct [:data, :width, :height, :mipmaps, :format]
    @enforce_keys [:data, :width, :height, :mipmaps, :format]
    @type t :: %__MODULE__{
      data: any,
      width: integer,
      height: integer,
      mipmaps: integer,
      format: integer
    }
    # // Image, pixel data stored in CPU memory (RAM)
    # typedef struct Image {
    #     void *data;             // Image raw data
    #     int width;              // Image base width
    #     int height;             // Image base height
    #     int mipmaps;            // Mipmap levels, 1 by default
    #     int format;             // Data format (PixelFormat type)
    # } Image;
  end

  defmodule Texture do
    defstruct [:id, :width, :height, :mipmaps, :format]
    @enforce_keys [:id, :width, :height, :mipmaps, :format]
    @type t :: %__MODULE__{
      id: non_neg_integer,
      width: integer,
      height: integer,
      mipmaps: integer,
      format: integer
    }
    # // Texture, tex data stored in GPU memory (VRAM)
    # typedef struct Texture {
    #     unsigned int id;        // OpenGL texture id
    #     int width;              // Texture base width
    #     int height;             // Texture base height
    #     int mipmaps;            // Mipmap levels, 1 by default
    #     int format;             // Data format (PixelFormat type)
    # } Texture;
  end
  alias Texture, as: Texture2D
  alias Texture, as: TextureCubemap

  defmodule RenderTexture do
    defstruct [:id, :texture, :depth]
    @enforce_keys [:id, :texture, :depth]
    @type t :: %__MODULE__{
      id: non_neg_integer,
      texture: Texture.t,
      depth: Texture.t
    }
  end
  alias RenderTexture, as: RenderTexture2D

#TODO: THE REST

  # // NPatchInfo, n-patch layout info
  # typedef struct NPatchInfo {
  #     Rectangle source;       // Texture source rectangle
  #     int left;               // Left border offset
  #     int top;                // Top border offset
  #     int right;              // Right border offset
  #     int bottom;             // Bottom border offset
  #     int layout;             // Layout of the n-patch: 3x3, 1x3 or 3x1
  # } NPatchInfo;

  # // GlyphInfo, font characters glyphs info
  # typedef struct GlyphInfo {
  #     int value;              // Character value (Unicode)
  #     int offsetX;            // Character offset X when drawing
  #     int offsetY;            // Character offset Y when drawing
  #     int advanceX;           // Character advance position X
  #     Image image;            // Character image data
  # } GlyphInfo;

  # // Font, font texture and GlyphInfo array data
  # typedef struct Font {
  #     int baseSize;           // Base size (default chars height)
  #     int glyphCount;         // Number of glyph characters
  #     int glyphPadding;       // Padding around the glyph characters
  #     Texture2D texture;      // Texture atlas containing the glyphs
  #     Rectangle *recs;        // Rectangles in texture for the glyphs
  #     GlyphInfo *glyphs;      // Glyphs info data
  # } Font;

  # // Camera, defines position/orientation in 3d space
  # typedef struct Camera3D {
  #     Vector3 position;       // Camera position
  #     Vector3 target;         // Camera target it looks-at
  #     Vector3 up;             // Camera up vector (rotation over its axis)
  #     float fovy;             // Camera field-of-view aperture in Y (degrees) in perspective, used as near plane width in orthographic
  #     int projection;         // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
  # } Camera3D;

  # typedef Camera3D Camera;    // Camera type fallback, defaults to Camera3D

  # // Camera2D, defines position/orientation in 2d space
  # typedef struct Camera2D {
  #     Vector2 offset;         // Camera offset (displacement from target)
  #     Vector2 target;         // Camera target (rotation and zoom origin)
  #     float rotation;         // Camera rotation in degrees
  #     float zoom;             // Camera zoom (scaling), should be 1.0f by default
  # } Camera2D;

  # // Mesh, vertex data and vao/vbo
  # typedef struct Mesh {
  #     int vertexCount;        // Number of vertices stored in arrays
  #     int triangleCount;      // Number of triangles stored (indexed or not)

  #     // Vertex attributes data
  #     float *vertices;        // Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
  #     float *texcoords;       // Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
  #     float *texcoords2;      // Vertex texture second coordinates (UV - 2 components per vertex) (shader-location = 5)
  #     float *normals;         // Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
  #     float *tangents;        // Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
  #     unsigned char *colors;      // Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
  #     unsigned short *indices;    // Vertex indices (in case vertex data comes indexed)

  #     // Animation vertex data
  #     float *animVertices;    // Animated vertex positions (after bones transformations)
  #     float *animNormals;     // Animated normals (after bones transformations)
  #     unsigned char *boneIds; // Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
  #     float *boneWeights;     // Vertex bone weight, up to 4 bones influence by vertex (skinning)

  #     // OpenGL identifiers
  #     unsigned int vaoId;     // OpenGL Vertex Array Object id
  #     unsigned int *vboId;    // OpenGL Vertex Buffer Objects id (default vertex data)
  # } Mesh;

  # // Shader
  # typedef struct Shader {
  #     unsigned int id;        // Shader program id
  #     int *locs;              // Shader locations array (RL_MAX_SHADER_LOCATIONS)
  # } Shader;

  # // MaterialMap
  # typedef struct MaterialMap {
  #     Texture2D texture;      // Material map texture
  #     Color color;            // Material map color
  #     float value;            // Material map value
  # } MaterialMap;

  # // Material, includes shader and maps
  # typedef struct Material {
  #     Shader shader;          // Material shader
  #     MaterialMap *maps;      // Material maps array (MAX_MATERIAL_MAPS)
  #     float params[4];        // Material generic parameters (if required)
  # } Material;

  # // Transform, vertex transformation data
  # typedef struct Transform {
  #     Vector3 translation;    // Translation
  #     Quaternion rotation;    // Rotation
  #     Vector3 scale;          // Scale
  # } Transform;

  # // Bone, skeletal animation bone
  # typedef struct BoneInfo {
  #     char name[32];          // Bone name
  #     int parent;             // Bone parent
  # } BoneInfo;

  # // Model, meshes, materials and animation data
  # typedef struct Model {
  #     Matrix transform;       // Local transform matrix

  #     int meshCount;          // Number of meshes
  #     int materialCount;      // Number of materials
  #     Mesh *meshes;           // Meshes array
  #     Material *materials;    // Materials array
  #     int *meshMaterial;      // Mesh material number

  #     // Animation data
  #     int boneCount;          // Number of bones
  #     BoneInfo *bones;        // Bones information (skeleton)
  #     Transform *bindPose;    // Bones base transformation (pose)
  # } Model;

  # // ModelAnimation
  # typedef struct ModelAnimation {
  #     int boneCount;          // Number of bones
  #     int frameCount;         // Number of animation frames
  #     BoneInfo *bones;        // Bones information (skeleton)
  #     Transform **framePoses; // Poses array by frame
  #     char name[32];          // Animation name
  # } ModelAnimation;

  # // Ray, ray for raycasting
  # typedef struct Ray {
  #     Vector3 position;       // Ray position (origin)
  #     Vector3 direction;      // Ray direction
  # } Ray;

  # // RayCollision, ray hit information
  # typedef struct RayCollision {
  #     bool hit;               // Did the ray hit something?
  #     float distance;         // Distance to the nearest hit
  #     Vector3 point;          // Point of the nearest hit
  #     Vector3 normal;         // Surface normal of hit
  # } RayCollision;

  # // BoundingBox
  # typedef struct BoundingBox {
  #     Vector3 min;            // Minimum vertex box-corner
  #     Vector3 max;            // Maximum vertex box-corner
  # } BoundingBox;

  # // Wave, audio wave data
  # typedef struct Wave {
  #     unsigned int frameCount;    // Total number of frames (considering channels)
  #     unsigned int sampleRate;    // Frequency (samples per second)
  #     unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
  #     unsigned int channels;      // Number of channels (1-mono, 2-stereo, ...)
  #     void *data;                 // Buffer data pointer
  # } Wave;

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

  # // VrDeviceInfo, Head-Mounted-Display device parameters
  # typedef struct VrDeviceInfo {
  #     int hResolution;                // Horizontal resolution in pixels
  #     int vResolution;                // Vertical resolution in pixels
  #     float hScreenSize;              // Horizontal size in meters
  #     float vScreenSize;              // Vertical size in meters
  #     float vScreenCenter;            // Screen center in meters
  #     float eyeToScreenDistance;      // Distance between eye and display in meters
  #     float lensSeparationDistance;   // Lens separation distance in meters
  #     float interpupillaryDistance;   // IPD (distance between pupils) in meters
  #     float lensDistortionValues[4];  // Lens distortion constant parameters
  #     float chromaAbCorrection[4];    // Chromatic aberration correction parameters
  # } VrDeviceInfo;

  # // VrStereoConfig, VR stereo rendering configuration for simulator
  # typedef struct VrStereoConfig {
  #     Matrix projection[2];           // VR projection matrices (per eye)
  #     Matrix viewOffset[2];           // VR view offset matrices (per eye)
  #     float leftLensCenter[2];        // VR left lens center
  #     float rightLensCenter[2];       // VR right lens center
  #     float leftScreenCenter[2];      // VR left screen center
  #     float rightScreenCenter[2];     // VR right screen center
  #     float scale[2];                 // VR distortion scale
  #     float scaleIn[2];               // VR distortion scale in
  # } VrStereoConfig;

  # // File path list
  # typedef struct FilePathList {
  #     unsigned int capacity;          // Filepaths max entries
  #     unsigned int count;             // Filepaths entries count
  #     char **paths;                   // Filepaths entries
  # } FilePathList;

  # // Automation event
  # typedef struct AutomationEvent {
  #     unsigned int frame;             // Event frame
  #     unsigned int type;              // Event type (AutomationEventType)
  #     int params[4];                  // Event parameters (if required)
  # } AutomationEvent;

  # // Automation event list
  # typedef struct AutomationEventList {
  #     unsigned int capacity;          // Events max entries (MAX_AUTOMATION_EVENTS)
  #     unsigned int count;             // Events entries count
  #     AutomationEvent *events;        // Events entries
  # } AutomationEventList;

end
