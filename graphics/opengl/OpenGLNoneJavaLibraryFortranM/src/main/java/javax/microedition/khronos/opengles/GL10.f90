! Generated Code Do Not Modify
! package javax.microedition.khronos.opengles
module GL10_m
  use JR_m
  use Buffer_m
  use FloatBuffer_m
  use IntBuffer_m
  implicit none

  type, extends(GL) :: GL10
  contains
    procedure :: jm_glActiveTexture_1 => GL10_jm_glActiveTexture_1
    procedure :: jm_glAlphaFunc_2 => GL10_jm_glAlphaFunc_2
    procedure :: jm_glBindTexture_2 => GL10_jm_glBindTexture_2
    procedure :: jm_glBlendFunc_2 => GL10_jm_glBlendFunc_2
    procedure :: jm_glClear_1 => GL10_jm_glClear_1
    procedure :: jm_glClearColor_4 => GL10_jm_glClearColor_4
    procedure :: jm_glClearDepthf_1 => GL10_jm_glClearDepthf_1
    procedure :: jm_glClearStencil_1 => GL10_jm_glClearStencil_1
    procedure :: jm_glClientActiveTexture_1 => GL10_jm_glClientActiveTexture_1
    procedure :: jm_glColor4f_4 => GL10_jm_glColor4f_4
    procedure :: jm_glColorMask_4 => GL10_jm_glColorMask_4
    procedure :: jm_glColorPointer_4 => GL10_jm_glColorPointer_4
    procedure :: jm_glCompressedTexImage2D_8 => GL10_jm_glCompressedTexImage2D_8
    procedure :: jm_glCompressedTexSubImage2D_9 => GL10_jm_glCompressedTexSubImage2D_9
    procedure :: jm_glCopyTexImage2D_8 => GL10_jm_glCopyTexImage2D_8
    procedure :: jm_glCopyTexSubImage2D_8 => GL10_jm_glCopyTexSubImage2D_8
    procedure :: jm_glCullFace_1 => GL10_jm_glCullFace_1
    procedure :: jm_glDeleteTextures_3 => GL10_jm_glDeleteTextures_3
    procedure :: jm_glDeleteTextures_2 => GL10_jm_glDeleteTextures_2
    procedure :: jm_glDepthFunc_1 => GL10_jm_glDepthFunc_1
    procedure :: jm_glDepthMask_1 => GL10_jm_glDepthMask_1
    procedure :: jm_glDepthRangef_2 => GL10_jm_glDepthRangef_2
    procedure :: jm_glDisable_1 => GL10_jm_glDisable_1
    procedure :: jm_glDisableClientState_1 => GL10_jm_glDisableClientState_1
    procedure :: jm_glDrawArrays_3 => GL10_jm_glDrawArrays_3
    procedure :: jm_glDrawElements_4 => GL10_jm_glDrawElements_4
    procedure :: jm_glEnable_1 => GL10_jm_glEnable_1
    procedure :: jm_glEnableClientState_1 => GL10_jm_glEnableClientState_1
    procedure :: jm_glFinish_0 => GL10_jm_glFinish_0
    procedure :: jm_glFlush_0 => GL10_jm_glFlush_0
    procedure :: jm_glFogf_2 => GL10_jm_glFogf_2
    procedure :: jm_glFogfv_3 => GL10_jm_glFogfv_3
    procedure :: jm_glFogfv_2 => GL10_jm_glFogfv_2
    procedure :: jm_glFrontFace_1 => GL10_jm_glFrontFace_1
    procedure :: jm_glFrustumf_6 => GL10_jm_glFrustumf_6
    procedure :: jm_glGenTextures_3 => GL10_jm_glGenTextures_3
    procedure :: jm_glGenTextures_2 => GL10_jm_glGenTextures_2
    procedure :: jm_glGetError_0 => GL10_jm_glGetError_0
    procedure :: jm_glGetIntegerv_3 => GL10_jm_glGetIntegerv_3
    procedure :: jm_glGetIntegerv_2 => GL10_jm_glGetIntegerv_2
    procedure :: jm_glGetString_1 => GL10_jm_glGetString_1
    procedure :: jm_glHint_2 => GL10_jm_glHint_2
    procedure :: jm_glLightModelf_2 => GL10_jm_glLightModelf_2
    procedure :: jm_glLightModelfv_3 => GL10_jm_glLightModelfv_3
    procedure :: jm_glLightModelfv_2 => GL10_jm_glLightModelfv_2
    procedure :: jm_glLightf_3 => GL10_jm_glLightf_3
    procedure :: jm_glLightfv_4 => GL10_jm_glLightfv_4
    procedure :: jm_glLightfv_3 => GL10_jm_glLightfv_3
    procedure :: jm_glLineWidth_1 => GL10_jm_glLineWidth_1
    procedure :: jm_glLoadIdentity_0 => GL10_jm_glLoadIdentity_0
    procedure :: jm_glLoadMatrixf_2 => GL10_jm_glLoadMatrixf_2
    procedure :: jm_glLoadMatrixf_1 => GL10_jm_glLoadMatrixf_1
    procedure :: jm_glLogicOp_1 => GL10_jm_glLogicOp_1
    procedure :: jm_glMaterialf_3 => GL10_jm_glMaterialf_3
    procedure :: jm_glMaterialfv_4 => GL10_jm_glMaterialfv_4
    procedure :: jm_glMaterialfv_3 => GL10_jm_glMaterialfv_3
    procedure :: jm_glMatrixMode_1 => GL10_jm_glMatrixMode_1
    procedure :: jm_glMultMatrixf_2 => GL10_jm_glMultMatrixf_2
    procedure :: jm_glMultMatrixf_1 => GL10_jm_glMultMatrixf_1
    procedure :: jm_glMultiTexCoord4f_5 => GL10_jm_glMultiTexCoord4f_5
    procedure :: jm_glNormal3f_3 => GL10_jm_glNormal3f_3
    procedure :: jm_glNormalPointer_3 => GL10_jm_glNormalPointer_3
    procedure :: jm_glOrthof_6 => GL10_jm_glOrthof_6
    procedure :: jm_glPixelStorei_2 => GL10_jm_glPixelStorei_2
    procedure :: jm_glPointSize_1 => GL10_jm_glPointSize_1
    procedure :: jm_glPolygonOffset_2 => GL10_jm_glPolygonOffset_2
    procedure :: jm_glPopMatrix_0 => GL10_jm_glPopMatrix_0
    procedure :: jm_glPushMatrix_0 => GL10_jm_glPushMatrix_0
    procedure :: jm_glReadPixels_7 => GL10_jm_glReadPixels_7
    procedure :: jm_glRotatef_4 => GL10_jm_glRotatef_4
    procedure :: jm_glRotatex_4 => GL10_jm_glRotatex_4
    procedure :: jm_glSampleCoverage_2 => GL10_jm_glSampleCoverage_2
    procedure :: jm_glScalef_3 => GL10_jm_glScalef_3
    procedure :: jm_glScalex_3 => GL10_jm_glScalex_3
    procedure :: jm_glScissor_4 => GL10_jm_glScissor_4
    procedure :: jm_glShadeModel_1 => GL10_jm_glShadeModel_1
    procedure :: jm_glStencilFunc_3 => GL10_jm_glStencilFunc_3
    procedure :: jm_glStencilMask_1 => GL10_jm_glStencilMask_1
    procedure :: jm_glStencilOp_3 => GL10_jm_glStencilOp_3
    procedure :: jm_glTexCoordPointer_4 => GL10_jm_glTexCoordPointer_4
    procedure :: jm_glTexEnvf_3 => GL10_jm_glTexEnvf_3
    procedure :: jm_glTexEnvfv_4 => GL10_jm_glTexEnvfv_4
    procedure :: jm_glTexEnvfv_3 => GL10_jm_glTexEnvfv_3
    procedure :: jm_glTexImage2D_9 => GL10_jm_glTexImage2D_9
    procedure :: jm_glTexParameterf_3 => GL10_jm_glTexParameterf_3
    procedure :: jm_glTexParameteri_3 => GL10_jm_glTexParameteri_3
    procedure :: jm_glTexSubImage2D_9 => GL10_jm_glTexSubImage2D_9
    procedure :: jm_glTranslatef_3 => GL10_jm_glTranslatef_3
    procedure :: jm_glVertexPointer_4 => GL10_jm_glVertexPointer_4
    procedure :: jm_glViewport_4 => GL10_jm_glViewport_4
    procedure :: jm_glBegin_1 => GL10_jm_glBegin_1
    procedure :: jm_glEnd_0 => GL10_jm_glEnd_0
    procedure :: jm_glVertex3f_3 => GL10_jm_glVertex3f_3
    procedure :: jm_glPolygonMode_2 => GL10_jm_glPolygonMode_2
  end type

  integer(4), save :: GL10_jcell_GL_ADD
  logical, save :: GL10_jset_GL_ADD = .false.
  integer(4), save :: GL10_jcell_GL_ALIASED_LINE_WIDTH_RANGE
  logical, save :: GL10_jset_GL_ALIASED_LINE_WIDTH_RANGE = .false.
  integer(4), save :: GL10_jcell_GL_ALIASED_POINT_SIZE_RANGE
  logical, save :: GL10_jset_GL_ALIASED_POINT_SIZE_RANGE = .false.
  integer(4), save :: GL10_jcell_GL_ALPHA
  logical, save :: GL10_jset_GL_ALPHA = .false.
  integer(4), save :: GL10_jcell_GL_ALPHA_BITS
  logical, save :: GL10_jset_GL_ALPHA_BITS = .false.
  integer(4), save :: GL10_jcell_GL_ALPHA_TEST
  logical, save :: GL10_jset_GL_ALPHA_TEST = .false.
  integer(4), save :: GL10_jcell_GL_ALWAYS
  logical, save :: GL10_jset_GL_ALWAYS = .false.
  integer(4), save :: GL10_jcell_GL_AMBIENT
  logical, save :: GL10_jset_GL_AMBIENT = .false.
  integer(4), save :: GL10_jcell_GL_AMBIENT_AND_DIFFUSE
  logical, save :: GL10_jset_GL_AMBIENT_AND_DIFFUSE = .false.
  integer(4), save :: GL10_jcell_GL_AND
  logical, save :: GL10_jset_GL_AND = .false.
  integer(4), save :: GL10_jcell_GL_AND_INVERTED
  logical, save :: GL10_jset_GL_AND_INVERTED = .false.
  integer(4), save :: GL10_jcell_GL_AND_REVERSE
  logical, save :: GL10_jset_GL_AND_REVERSE = .false.
  integer(4), save :: GL10_jcell_GL_BACK
  logical, save :: GL10_jset_GL_BACK = .false.
  integer(4), save :: GL10_jcell_GL_BLEND
  logical, save :: GL10_jset_GL_BLEND = .false.
  integer(4), save :: GL10_jcell_GL_BLUE_BITS
  logical, save :: GL10_jset_GL_BLUE_BITS = .false.
  integer(4), save :: GL10_jcell_GL_BYTE
  logical, save :: GL10_jset_GL_BYTE = .false.
  integer(4), save :: GL10_jcell_GL_CCW
  logical, save :: GL10_jset_GL_CCW = .false.
  integer(4), save :: GL10_jcell_GL_CLAMP_TO_EDGE
  logical, save :: GL10_jset_GL_CLAMP_TO_EDGE = .false.
  integer(4), save :: GL10_jcell_GL_CLEAR
  logical, save :: GL10_jset_GL_CLEAR = .false.
  integer(4), save :: GL10_jcell_GL_COLOR_ARRAY
  logical, save :: GL10_jset_GL_COLOR_ARRAY = .false.
  integer(4), save :: GL10_jcell_GL_COLOR_BUFFER_BIT
  logical, save :: GL10_jset_GL_COLOR_BUFFER_BIT = .false.
  integer(4), save :: GL10_jcell_GL_COLOR_LOGIC_OP
  logical, save :: GL10_jset_GL_COLOR_LOGIC_OP = .false.
  integer(4), save :: GL10_jcell_GL_COLOR_MATERIAL
  logical, save :: GL10_jset_GL_COLOR_MATERIAL = .false.
  integer(4), save :: GL10_jcell_GL_COMPRESSED_TEXTURE_FORMATS
  logical, save :: GL10_jset_GL_COMPRESSED_TEXTURE_FORMATS = .false.
  integer(4), save :: GL10_jcell_GL_CONSTANT_ATTENUATION
  logical, save :: GL10_jset_GL_CONSTANT_ATTENUATION = .false.
  integer(4), save :: GL10_jcell_GL_COPY
  logical, save :: GL10_jset_GL_COPY = .false.
  integer(4), save :: GL10_jcell_GL_COPY_INVERTED
  logical, save :: GL10_jset_GL_COPY_INVERTED = .false.
  integer(4), save :: GL10_jcell_GL_CULL_FACE
  logical, save :: GL10_jset_GL_CULL_FACE = .false.
  integer(4), save :: GL10_jcell_GL_CW
  logical, save :: GL10_jset_GL_CW = .false.
  integer(4), save :: GL10_jcell_GL_DECAL
  logical, save :: GL10_jset_GL_DECAL = .false.
  integer(4), save :: GL10_jcell_GL_DECR
  logical, save :: GL10_jset_GL_DECR = .false.
  integer(4), save :: GL10_jcell_GL_DEPTH_BITS
  logical, save :: GL10_jset_GL_DEPTH_BITS = .false.
  integer(4), save :: GL10_jcell_GL_DEPTH_BUFFER_BIT
  logical, save :: GL10_jset_GL_DEPTH_BUFFER_BIT = .false.
  integer(4), save :: GL10_jcell_GL_DEPTH_TEST
  logical, save :: GL10_jset_GL_DEPTH_TEST = .false.
  integer(4), save :: GL10_jcell_GL_DIFFUSE
  logical, save :: GL10_jset_GL_DIFFUSE = .false.
  integer(4), save :: GL10_jcell_GL_DITHER
  logical, save :: GL10_jset_GL_DITHER = .false.
  integer(4), save :: GL10_jcell_GL_DONT_CARE
  logical, save :: GL10_jset_GL_DONT_CARE = .false.
  integer(4), save :: GL10_jcell_GL_DST_ALPHA
  logical, save :: GL10_jset_GL_DST_ALPHA = .false.
  integer(4), save :: GL10_jcell_GL_DST_COLOR
  logical, save :: GL10_jset_GL_DST_COLOR = .false.
  integer(4), save :: GL10_jcell_GL_EMISSION
  logical, save :: GL10_jset_GL_EMISSION = .false.
  integer(4), save :: GL10_jcell_GL_EQUAL
  logical, save :: GL10_jset_GL_EQUAL = .false.
  integer(4), save :: GL10_jcell_GL_EQUIV
  logical, save :: GL10_jset_GL_EQUIV = .false.
  integer(4), save :: GL10_jcell_GL_EXP
  logical, save :: GL10_jset_GL_EXP = .false.
  integer(4), save :: GL10_jcell_GL_EXP2
  logical, save :: GL10_jset_GL_EXP2 = .false.
  integer(4), save :: GL10_jcell_GL_EXTENSIONS
  logical, save :: GL10_jset_GL_EXTENSIONS = .false.
  integer(4), save :: GL10_jcell_GL_FALSE
  logical, save :: GL10_jset_GL_FALSE = .false.
  integer(4), save :: GL10_jcell_GL_FASTEST
  logical, save :: GL10_jset_GL_FASTEST = .false.
  integer(4), save :: GL10_jcell_GL_FIXED
  logical, save :: GL10_jset_GL_FIXED = .false.
  integer(4), save :: GL10_jcell_GL_FLAT
  logical, save :: GL10_jset_GL_FLAT = .false.
  integer(4), save :: GL10_jcell_GL_FLOAT
  logical, save :: GL10_jset_GL_FLOAT = .false.
  integer(4), save :: GL10_jcell_GL_FOG
  logical, save :: GL10_jset_GL_FOG = .false.
  integer(4), save :: GL10_jcell_GL_FOG_COLOR
  logical, save :: GL10_jset_GL_FOG_COLOR = .false.
  integer(4), save :: GL10_jcell_GL_FOG_DENSITY
  logical, save :: GL10_jset_GL_FOG_DENSITY = .false.
  integer(4), save :: GL10_jcell_GL_FOG_END
  logical, save :: GL10_jset_GL_FOG_END = .false.
  integer(4), save :: GL10_jcell_GL_FOG_HINT
  logical, save :: GL10_jset_GL_FOG_HINT = .false.
  integer(4), save :: GL10_jcell_GL_FOG_MODE
  logical, save :: GL10_jset_GL_FOG_MODE = .false.
  integer(4), save :: GL10_jcell_GL_FOG_START
  logical, save :: GL10_jset_GL_FOG_START = .false.
  integer(4), save :: GL10_jcell_GL_FRONT
  logical, save :: GL10_jset_GL_FRONT = .false.
  integer(4), save :: GL10_jcell_GL_FRONT_AND_BACK
  logical, save :: GL10_jset_GL_FRONT_AND_BACK = .false.
  integer(4), save :: GL10_jcell_GL_GEQUAL
  logical, save :: GL10_jset_GL_GEQUAL = .false.
  integer(4), save :: GL10_jcell_GL_GREATER
  logical, save :: GL10_jset_GL_GREATER = .false.
  integer(4), save :: GL10_jcell_GL_GREEN_BITS
  logical, save :: GL10_jset_GL_GREEN_BITS = .false.
  integer(4), save :: GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES
  logical, save :: GL10_jset_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = .false.
  integer(4), save :: GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES
  logical, save :: GL10_jset_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = .false.
  integer(4), save :: GL10_jcell_GL_INCR
  logical, save :: GL10_jset_GL_INCR = .false.
  integer(4), save :: GL10_jcell_GL_INVALID_ENUM
  logical, save :: GL10_jset_GL_INVALID_ENUM = .false.
  integer(4), save :: GL10_jcell_GL_INVALID_OPERATION
  logical, save :: GL10_jset_GL_INVALID_OPERATION = .false.
  integer(4), save :: GL10_jcell_GL_INVALID_VALUE
  logical, save :: GL10_jset_GL_INVALID_VALUE = .false.
  integer(4), save :: GL10_jcell_GL_INVERT
  logical, save :: GL10_jset_GL_INVERT = .false.
  integer(4), save :: GL10_jcell_GL_KEEP
  logical, save :: GL10_jset_GL_KEEP = .false.
  integer(4), save :: GL10_jcell_GL_LEQUAL
  logical, save :: GL10_jset_GL_LEQUAL = .false.
  integer(4), save :: GL10_jcell_GL_LESS
  logical, save :: GL10_jset_GL_LESS = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT_MODEL_AMBIENT
  logical, save :: GL10_jset_GL_LIGHT_MODEL_AMBIENT = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT_MODEL_TWO_SIDE
  logical, save :: GL10_jset_GL_LIGHT_MODEL_TWO_SIDE = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT0
  logical, save :: GL10_jset_GL_LIGHT0 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT1
  logical, save :: GL10_jset_GL_LIGHT1 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT2
  logical, save :: GL10_jset_GL_LIGHT2 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT3
  logical, save :: GL10_jset_GL_LIGHT3 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT4
  logical, save :: GL10_jset_GL_LIGHT4 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT5
  logical, save :: GL10_jset_GL_LIGHT5 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT6
  logical, save :: GL10_jset_GL_LIGHT6 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHT7
  logical, save :: GL10_jset_GL_LIGHT7 = .false.
  integer(4), save :: GL10_jcell_GL_LIGHTING
  logical, save :: GL10_jset_GL_LIGHTING = .false.
  integer(4), save :: GL10_jcell_GL_LINE_LOOP
  logical, save :: GL10_jset_GL_LINE_LOOP = .false.
  integer(4), save :: GL10_jcell_GL_LINE_SMOOTH
  logical, save :: GL10_jset_GL_LINE_SMOOTH = .false.
  integer(4), save :: GL10_jcell_GL_LINE_SMOOTH_HINT
  logical, save :: GL10_jset_GL_LINE_SMOOTH_HINT = .false.
  integer(4), save :: GL10_jcell_GL_LINE_STRIP
  logical, save :: GL10_jset_GL_LINE_STRIP = .false.
  integer(4), save :: GL10_jcell_GL_LINEAR
  logical, save :: GL10_jset_GL_LINEAR = .false.
  integer(4), save :: GL10_jcell_GL_LINEAR_ATTENUATION
  logical, save :: GL10_jset_GL_LINEAR_ATTENUATION = .false.
  integer(4), save :: GL10_jcell_GL_LINEAR_MIPMAP_LINEAR
  logical, save :: GL10_jset_GL_LINEAR_MIPMAP_LINEAR = .false.
  integer(4), save :: GL10_jcell_GL_LINEAR_MIPMAP_NEAREST
  logical, save :: GL10_jset_GL_LINEAR_MIPMAP_NEAREST = .false.
  integer(4), save :: GL10_jcell_GL_LINES
  logical, save :: GL10_jset_GL_LINES = .false.
  integer(4), save :: GL10_jcell_GL_LUMINANCE
  logical, save :: GL10_jset_GL_LUMINANCE = .false.
  integer(4), save :: GL10_jcell_GL_LUMINANCE_ALPHA
  logical, save :: GL10_jset_GL_LUMINANCE_ALPHA = .false.
  integer(4), save :: GL10_jcell_GL_MAX_ELEMENTS_INDICES
  logical, save :: GL10_jset_GL_MAX_ELEMENTS_INDICES = .false.
  integer(4), save :: GL10_jcell_GL_MAX_ELEMENTS_VERTICES
  logical, save :: GL10_jset_GL_MAX_ELEMENTS_VERTICES = .false.
  integer(4), save :: GL10_jcell_GL_MAX_LIGHTS
  logical, save :: GL10_jset_GL_MAX_LIGHTS = .false.
  integer(4), save :: GL10_jcell_GL_MAX_MODELVIEW_STACK_DEPTH
  logical, save :: GL10_jset_GL_MAX_MODELVIEW_STACK_DEPTH = .false.
  integer(4), save :: GL10_jcell_GL_MAX_PROJECTION_STACK_DEPTH
  logical, save :: GL10_jset_GL_MAX_PROJECTION_STACK_DEPTH = .false.
  integer(4), save :: GL10_jcell_GL_MAX_TEXTURE_SIZE
  logical, save :: GL10_jset_GL_MAX_TEXTURE_SIZE = .false.
  integer(4), save :: GL10_jcell_GL_MAX_TEXTURE_STACK_DEPTH
  logical, save :: GL10_jset_GL_MAX_TEXTURE_STACK_DEPTH = .false.
  integer(4), save :: GL10_jcell_GL_MAX_TEXTURE_UNITS
  logical, save :: GL10_jset_GL_MAX_TEXTURE_UNITS = .false.
  integer(4), save :: GL10_jcell_GL_MAX_VIEWPORT_DIMS
  logical, save :: GL10_jset_GL_MAX_VIEWPORT_DIMS = .false.
  integer(4), save :: GL10_jcell_GL_MODELVIEW
  logical, save :: GL10_jset_GL_MODELVIEW = .false.
  integer(4), save :: GL10_jcell_GL_MODULATE
  logical, save :: GL10_jset_GL_MODULATE = .false.
  integer(4), save :: GL10_jcell_GL_MULTISAMPLE
  logical, save :: GL10_jset_GL_MULTISAMPLE = .false.
  integer(4), save :: GL10_jcell_GL_NAND
  logical, save :: GL10_jset_GL_NAND = .false.
  integer(4), save :: GL10_jcell_GL_NEAREST
  logical, save :: GL10_jset_GL_NEAREST = .false.
  integer(4), save :: GL10_jcell_GL_NEAREST_MIPMAP_LINEAR
  logical, save :: GL10_jset_GL_NEAREST_MIPMAP_LINEAR = .false.
  integer(4), save :: GL10_jcell_GL_NEAREST_MIPMAP_NEAREST
  logical, save :: GL10_jset_GL_NEAREST_MIPMAP_NEAREST = .false.
  integer(4), save :: GL10_jcell_GL_NEVER
  logical, save :: GL10_jset_GL_NEVER = .false.
  integer(4), save :: GL10_jcell_GL_NICEST
  logical, save :: GL10_jset_GL_NICEST = .false.
  integer(4), save :: GL10_jcell_GL_NO_ERROR
  logical, save :: GL10_jset_GL_NO_ERROR = .false.
  integer(4), save :: GL10_jcell_GL_NOOP
  logical, save :: GL10_jset_GL_NOOP = .false.
  integer(4), save :: GL10_jcell_GL_NOR
  logical, save :: GL10_jset_GL_NOR = .false.
  integer(4), save :: GL10_jcell_GL_NORMAL_ARRAY
  logical, save :: GL10_jset_GL_NORMAL_ARRAY = .false.
  integer(4), save :: GL10_jcell_GL_NORMALIZE
  logical, save :: GL10_jset_GL_NORMALIZE = .false.
  integer(4), save :: GL10_jcell_GL_NOTEQUAL
  logical, save :: GL10_jset_GL_NOTEQUAL = .false.
  integer(4), save :: GL10_jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS
  logical, save :: GL10_jset_GL_NUM_COMPRESSED_TEXTURE_FORMATS = .false.
  integer(4), save :: GL10_jcell_GL_ONE
  logical, save :: GL10_jset_GL_ONE = .false.
  integer(4), save :: GL10_jcell_GL_ONE_MINUS_DST_ALPHA
  logical, save :: GL10_jset_GL_ONE_MINUS_DST_ALPHA = .false.
  integer(4), save :: GL10_jcell_GL_ONE_MINUS_DST_COLOR
  logical, save :: GL10_jset_GL_ONE_MINUS_DST_COLOR = .false.
  integer(4), save :: GL10_jcell_GL_ONE_MINUS_SRC_ALPHA
  logical, save :: GL10_jset_GL_ONE_MINUS_SRC_ALPHA = .false.
  integer(4), save :: GL10_jcell_GL_ONE_MINUS_SRC_COLOR
  logical, save :: GL10_jset_GL_ONE_MINUS_SRC_COLOR = .false.
  integer(4), save :: GL10_jcell_GL_OR
  logical, save :: GL10_jset_GL_OR = .false.
  integer(4), save :: GL10_jcell_GL_OR_INVERTED
  logical, save :: GL10_jset_GL_OR_INVERTED = .false.
  integer(4), save :: GL10_jcell_GL_OR_REVERSE
  logical, save :: GL10_jset_GL_OR_REVERSE = .false.
  integer(4), save :: GL10_jcell_GL_OUT_OF_MEMORY
  logical, save :: GL10_jset_GL_OUT_OF_MEMORY = .false.
  integer(4), save :: GL10_jcell_GL_PACK_ALIGNMENT
  logical, save :: GL10_jset_GL_PACK_ALIGNMENT = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE4_R5_G6_B5_OES
  logical, save :: GL10_jset_GL_PALETTE4_R5_G6_B5_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE4_RGB5_A1_OES
  logical, save :: GL10_jset_GL_PALETTE4_RGB5_A1_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE4_RGB8_OES
  logical, save :: GL10_jset_GL_PALETTE4_RGB8_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE4_RGBA4_OES
  logical, save :: GL10_jset_GL_PALETTE4_RGBA4_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE4_RGBA8_OES
  logical, save :: GL10_jset_GL_PALETTE4_RGBA8_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE8_R5_G6_B5_OES
  logical, save :: GL10_jset_GL_PALETTE8_R5_G6_B5_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE8_RGB5_A1_OES
  logical, save :: GL10_jset_GL_PALETTE8_RGB5_A1_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE8_RGB8_OES
  logical, save :: GL10_jset_GL_PALETTE8_RGB8_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE8_RGBA4_OES
  logical, save :: GL10_jset_GL_PALETTE8_RGBA4_OES = .false.
  integer(4), save :: GL10_jcell_GL_PALETTE8_RGBA8_OES
  logical, save :: GL10_jset_GL_PALETTE8_RGBA8_OES = .false.
  integer(4), save :: GL10_jcell_GL_PERSPECTIVE_CORRECTION_HINT
  logical, save :: GL10_jset_GL_PERSPECTIVE_CORRECTION_HINT = .false.
  integer(4), save :: GL10_jcell_GL_POINT_SMOOTH
  logical, save :: GL10_jset_GL_POINT_SMOOTH = .false.
  integer(4), save :: GL10_jcell_GL_POINT_SMOOTH_HINT
  logical, save :: GL10_jset_GL_POINT_SMOOTH_HINT = .false.
  integer(4), save :: GL10_jcell_GL_POINTS
  logical, save :: GL10_jset_GL_POINTS = .false.
  integer(4), save :: GL10_jcell_GL_POINT_FADE_THRESHOLD_SIZE
  logical, save :: GL10_jset_GL_POINT_FADE_THRESHOLD_SIZE = .false.
  integer(4), save :: GL10_jcell_GL_POINT_SIZE
  logical, save :: GL10_jset_GL_POINT_SIZE = .false.
  integer(4), save :: GL10_jcell_GL_POLYGON_OFFSET_FILL
  logical, save :: GL10_jset_GL_POLYGON_OFFSET_FILL = .false.
  integer(4), save :: GL10_jcell_GL_POLYGON_SMOOTH_HINT
  logical, save :: GL10_jset_GL_POLYGON_SMOOTH_HINT = .false.
  integer(4), save :: GL10_jcell_GL_POSITION
  logical, save :: GL10_jset_GL_POSITION = .false.
  integer(4), save :: GL10_jcell_GL_PROJECTION
  logical, save :: GL10_jset_GL_PROJECTION = .false.
  integer(4), save :: GL10_jcell_GL_QUADRATIC_ATTENUATION
  logical, save :: GL10_jset_GL_QUADRATIC_ATTENUATION = .false.
  integer(4), save :: GL10_jcell_GL_RED_BITS
  logical, save :: GL10_jset_GL_RED_BITS = .false.
  integer(4), save :: GL10_jcell_GL_RENDERER
  logical, save :: GL10_jset_GL_RENDERER = .false.
  integer(4), save :: GL10_jcell_GL_REPEAT
  logical, save :: GL10_jset_GL_REPEAT = .false.
  integer(4), save :: GL10_jcell_GL_REPLACE
  logical, save :: GL10_jset_GL_REPLACE = .false.
  integer(4), save :: GL10_jcell_GL_RESCALE_NORMAL
  logical, save :: GL10_jset_GL_RESCALE_NORMAL = .false.
  integer(4), save :: GL10_jcell_GL_RGB
  logical, save :: GL10_jset_GL_RGB = .false.
  integer(4), save :: GL10_jcell_GL_RGBA
  logical, save :: GL10_jset_GL_RGBA = .false.
  integer(4), save :: GL10_jcell_GL_SAMPLE_ALPHA_TO_COVERAGE
  logical, save :: GL10_jset_GL_SAMPLE_ALPHA_TO_COVERAGE = .false.
  integer(4), save :: GL10_jcell_GL_SAMPLE_ALPHA_TO_ONE
  logical, save :: GL10_jset_GL_SAMPLE_ALPHA_TO_ONE = .false.
  integer(4), save :: GL10_jcell_GL_SAMPLE_COVERAGE
  logical, save :: GL10_jset_GL_SAMPLE_COVERAGE = .false.
  integer(4), save :: GL10_jcell_GL_SCISSOR_TEST
  logical, save :: GL10_jset_GL_SCISSOR_TEST = .false.
  integer(4), save :: GL10_jcell_GL_SET
  logical, save :: GL10_jset_GL_SET = .false.
  integer(4), save :: GL10_jcell_GL_SHININESS
  logical, save :: GL10_jset_GL_SHININESS = .false.
  integer(4), save :: GL10_jcell_GL_SHORT
  logical, save :: GL10_jset_GL_SHORT = .false.
  integer(4), save :: GL10_jcell_GL_SMOOTH
  logical, save :: GL10_jset_GL_SMOOTH = .false.
  integer(4), save :: GL10_jcell_GL_SMOOTH_LINE_WIDTH_RANGE
  logical, save :: GL10_jset_GL_SMOOTH_LINE_WIDTH_RANGE = .false.
  integer(4), save :: GL10_jcell_GL_SMOOTH_POINT_SIZE_RANGE
  logical, save :: GL10_jset_GL_SMOOTH_POINT_SIZE_RANGE = .false.
  integer(4), save :: GL10_jcell_GL_SPECULAR
  logical, save :: GL10_jset_GL_SPECULAR = .false.
  integer(4), save :: GL10_jcell_GL_SPOT_CUTOFF
  logical, save :: GL10_jset_GL_SPOT_CUTOFF = .false.
  integer(4), save :: GL10_jcell_GL_SPOT_DIRECTION
  logical, save :: GL10_jset_GL_SPOT_DIRECTION = .false.
  integer(4), save :: GL10_jcell_GL_SPOT_EXPONENT
  logical, save :: GL10_jset_GL_SPOT_EXPONENT = .false.
  integer(4), save :: GL10_jcell_GL_SRC_ALPHA
  logical, save :: GL10_jset_GL_SRC_ALPHA = .false.
  integer(4), save :: GL10_jcell_GL_SRC_ALPHA_SATURATE
  logical, save :: GL10_jset_GL_SRC_ALPHA_SATURATE = .false.
  integer(4), save :: GL10_jcell_GL_SRC_COLOR
  logical, save :: GL10_jset_GL_SRC_COLOR = .false.
  integer(4), save :: GL10_jcell_GL_STACK_OVERFLOW
  logical, save :: GL10_jset_GL_STACK_OVERFLOW = .false.
  integer(4), save :: GL10_jcell_GL_STACK_UNDERFLOW
  logical, save :: GL10_jset_GL_STACK_UNDERFLOW = .false.
  integer(4), save :: GL10_jcell_GL_STENCIL_BITS
  logical, save :: GL10_jset_GL_STENCIL_BITS = .false.
  integer(4), save :: GL10_jcell_GL_STENCIL_BUFFER_BIT
  logical, save :: GL10_jset_GL_STENCIL_BUFFER_BIT = .false.
  integer(4), save :: GL10_jcell_GL_STENCIL_TEST
  logical, save :: GL10_jset_GL_STENCIL_TEST = .false.
  integer(4), save :: GL10_jcell_GL_SUBPIXEL_BITS
  logical, save :: GL10_jset_GL_SUBPIXEL_BITS = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE
  logical, save :: GL10_jset_GL_TEXTURE = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_2D
  logical, save :: GL10_jset_GL_TEXTURE_2D = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_COORD_ARRAY
  logical, save :: GL10_jset_GL_TEXTURE_COORD_ARRAY = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_ENV
  logical, save :: GL10_jset_GL_TEXTURE_ENV = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_ENV_COLOR
  logical, save :: GL10_jset_GL_TEXTURE_ENV_COLOR = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_ENV_MODE
  logical, save :: GL10_jset_GL_TEXTURE_ENV_MODE = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_MAG_FILTER
  logical, save :: GL10_jset_GL_TEXTURE_MAG_FILTER = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_MIN_FILTER
  logical, save :: GL10_jset_GL_TEXTURE_MIN_FILTER = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_WRAP_S
  logical, save :: GL10_jset_GL_TEXTURE_WRAP_S = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE_WRAP_T
  logical, save :: GL10_jset_GL_TEXTURE_WRAP_T = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE0
  logical, save :: GL10_jset_GL_TEXTURE0 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE1
  logical, save :: GL10_jset_GL_TEXTURE1 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE2
  logical, save :: GL10_jset_GL_TEXTURE2 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE3
  logical, save :: GL10_jset_GL_TEXTURE3 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE4
  logical, save :: GL10_jset_GL_TEXTURE4 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE5
  logical, save :: GL10_jset_GL_TEXTURE5 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE6
  logical, save :: GL10_jset_GL_TEXTURE6 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE7
  logical, save :: GL10_jset_GL_TEXTURE7 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE8
  logical, save :: GL10_jset_GL_TEXTURE8 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE9
  logical, save :: GL10_jset_GL_TEXTURE9 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE10
  logical, save :: GL10_jset_GL_TEXTURE10 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE11
  logical, save :: GL10_jset_GL_TEXTURE11 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE12
  logical, save :: GL10_jset_GL_TEXTURE12 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE13
  logical, save :: GL10_jset_GL_TEXTURE13 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE14
  logical, save :: GL10_jset_GL_TEXTURE14 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE15
  logical, save :: GL10_jset_GL_TEXTURE15 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE16
  logical, save :: GL10_jset_GL_TEXTURE16 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE17
  logical, save :: GL10_jset_GL_TEXTURE17 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE18
  logical, save :: GL10_jset_GL_TEXTURE18 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE19
  logical, save :: GL10_jset_GL_TEXTURE19 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE20
  logical, save :: GL10_jset_GL_TEXTURE20 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE21
  logical, save :: GL10_jset_GL_TEXTURE21 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE22
  logical, save :: GL10_jset_GL_TEXTURE22 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE23
  logical, save :: GL10_jset_GL_TEXTURE23 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE24
  logical, save :: GL10_jset_GL_TEXTURE24 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE25
  logical, save :: GL10_jset_GL_TEXTURE25 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE26
  logical, save :: GL10_jset_GL_TEXTURE26 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE27
  logical, save :: GL10_jset_GL_TEXTURE27 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE28
  logical, save :: GL10_jset_GL_TEXTURE28 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE29
  logical, save :: GL10_jset_GL_TEXTURE29 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE30
  logical, save :: GL10_jset_GL_TEXTURE30 = .false.
  integer(4), save :: GL10_jcell_GL_TEXTURE31
  logical, save :: GL10_jset_GL_TEXTURE31 = .false.
  integer(4), save :: GL10_jcell_GL_TRIANGLE_FAN
  logical, save :: GL10_jset_GL_TRIANGLE_FAN = .false.
  integer(4), save :: GL10_jcell_GL_TRIANGLE_STRIP
  logical, save :: GL10_jset_GL_TRIANGLE_STRIP = .false.
  integer(4), save :: GL10_jcell_GL_TRIANGLES
  logical, save :: GL10_jset_GL_TRIANGLES = .false.
  integer(4), save :: GL10_jcell_GL_TRUE
  logical, save :: GL10_jset_GL_TRUE = .false.
  integer(4), save :: GL10_jcell_GL_UNPACK_ALIGNMENT
  logical, save :: GL10_jset_GL_UNPACK_ALIGNMENT = .false.
  integer(4), save :: GL10_jcell_GL_UNSIGNED_BYTE
  logical, save :: GL10_jset_GL_UNSIGNED_BYTE = .false.
  integer(4), save :: GL10_jcell_GL_UNSIGNED_SHORT
  logical, save :: GL10_jset_GL_UNSIGNED_SHORT = .false.
  integer(4), save :: GL10_jcell_GL_UNSIGNED_SHORT_4_4_4_4
  logical, save :: GL10_jset_GL_UNSIGNED_SHORT_4_4_4_4 = .false.
  integer(4), save :: GL10_jcell_GL_UNSIGNED_SHORT_5_5_5_1
  logical, save :: GL10_jset_GL_UNSIGNED_SHORT_5_5_5_1 = .false.
  integer(4), save :: GL10_jcell_GL_UNSIGNED_SHORT_5_6_5
  logical, save :: GL10_jset_GL_UNSIGNED_SHORT_5_6_5 = .false.
  integer(4), save :: GL10_jcell_GL_VENDOR
  logical, save :: GL10_jset_GL_VENDOR = .false.
  integer(4), save :: GL10_jcell_GL_VERSION
  logical, save :: GL10_jset_GL_VERSION = .false.
  integer(4), save :: GL10_jcell_GL_VERTEX_ARRAY
  logical, save :: GL10_jset_GL_VERTEX_ARRAY = .false.
  integer(4), save :: GL10_jcell_GL_XOR
  logical, save :: GL10_jset_GL_XOR = .false.
  integer(4), save :: GL10_jcell_GL_ZERO
  logical, save :: GL10_jset_GL_ZERO = .false.

contains

  function GL10_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GL10), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GL10)
      jresult => object
    end select
  end function

  function GL10_jstatic_GL_ADD() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ADD) then
      GL10_jset_GL_ADD = .true.
      GL10_jcell_GL_ADD = 260
    end if
    jresult = GL10_jcell_GL_ADD
  end function

  subroutine GL10_jsetstatic_GL_ADD(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ADD = .true.
    GL10_jcell_GL_ADD = jvalue
  end subroutine

  function GL10_jstatic_GL_ALIASED_LINE_WIDTH_RANGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ALIASED_LINE_WIDTH_RANGE) then
      GL10_jset_GL_ALIASED_LINE_WIDTH_RANGE = .true.
      GL10_jcell_GL_ALIASED_LINE_WIDTH_RANGE = 33902
    end if
    jresult = GL10_jcell_GL_ALIASED_LINE_WIDTH_RANGE
  end function

  subroutine GL10_jsetstatic_GL_ALIASED_LINE_WIDTH_RANGE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ALIASED_LINE_WIDTH_RANGE = .true.
    GL10_jcell_GL_ALIASED_LINE_WIDTH_RANGE = jvalue
  end subroutine

  function GL10_jstatic_GL_ALIASED_POINT_SIZE_RANGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ALIASED_POINT_SIZE_RANGE) then
      GL10_jset_GL_ALIASED_POINT_SIZE_RANGE = .true.
      GL10_jcell_GL_ALIASED_POINT_SIZE_RANGE = 33901
    end if
    jresult = GL10_jcell_GL_ALIASED_POINT_SIZE_RANGE
  end function

  subroutine GL10_jsetstatic_GL_ALIASED_POINT_SIZE_RANGE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ALIASED_POINT_SIZE_RANGE = .true.
    GL10_jcell_GL_ALIASED_POINT_SIZE_RANGE = jvalue
  end subroutine

  function GL10_jstatic_GL_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ALPHA) then
      GL10_jset_GL_ALPHA = .true.
      GL10_jcell_GL_ALPHA = 6406
    end if
    jresult = GL10_jcell_GL_ALPHA
  end function

  subroutine GL10_jsetstatic_GL_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ALPHA = .true.
    GL10_jcell_GL_ALPHA = jvalue
  end subroutine

  function GL10_jstatic_GL_ALPHA_BITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ALPHA_BITS) then
      GL10_jset_GL_ALPHA_BITS = .true.
      GL10_jcell_GL_ALPHA_BITS = 3413
    end if
    jresult = GL10_jcell_GL_ALPHA_BITS
  end function

  subroutine GL10_jsetstatic_GL_ALPHA_BITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ALPHA_BITS = .true.
    GL10_jcell_GL_ALPHA_BITS = jvalue
  end subroutine

  function GL10_jstatic_GL_ALPHA_TEST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ALPHA_TEST) then
      GL10_jset_GL_ALPHA_TEST = .true.
      GL10_jcell_GL_ALPHA_TEST = 3008
    end if
    jresult = GL10_jcell_GL_ALPHA_TEST
  end function

  subroutine GL10_jsetstatic_GL_ALPHA_TEST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ALPHA_TEST = .true.
    GL10_jcell_GL_ALPHA_TEST = jvalue
  end subroutine

  function GL10_jstatic_GL_ALWAYS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ALWAYS) then
      GL10_jset_GL_ALWAYS = .true.
      GL10_jcell_GL_ALWAYS = 519
    end if
    jresult = GL10_jcell_GL_ALWAYS
  end function

  subroutine GL10_jsetstatic_GL_ALWAYS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ALWAYS = .true.
    GL10_jcell_GL_ALWAYS = jvalue
  end subroutine

  function GL10_jstatic_GL_AMBIENT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_AMBIENT) then
      GL10_jset_GL_AMBIENT = .true.
      GL10_jcell_GL_AMBIENT = 4608
    end if
    jresult = GL10_jcell_GL_AMBIENT
  end function

  subroutine GL10_jsetstatic_GL_AMBIENT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_AMBIENT = .true.
    GL10_jcell_GL_AMBIENT = jvalue
  end subroutine

  function GL10_jstatic_GL_AMBIENT_AND_DIFFUSE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_AMBIENT_AND_DIFFUSE) then
      GL10_jset_GL_AMBIENT_AND_DIFFUSE = .true.
      GL10_jcell_GL_AMBIENT_AND_DIFFUSE = 5634
    end if
    jresult = GL10_jcell_GL_AMBIENT_AND_DIFFUSE
  end function

  subroutine GL10_jsetstatic_GL_AMBIENT_AND_DIFFUSE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_AMBIENT_AND_DIFFUSE = .true.
    GL10_jcell_GL_AMBIENT_AND_DIFFUSE = jvalue
  end subroutine

  function GL10_jstatic_GL_AND() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_AND) then
      GL10_jset_GL_AND = .true.
      GL10_jcell_GL_AND = 5377
    end if
    jresult = GL10_jcell_GL_AND
  end function

  subroutine GL10_jsetstatic_GL_AND(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_AND = .true.
    GL10_jcell_GL_AND = jvalue
  end subroutine

  function GL10_jstatic_GL_AND_INVERTED() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_AND_INVERTED) then
      GL10_jset_GL_AND_INVERTED = .true.
      GL10_jcell_GL_AND_INVERTED = 5380
    end if
    jresult = GL10_jcell_GL_AND_INVERTED
  end function

  subroutine GL10_jsetstatic_GL_AND_INVERTED(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_AND_INVERTED = .true.
    GL10_jcell_GL_AND_INVERTED = jvalue
  end subroutine

  function GL10_jstatic_GL_AND_REVERSE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_AND_REVERSE) then
      GL10_jset_GL_AND_REVERSE = .true.
      GL10_jcell_GL_AND_REVERSE = 5378
    end if
    jresult = GL10_jcell_GL_AND_REVERSE
  end function

  subroutine GL10_jsetstatic_GL_AND_REVERSE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_AND_REVERSE = .true.
    GL10_jcell_GL_AND_REVERSE = jvalue
  end subroutine

  function GL10_jstatic_GL_BACK() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_BACK) then
      GL10_jset_GL_BACK = .true.
      GL10_jcell_GL_BACK = 1029
    end if
    jresult = GL10_jcell_GL_BACK
  end function

  subroutine GL10_jsetstatic_GL_BACK(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_BACK = .true.
    GL10_jcell_GL_BACK = jvalue
  end subroutine

  function GL10_jstatic_GL_BLEND() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_BLEND) then
      GL10_jset_GL_BLEND = .true.
      GL10_jcell_GL_BLEND = 3042
    end if
    jresult = GL10_jcell_GL_BLEND
  end function

  subroutine GL10_jsetstatic_GL_BLEND(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_BLEND = .true.
    GL10_jcell_GL_BLEND = jvalue
  end subroutine

  function GL10_jstatic_GL_BLUE_BITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_BLUE_BITS) then
      GL10_jset_GL_BLUE_BITS = .true.
      GL10_jcell_GL_BLUE_BITS = 3412
    end if
    jresult = GL10_jcell_GL_BLUE_BITS
  end function

  subroutine GL10_jsetstatic_GL_BLUE_BITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_BLUE_BITS = .true.
    GL10_jcell_GL_BLUE_BITS = jvalue
  end subroutine

  function GL10_jstatic_GL_BYTE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_BYTE) then
      GL10_jset_GL_BYTE = .true.
      GL10_jcell_GL_BYTE = 5120
    end if
    jresult = GL10_jcell_GL_BYTE
  end function

  subroutine GL10_jsetstatic_GL_BYTE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_BYTE = .true.
    GL10_jcell_GL_BYTE = jvalue
  end subroutine

  function GL10_jstatic_GL_CCW() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_CCW) then
      GL10_jset_GL_CCW = .true.
      GL10_jcell_GL_CCW = 2305
    end if
    jresult = GL10_jcell_GL_CCW
  end function

  subroutine GL10_jsetstatic_GL_CCW(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_CCW = .true.
    GL10_jcell_GL_CCW = jvalue
  end subroutine

  function GL10_jstatic_GL_CLAMP_TO_EDGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_CLAMP_TO_EDGE) then
      GL10_jset_GL_CLAMP_TO_EDGE = .true.
      GL10_jcell_GL_CLAMP_TO_EDGE = 33071
    end if
    jresult = GL10_jcell_GL_CLAMP_TO_EDGE
  end function

  subroutine GL10_jsetstatic_GL_CLAMP_TO_EDGE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_CLAMP_TO_EDGE = .true.
    GL10_jcell_GL_CLAMP_TO_EDGE = jvalue
  end subroutine

  function GL10_jstatic_GL_CLEAR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_CLEAR) then
      GL10_jset_GL_CLEAR = .true.
      GL10_jcell_GL_CLEAR = 5376
    end if
    jresult = GL10_jcell_GL_CLEAR
  end function

  subroutine GL10_jsetstatic_GL_CLEAR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_CLEAR = .true.
    GL10_jcell_GL_CLEAR = jvalue
  end subroutine

  function GL10_jstatic_GL_COLOR_ARRAY() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_COLOR_ARRAY) then
      GL10_jset_GL_COLOR_ARRAY = .true.
      GL10_jcell_GL_COLOR_ARRAY = 32886
    end if
    jresult = GL10_jcell_GL_COLOR_ARRAY
  end function

  subroutine GL10_jsetstatic_GL_COLOR_ARRAY(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_COLOR_ARRAY = .true.
    GL10_jcell_GL_COLOR_ARRAY = jvalue
  end subroutine

  function GL10_jstatic_GL_COLOR_BUFFER_BIT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_COLOR_BUFFER_BIT) then
      GL10_jset_GL_COLOR_BUFFER_BIT = .true.
      GL10_jcell_GL_COLOR_BUFFER_BIT = 16384
    end if
    jresult = GL10_jcell_GL_COLOR_BUFFER_BIT
  end function

  subroutine GL10_jsetstatic_GL_COLOR_BUFFER_BIT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_COLOR_BUFFER_BIT = .true.
    GL10_jcell_GL_COLOR_BUFFER_BIT = jvalue
  end subroutine

  function GL10_jstatic_GL_COLOR_LOGIC_OP() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_COLOR_LOGIC_OP) then
      GL10_jset_GL_COLOR_LOGIC_OP = .true.
      GL10_jcell_GL_COLOR_LOGIC_OP = 3058
    end if
    jresult = GL10_jcell_GL_COLOR_LOGIC_OP
  end function

  subroutine GL10_jsetstatic_GL_COLOR_LOGIC_OP(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_COLOR_LOGIC_OP = .true.
    GL10_jcell_GL_COLOR_LOGIC_OP = jvalue
  end subroutine

  function GL10_jstatic_GL_COLOR_MATERIAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_COLOR_MATERIAL) then
      GL10_jset_GL_COLOR_MATERIAL = .true.
      GL10_jcell_GL_COLOR_MATERIAL = 2903
    end if
    jresult = GL10_jcell_GL_COLOR_MATERIAL
  end function

  subroutine GL10_jsetstatic_GL_COLOR_MATERIAL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_COLOR_MATERIAL = .true.
    GL10_jcell_GL_COLOR_MATERIAL = jvalue
  end subroutine

  function GL10_jstatic_GL_COMPRESSED_TEXTURE_FORMATS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_COMPRESSED_TEXTURE_FORMATS) then
      GL10_jset_GL_COMPRESSED_TEXTURE_FORMATS = .true.
      GL10_jcell_GL_COMPRESSED_TEXTURE_FORMATS = 34467
    end if
    jresult = GL10_jcell_GL_COMPRESSED_TEXTURE_FORMATS
  end function

  subroutine GL10_jsetstatic_GL_COMPRESSED_TEXTURE_FORMATS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_COMPRESSED_TEXTURE_FORMATS = .true.
    GL10_jcell_GL_COMPRESSED_TEXTURE_FORMATS = jvalue
  end subroutine

  function GL10_jstatic_GL_CONSTANT_ATTENUATION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_CONSTANT_ATTENUATION) then
      GL10_jset_GL_CONSTANT_ATTENUATION = .true.
      GL10_jcell_GL_CONSTANT_ATTENUATION = 4615
    end if
    jresult = GL10_jcell_GL_CONSTANT_ATTENUATION
  end function

  subroutine GL10_jsetstatic_GL_CONSTANT_ATTENUATION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_CONSTANT_ATTENUATION = .true.
    GL10_jcell_GL_CONSTANT_ATTENUATION = jvalue
  end subroutine

  function GL10_jstatic_GL_COPY() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_COPY) then
      GL10_jset_GL_COPY = .true.
      GL10_jcell_GL_COPY = 5379
    end if
    jresult = GL10_jcell_GL_COPY
  end function

  subroutine GL10_jsetstatic_GL_COPY(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_COPY = .true.
    GL10_jcell_GL_COPY = jvalue
  end subroutine

  function GL10_jstatic_GL_COPY_INVERTED() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_COPY_INVERTED) then
      GL10_jset_GL_COPY_INVERTED = .true.
      GL10_jcell_GL_COPY_INVERTED = 5388
    end if
    jresult = GL10_jcell_GL_COPY_INVERTED
  end function

  subroutine GL10_jsetstatic_GL_COPY_INVERTED(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_COPY_INVERTED = .true.
    GL10_jcell_GL_COPY_INVERTED = jvalue
  end subroutine

  function GL10_jstatic_GL_CULL_FACE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_CULL_FACE) then
      GL10_jset_GL_CULL_FACE = .true.
      GL10_jcell_GL_CULL_FACE = 2884
    end if
    jresult = GL10_jcell_GL_CULL_FACE
  end function

  subroutine GL10_jsetstatic_GL_CULL_FACE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_CULL_FACE = .true.
    GL10_jcell_GL_CULL_FACE = jvalue
  end subroutine

  function GL10_jstatic_GL_CW() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_CW) then
      GL10_jset_GL_CW = .true.
      GL10_jcell_GL_CW = 2304
    end if
    jresult = GL10_jcell_GL_CW
  end function

  subroutine GL10_jsetstatic_GL_CW(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_CW = .true.
    GL10_jcell_GL_CW = jvalue
  end subroutine

  function GL10_jstatic_GL_DECAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DECAL) then
      GL10_jset_GL_DECAL = .true.
      GL10_jcell_GL_DECAL = 8449
    end if
    jresult = GL10_jcell_GL_DECAL
  end function

  subroutine GL10_jsetstatic_GL_DECAL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DECAL = .true.
    GL10_jcell_GL_DECAL = jvalue
  end subroutine

  function GL10_jstatic_GL_DECR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DECR) then
      GL10_jset_GL_DECR = .true.
      GL10_jcell_GL_DECR = 7683
    end if
    jresult = GL10_jcell_GL_DECR
  end function

  subroutine GL10_jsetstatic_GL_DECR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DECR = .true.
    GL10_jcell_GL_DECR = jvalue
  end subroutine

  function GL10_jstatic_GL_DEPTH_BITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DEPTH_BITS) then
      GL10_jset_GL_DEPTH_BITS = .true.
      GL10_jcell_GL_DEPTH_BITS = 3414
    end if
    jresult = GL10_jcell_GL_DEPTH_BITS
  end function

  subroutine GL10_jsetstatic_GL_DEPTH_BITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DEPTH_BITS = .true.
    GL10_jcell_GL_DEPTH_BITS = jvalue
  end subroutine

  function GL10_jstatic_GL_DEPTH_BUFFER_BIT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DEPTH_BUFFER_BIT) then
      GL10_jset_GL_DEPTH_BUFFER_BIT = .true.
      GL10_jcell_GL_DEPTH_BUFFER_BIT = 256
    end if
    jresult = GL10_jcell_GL_DEPTH_BUFFER_BIT
  end function

  subroutine GL10_jsetstatic_GL_DEPTH_BUFFER_BIT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DEPTH_BUFFER_BIT = .true.
    GL10_jcell_GL_DEPTH_BUFFER_BIT = jvalue
  end subroutine

  function GL10_jstatic_GL_DEPTH_TEST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DEPTH_TEST) then
      GL10_jset_GL_DEPTH_TEST = .true.
      GL10_jcell_GL_DEPTH_TEST = 2929
    end if
    jresult = GL10_jcell_GL_DEPTH_TEST
  end function

  subroutine GL10_jsetstatic_GL_DEPTH_TEST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DEPTH_TEST = .true.
    GL10_jcell_GL_DEPTH_TEST = jvalue
  end subroutine

  function GL10_jstatic_GL_DIFFUSE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DIFFUSE) then
      GL10_jset_GL_DIFFUSE = .true.
      GL10_jcell_GL_DIFFUSE = 4609
    end if
    jresult = GL10_jcell_GL_DIFFUSE
  end function

  subroutine GL10_jsetstatic_GL_DIFFUSE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DIFFUSE = .true.
    GL10_jcell_GL_DIFFUSE = jvalue
  end subroutine

  function GL10_jstatic_GL_DITHER() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DITHER) then
      GL10_jset_GL_DITHER = .true.
      GL10_jcell_GL_DITHER = 3024
    end if
    jresult = GL10_jcell_GL_DITHER
  end function

  subroutine GL10_jsetstatic_GL_DITHER(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DITHER = .true.
    GL10_jcell_GL_DITHER = jvalue
  end subroutine

  function GL10_jstatic_GL_DONT_CARE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DONT_CARE) then
      GL10_jset_GL_DONT_CARE = .true.
      GL10_jcell_GL_DONT_CARE = 4352
    end if
    jresult = GL10_jcell_GL_DONT_CARE
  end function

  subroutine GL10_jsetstatic_GL_DONT_CARE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DONT_CARE = .true.
    GL10_jcell_GL_DONT_CARE = jvalue
  end subroutine

  function GL10_jstatic_GL_DST_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DST_ALPHA) then
      GL10_jset_GL_DST_ALPHA = .true.
      GL10_jcell_GL_DST_ALPHA = 772
    end if
    jresult = GL10_jcell_GL_DST_ALPHA
  end function

  subroutine GL10_jsetstatic_GL_DST_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DST_ALPHA = .true.
    GL10_jcell_GL_DST_ALPHA = jvalue
  end subroutine

  function GL10_jstatic_GL_DST_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_DST_COLOR) then
      GL10_jset_GL_DST_COLOR = .true.
      GL10_jcell_GL_DST_COLOR = 774
    end if
    jresult = GL10_jcell_GL_DST_COLOR
  end function

  subroutine GL10_jsetstatic_GL_DST_COLOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_DST_COLOR = .true.
    GL10_jcell_GL_DST_COLOR = jvalue
  end subroutine

  function GL10_jstatic_GL_EMISSION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_EMISSION) then
      GL10_jset_GL_EMISSION = .true.
      GL10_jcell_GL_EMISSION = 5632
    end if
    jresult = GL10_jcell_GL_EMISSION
  end function

  subroutine GL10_jsetstatic_GL_EMISSION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_EMISSION = .true.
    GL10_jcell_GL_EMISSION = jvalue
  end subroutine

  function GL10_jstatic_GL_EQUAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_EQUAL) then
      GL10_jset_GL_EQUAL = .true.
      GL10_jcell_GL_EQUAL = 514
    end if
    jresult = GL10_jcell_GL_EQUAL
  end function

  subroutine GL10_jsetstatic_GL_EQUAL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_EQUAL = .true.
    GL10_jcell_GL_EQUAL = jvalue
  end subroutine

  function GL10_jstatic_GL_EQUIV() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_EQUIV) then
      GL10_jset_GL_EQUIV = .true.
      GL10_jcell_GL_EQUIV = 5385
    end if
    jresult = GL10_jcell_GL_EQUIV
  end function

  subroutine GL10_jsetstatic_GL_EQUIV(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_EQUIV = .true.
    GL10_jcell_GL_EQUIV = jvalue
  end subroutine

  function GL10_jstatic_GL_EXP() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_EXP) then
      GL10_jset_GL_EXP = .true.
      GL10_jcell_GL_EXP = 2048
    end if
    jresult = GL10_jcell_GL_EXP
  end function

  subroutine GL10_jsetstatic_GL_EXP(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_EXP = .true.
    GL10_jcell_GL_EXP = jvalue
  end subroutine

  function GL10_jstatic_GL_EXP2() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_EXP2) then
      GL10_jset_GL_EXP2 = .true.
      GL10_jcell_GL_EXP2 = 2049
    end if
    jresult = GL10_jcell_GL_EXP2
  end function

  subroutine GL10_jsetstatic_GL_EXP2(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_EXP2 = .true.
    GL10_jcell_GL_EXP2 = jvalue
  end subroutine

  function GL10_jstatic_GL_EXTENSIONS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_EXTENSIONS) then
      GL10_jset_GL_EXTENSIONS = .true.
      GL10_jcell_GL_EXTENSIONS = 7939
    end if
    jresult = GL10_jcell_GL_EXTENSIONS
  end function

  subroutine GL10_jsetstatic_GL_EXTENSIONS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_EXTENSIONS = .true.
    GL10_jcell_GL_EXTENSIONS = jvalue
  end subroutine

  function GL10_jstatic_GL_FALSE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FALSE) then
      GL10_jset_GL_FALSE = .true.
      GL10_jcell_GL_FALSE = 0
    end if
    jresult = GL10_jcell_GL_FALSE
  end function

  subroutine GL10_jsetstatic_GL_FALSE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FALSE = .true.
    GL10_jcell_GL_FALSE = jvalue
  end subroutine

  function GL10_jstatic_GL_FASTEST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FASTEST) then
      GL10_jset_GL_FASTEST = .true.
      GL10_jcell_GL_FASTEST = 4353
    end if
    jresult = GL10_jcell_GL_FASTEST
  end function

  subroutine GL10_jsetstatic_GL_FASTEST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FASTEST = .true.
    GL10_jcell_GL_FASTEST = jvalue
  end subroutine

  function GL10_jstatic_GL_FIXED() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FIXED) then
      GL10_jset_GL_FIXED = .true.
      GL10_jcell_GL_FIXED = 5132
    end if
    jresult = GL10_jcell_GL_FIXED
  end function

  subroutine GL10_jsetstatic_GL_FIXED(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FIXED = .true.
    GL10_jcell_GL_FIXED = jvalue
  end subroutine

  function GL10_jstatic_GL_FLAT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FLAT) then
      GL10_jset_GL_FLAT = .true.
      GL10_jcell_GL_FLAT = 7424
    end if
    jresult = GL10_jcell_GL_FLAT
  end function

  subroutine GL10_jsetstatic_GL_FLAT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FLAT = .true.
    GL10_jcell_GL_FLAT = jvalue
  end subroutine

  function GL10_jstatic_GL_FLOAT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FLOAT) then
      GL10_jset_GL_FLOAT = .true.
      GL10_jcell_GL_FLOAT = 5126
    end if
    jresult = GL10_jcell_GL_FLOAT
  end function

  subroutine GL10_jsetstatic_GL_FLOAT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FLOAT = .true.
    GL10_jcell_GL_FLOAT = jvalue
  end subroutine

  function GL10_jstatic_GL_FOG() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FOG) then
      GL10_jset_GL_FOG = .true.
      GL10_jcell_GL_FOG = 2912
    end if
    jresult = GL10_jcell_GL_FOG
  end function

  subroutine GL10_jsetstatic_GL_FOG(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FOG = .true.
    GL10_jcell_GL_FOG = jvalue
  end subroutine

  function GL10_jstatic_GL_FOG_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FOG_COLOR) then
      GL10_jset_GL_FOG_COLOR = .true.
      GL10_jcell_GL_FOG_COLOR = 2918
    end if
    jresult = GL10_jcell_GL_FOG_COLOR
  end function

  subroutine GL10_jsetstatic_GL_FOG_COLOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FOG_COLOR = .true.
    GL10_jcell_GL_FOG_COLOR = jvalue
  end subroutine

  function GL10_jstatic_GL_FOG_DENSITY() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FOG_DENSITY) then
      GL10_jset_GL_FOG_DENSITY = .true.
      GL10_jcell_GL_FOG_DENSITY = 2914
    end if
    jresult = GL10_jcell_GL_FOG_DENSITY
  end function

  subroutine GL10_jsetstatic_GL_FOG_DENSITY(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FOG_DENSITY = .true.
    GL10_jcell_GL_FOG_DENSITY = jvalue
  end subroutine

  function GL10_jstatic_GL_FOG_END() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FOG_END) then
      GL10_jset_GL_FOG_END = .true.
      GL10_jcell_GL_FOG_END = 2916
    end if
    jresult = GL10_jcell_GL_FOG_END
  end function

  subroutine GL10_jsetstatic_GL_FOG_END(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FOG_END = .true.
    GL10_jcell_GL_FOG_END = jvalue
  end subroutine

  function GL10_jstatic_GL_FOG_HINT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FOG_HINT) then
      GL10_jset_GL_FOG_HINT = .true.
      GL10_jcell_GL_FOG_HINT = 3156
    end if
    jresult = GL10_jcell_GL_FOG_HINT
  end function

  subroutine GL10_jsetstatic_GL_FOG_HINT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FOG_HINT = .true.
    GL10_jcell_GL_FOG_HINT = jvalue
  end subroutine

  function GL10_jstatic_GL_FOG_MODE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FOG_MODE) then
      GL10_jset_GL_FOG_MODE = .true.
      GL10_jcell_GL_FOG_MODE = 2917
    end if
    jresult = GL10_jcell_GL_FOG_MODE
  end function

  subroutine GL10_jsetstatic_GL_FOG_MODE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FOG_MODE = .true.
    GL10_jcell_GL_FOG_MODE = jvalue
  end subroutine

  function GL10_jstatic_GL_FOG_START() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FOG_START) then
      GL10_jset_GL_FOG_START = .true.
      GL10_jcell_GL_FOG_START = 2915
    end if
    jresult = GL10_jcell_GL_FOG_START
  end function

  subroutine GL10_jsetstatic_GL_FOG_START(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FOG_START = .true.
    GL10_jcell_GL_FOG_START = jvalue
  end subroutine

  function GL10_jstatic_GL_FRONT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FRONT) then
      GL10_jset_GL_FRONT = .true.
      GL10_jcell_GL_FRONT = 1028
    end if
    jresult = GL10_jcell_GL_FRONT
  end function

  subroutine GL10_jsetstatic_GL_FRONT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FRONT = .true.
    GL10_jcell_GL_FRONT = jvalue
  end subroutine

  function GL10_jstatic_GL_FRONT_AND_BACK() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_FRONT_AND_BACK) then
      GL10_jset_GL_FRONT_AND_BACK = .true.
      GL10_jcell_GL_FRONT_AND_BACK = 1032
    end if
    jresult = GL10_jcell_GL_FRONT_AND_BACK
  end function

  subroutine GL10_jsetstatic_GL_FRONT_AND_BACK(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_FRONT_AND_BACK = .true.
    GL10_jcell_GL_FRONT_AND_BACK = jvalue
  end subroutine

  function GL10_jstatic_GL_GEQUAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_GEQUAL) then
      GL10_jset_GL_GEQUAL = .true.
      GL10_jcell_GL_GEQUAL = 518
    end if
    jresult = GL10_jcell_GL_GEQUAL
  end function

  subroutine GL10_jsetstatic_GL_GEQUAL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_GEQUAL = .true.
    GL10_jcell_GL_GEQUAL = jvalue
  end subroutine

  function GL10_jstatic_GL_GREATER() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_GREATER) then
      GL10_jset_GL_GREATER = .true.
      GL10_jcell_GL_GREATER = 516
    end if
    jresult = GL10_jcell_GL_GREATER
  end function

  subroutine GL10_jsetstatic_GL_GREATER(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_GREATER = .true.
    GL10_jcell_GL_GREATER = jvalue
  end subroutine

  function GL10_jstatic_GL_GREEN_BITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_GREEN_BITS) then
      GL10_jset_GL_GREEN_BITS = .true.
      GL10_jcell_GL_GREEN_BITS = 3411
    end if
    jresult = GL10_jcell_GL_GREEN_BITS
  end function

  subroutine GL10_jsetstatic_GL_GREEN_BITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_GREEN_BITS = .true.
    GL10_jcell_GL_GREEN_BITS = jvalue
  end subroutine

  function GL10_jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES) then
      GL10_jset_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = .true.
      GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 35739
    end if
    jresult = GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES
  end function

  subroutine GL10_jsetstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = .true.
    GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES) then
      GL10_jset_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = .true.
      GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 35738
    end if
    jresult = GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES
  end function

  subroutine GL10_jsetstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = .true.
    GL10_jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_INCR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_INCR) then
      GL10_jset_GL_INCR = .true.
      GL10_jcell_GL_INCR = 7682
    end if
    jresult = GL10_jcell_GL_INCR
  end function

  subroutine GL10_jsetstatic_GL_INCR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_INCR = .true.
    GL10_jcell_GL_INCR = jvalue
  end subroutine

  function GL10_jstatic_GL_INVALID_ENUM() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_INVALID_ENUM) then
      GL10_jset_GL_INVALID_ENUM = .true.
      GL10_jcell_GL_INVALID_ENUM = 1280
    end if
    jresult = GL10_jcell_GL_INVALID_ENUM
  end function

  subroutine GL10_jsetstatic_GL_INVALID_ENUM(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_INVALID_ENUM = .true.
    GL10_jcell_GL_INVALID_ENUM = jvalue
  end subroutine

  function GL10_jstatic_GL_INVALID_OPERATION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_INVALID_OPERATION) then
      GL10_jset_GL_INVALID_OPERATION = .true.
      GL10_jcell_GL_INVALID_OPERATION = 1282
    end if
    jresult = GL10_jcell_GL_INVALID_OPERATION
  end function

  subroutine GL10_jsetstatic_GL_INVALID_OPERATION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_INVALID_OPERATION = .true.
    GL10_jcell_GL_INVALID_OPERATION = jvalue
  end subroutine

  function GL10_jstatic_GL_INVALID_VALUE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_INVALID_VALUE) then
      GL10_jset_GL_INVALID_VALUE = .true.
      GL10_jcell_GL_INVALID_VALUE = 1281
    end if
    jresult = GL10_jcell_GL_INVALID_VALUE
  end function

  subroutine GL10_jsetstatic_GL_INVALID_VALUE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_INVALID_VALUE = .true.
    GL10_jcell_GL_INVALID_VALUE = jvalue
  end subroutine

  function GL10_jstatic_GL_INVERT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_INVERT) then
      GL10_jset_GL_INVERT = .true.
      GL10_jcell_GL_INVERT = 5386
    end if
    jresult = GL10_jcell_GL_INVERT
  end function

  subroutine GL10_jsetstatic_GL_INVERT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_INVERT = .true.
    GL10_jcell_GL_INVERT = jvalue
  end subroutine

  function GL10_jstatic_GL_KEEP() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_KEEP) then
      GL10_jset_GL_KEEP = .true.
      GL10_jcell_GL_KEEP = 7680
    end if
    jresult = GL10_jcell_GL_KEEP
  end function

  subroutine GL10_jsetstatic_GL_KEEP(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_KEEP = .true.
    GL10_jcell_GL_KEEP = jvalue
  end subroutine

  function GL10_jstatic_GL_LEQUAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LEQUAL) then
      GL10_jset_GL_LEQUAL = .true.
      GL10_jcell_GL_LEQUAL = 515
    end if
    jresult = GL10_jcell_GL_LEQUAL
  end function

  subroutine GL10_jsetstatic_GL_LEQUAL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LEQUAL = .true.
    GL10_jcell_GL_LEQUAL = jvalue
  end subroutine

  function GL10_jstatic_GL_LESS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LESS) then
      GL10_jset_GL_LESS = .true.
      GL10_jcell_GL_LESS = 513
    end if
    jresult = GL10_jcell_GL_LESS
  end function

  subroutine GL10_jsetstatic_GL_LESS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LESS = .true.
    GL10_jcell_GL_LESS = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT_MODEL_AMBIENT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT_MODEL_AMBIENT) then
      GL10_jset_GL_LIGHT_MODEL_AMBIENT = .true.
      GL10_jcell_GL_LIGHT_MODEL_AMBIENT = 2899
    end if
    jresult = GL10_jcell_GL_LIGHT_MODEL_AMBIENT
  end function

  subroutine GL10_jsetstatic_GL_LIGHT_MODEL_AMBIENT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT_MODEL_AMBIENT = .true.
    GL10_jcell_GL_LIGHT_MODEL_AMBIENT = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT_MODEL_TWO_SIDE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT_MODEL_TWO_SIDE) then
      GL10_jset_GL_LIGHT_MODEL_TWO_SIDE = .true.
      GL10_jcell_GL_LIGHT_MODEL_TWO_SIDE = 2898
    end if
    jresult = GL10_jcell_GL_LIGHT_MODEL_TWO_SIDE
  end function

  subroutine GL10_jsetstatic_GL_LIGHT_MODEL_TWO_SIDE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT_MODEL_TWO_SIDE = .true.
    GL10_jcell_GL_LIGHT_MODEL_TWO_SIDE = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT0() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT0) then
      GL10_jset_GL_LIGHT0 = .true.
      GL10_jcell_GL_LIGHT0 = 16384
    end if
    jresult = GL10_jcell_GL_LIGHT0
  end function

  subroutine GL10_jsetstatic_GL_LIGHT0(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT0 = .true.
    GL10_jcell_GL_LIGHT0 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT1() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT1) then
      GL10_jset_GL_LIGHT1 = .true.
      GL10_jcell_GL_LIGHT1 = 16385
    end if
    jresult = GL10_jcell_GL_LIGHT1
  end function

  subroutine GL10_jsetstatic_GL_LIGHT1(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT1 = .true.
    GL10_jcell_GL_LIGHT1 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT2() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT2) then
      GL10_jset_GL_LIGHT2 = .true.
      GL10_jcell_GL_LIGHT2 = 16386
    end if
    jresult = GL10_jcell_GL_LIGHT2
  end function

  subroutine GL10_jsetstatic_GL_LIGHT2(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT2 = .true.
    GL10_jcell_GL_LIGHT2 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT3() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT3) then
      GL10_jset_GL_LIGHT3 = .true.
      GL10_jcell_GL_LIGHT3 = 16387
    end if
    jresult = GL10_jcell_GL_LIGHT3
  end function

  subroutine GL10_jsetstatic_GL_LIGHT3(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT3 = .true.
    GL10_jcell_GL_LIGHT3 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT4() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT4) then
      GL10_jset_GL_LIGHT4 = .true.
      GL10_jcell_GL_LIGHT4 = 16388
    end if
    jresult = GL10_jcell_GL_LIGHT4
  end function

  subroutine GL10_jsetstatic_GL_LIGHT4(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT4 = .true.
    GL10_jcell_GL_LIGHT4 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT5() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT5) then
      GL10_jset_GL_LIGHT5 = .true.
      GL10_jcell_GL_LIGHT5 = 16389
    end if
    jresult = GL10_jcell_GL_LIGHT5
  end function

  subroutine GL10_jsetstatic_GL_LIGHT5(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT5 = .true.
    GL10_jcell_GL_LIGHT5 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT6() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT6) then
      GL10_jset_GL_LIGHT6 = .true.
      GL10_jcell_GL_LIGHT6 = 16390
    end if
    jresult = GL10_jcell_GL_LIGHT6
  end function

  subroutine GL10_jsetstatic_GL_LIGHT6(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT6 = .true.
    GL10_jcell_GL_LIGHT6 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHT7() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHT7) then
      GL10_jset_GL_LIGHT7 = .true.
      GL10_jcell_GL_LIGHT7 = 16391
    end if
    jresult = GL10_jcell_GL_LIGHT7
  end function

  subroutine GL10_jsetstatic_GL_LIGHT7(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHT7 = .true.
    GL10_jcell_GL_LIGHT7 = jvalue
  end subroutine

  function GL10_jstatic_GL_LIGHTING() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LIGHTING) then
      GL10_jset_GL_LIGHTING = .true.
      GL10_jcell_GL_LIGHTING = 2896
    end if
    jresult = GL10_jcell_GL_LIGHTING
  end function

  subroutine GL10_jsetstatic_GL_LIGHTING(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LIGHTING = .true.
    GL10_jcell_GL_LIGHTING = jvalue
  end subroutine

  function GL10_jstatic_GL_LINE_LOOP() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINE_LOOP) then
      GL10_jset_GL_LINE_LOOP = .true.
      GL10_jcell_GL_LINE_LOOP = 2
    end if
    jresult = GL10_jcell_GL_LINE_LOOP
  end function

  subroutine GL10_jsetstatic_GL_LINE_LOOP(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINE_LOOP = .true.
    GL10_jcell_GL_LINE_LOOP = jvalue
  end subroutine

  function GL10_jstatic_GL_LINE_SMOOTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINE_SMOOTH) then
      GL10_jset_GL_LINE_SMOOTH = .true.
      GL10_jcell_GL_LINE_SMOOTH = 2848
    end if
    jresult = GL10_jcell_GL_LINE_SMOOTH
  end function

  subroutine GL10_jsetstatic_GL_LINE_SMOOTH(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINE_SMOOTH = .true.
    GL10_jcell_GL_LINE_SMOOTH = jvalue
  end subroutine

  function GL10_jstatic_GL_LINE_SMOOTH_HINT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINE_SMOOTH_HINT) then
      GL10_jset_GL_LINE_SMOOTH_HINT = .true.
      GL10_jcell_GL_LINE_SMOOTH_HINT = 3154
    end if
    jresult = GL10_jcell_GL_LINE_SMOOTH_HINT
  end function

  subroutine GL10_jsetstatic_GL_LINE_SMOOTH_HINT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINE_SMOOTH_HINT = .true.
    GL10_jcell_GL_LINE_SMOOTH_HINT = jvalue
  end subroutine

  function GL10_jstatic_GL_LINE_STRIP() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINE_STRIP) then
      GL10_jset_GL_LINE_STRIP = .true.
      GL10_jcell_GL_LINE_STRIP = 3
    end if
    jresult = GL10_jcell_GL_LINE_STRIP
  end function

  subroutine GL10_jsetstatic_GL_LINE_STRIP(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINE_STRIP = .true.
    GL10_jcell_GL_LINE_STRIP = jvalue
  end subroutine

  function GL10_jstatic_GL_LINEAR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINEAR) then
      GL10_jset_GL_LINEAR = .true.
      GL10_jcell_GL_LINEAR = 9729
    end if
    jresult = GL10_jcell_GL_LINEAR
  end function

  subroutine GL10_jsetstatic_GL_LINEAR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINEAR = .true.
    GL10_jcell_GL_LINEAR = jvalue
  end subroutine

  function GL10_jstatic_GL_LINEAR_ATTENUATION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINEAR_ATTENUATION) then
      GL10_jset_GL_LINEAR_ATTENUATION = .true.
      GL10_jcell_GL_LINEAR_ATTENUATION = 4616
    end if
    jresult = GL10_jcell_GL_LINEAR_ATTENUATION
  end function

  subroutine GL10_jsetstatic_GL_LINEAR_ATTENUATION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINEAR_ATTENUATION = .true.
    GL10_jcell_GL_LINEAR_ATTENUATION = jvalue
  end subroutine

  function GL10_jstatic_GL_LINEAR_MIPMAP_LINEAR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINEAR_MIPMAP_LINEAR) then
      GL10_jset_GL_LINEAR_MIPMAP_LINEAR = .true.
      GL10_jcell_GL_LINEAR_MIPMAP_LINEAR = 9987
    end if
    jresult = GL10_jcell_GL_LINEAR_MIPMAP_LINEAR
  end function

  subroutine GL10_jsetstatic_GL_LINEAR_MIPMAP_LINEAR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINEAR_MIPMAP_LINEAR = .true.
    GL10_jcell_GL_LINEAR_MIPMAP_LINEAR = jvalue
  end subroutine

  function GL10_jstatic_GL_LINEAR_MIPMAP_NEAREST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINEAR_MIPMAP_NEAREST) then
      GL10_jset_GL_LINEAR_MIPMAP_NEAREST = .true.
      GL10_jcell_GL_LINEAR_MIPMAP_NEAREST = 9985
    end if
    jresult = GL10_jcell_GL_LINEAR_MIPMAP_NEAREST
  end function

  subroutine GL10_jsetstatic_GL_LINEAR_MIPMAP_NEAREST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINEAR_MIPMAP_NEAREST = .true.
    GL10_jcell_GL_LINEAR_MIPMAP_NEAREST = jvalue
  end subroutine

  function GL10_jstatic_GL_LINES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LINES) then
      GL10_jset_GL_LINES = .true.
      GL10_jcell_GL_LINES = 1
    end if
    jresult = GL10_jcell_GL_LINES
  end function

  subroutine GL10_jsetstatic_GL_LINES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LINES = .true.
    GL10_jcell_GL_LINES = jvalue
  end subroutine

  function GL10_jstatic_GL_LUMINANCE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LUMINANCE) then
      GL10_jset_GL_LUMINANCE = .true.
      GL10_jcell_GL_LUMINANCE = 6409
    end if
    jresult = GL10_jcell_GL_LUMINANCE
  end function

  subroutine GL10_jsetstatic_GL_LUMINANCE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LUMINANCE = .true.
    GL10_jcell_GL_LUMINANCE = jvalue
  end subroutine

  function GL10_jstatic_GL_LUMINANCE_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_LUMINANCE_ALPHA) then
      GL10_jset_GL_LUMINANCE_ALPHA = .true.
      GL10_jcell_GL_LUMINANCE_ALPHA = 6410
    end if
    jresult = GL10_jcell_GL_LUMINANCE_ALPHA
  end function

  subroutine GL10_jsetstatic_GL_LUMINANCE_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_LUMINANCE_ALPHA = .true.
    GL10_jcell_GL_LUMINANCE_ALPHA = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_ELEMENTS_INDICES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_ELEMENTS_INDICES) then
      GL10_jset_GL_MAX_ELEMENTS_INDICES = .true.
      GL10_jcell_GL_MAX_ELEMENTS_INDICES = 33001
    end if
    jresult = GL10_jcell_GL_MAX_ELEMENTS_INDICES
  end function

  subroutine GL10_jsetstatic_GL_MAX_ELEMENTS_INDICES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_ELEMENTS_INDICES = .true.
    GL10_jcell_GL_MAX_ELEMENTS_INDICES = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_ELEMENTS_VERTICES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_ELEMENTS_VERTICES) then
      GL10_jset_GL_MAX_ELEMENTS_VERTICES = .true.
      GL10_jcell_GL_MAX_ELEMENTS_VERTICES = 33000
    end if
    jresult = GL10_jcell_GL_MAX_ELEMENTS_VERTICES
  end function

  subroutine GL10_jsetstatic_GL_MAX_ELEMENTS_VERTICES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_ELEMENTS_VERTICES = .true.
    GL10_jcell_GL_MAX_ELEMENTS_VERTICES = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_LIGHTS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_LIGHTS) then
      GL10_jset_GL_MAX_LIGHTS = .true.
      GL10_jcell_GL_MAX_LIGHTS = 3377
    end if
    jresult = GL10_jcell_GL_MAX_LIGHTS
  end function

  subroutine GL10_jsetstatic_GL_MAX_LIGHTS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_LIGHTS = .true.
    GL10_jcell_GL_MAX_LIGHTS = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_MODELVIEW_STACK_DEPTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_MODELVIEW_STACK_DEPTH) then
      GL10_jset_GL_MAX_MODELVIEW_STACK_DEPTH = .true.
      GL10_jcell_GL_MAX_MODELVIEW_STACK_DEPTH = 3382
    end if
    jresult = GL10_jcell_GL_MAX_MODELVIEW_STACK_DEPTH
  end function

  subroutine GL10_jsetstatic_GL_MAX_MODELVIEW_STACK_DEPTH(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_MODELVIEW_STACK_DEPTH = .true.
    GL10_jcell_GL_MAX_MODELVIEW_STACK_DEPTH = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_PROJECTION_STACK_DEPTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_PROJECTION_STACK_DEPTH) then
      GL10_jset_GL_MAX_PROJECTION_STACK_DEPTH = .true.
      GL10_jcell_GL_MAX_PROJECTION_STACK_DEPTH = 3384
    end if
    jresult = GL10_jcell_GL_MAX_PROJECTION_STACK_DEPTH
  end function

  subroutine GL10_jsetstatic_GL_MAX_PROJECTION_STACK_DEPTH(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_PROJECTION_STACK_DEPTH = .true.
    GL10_jcell_GL_MAX_PROJECTION_STACK_DEPTH = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_TEXTURE_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_TEXTURE_SIZE) then
      GL10_jset_GL_MAX_TEXTURE_SIZE = .true.
      GL10_jcell_GL_MAX_TEXTURE_SIZE = 3379
    end if
    jresult = GL10_jcell_GL_MAX_TEXTURE_SIZE
  end function

  subroutine GL10_jsetstatic_GL_MAX_TEXTURE_SIZE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_TEXTURE_SIZE = .true.
    GL10_jcell_GL_MAX_TEXTURE_SIZE = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_TEXTURE_STACK_DEPTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_TEXTURE_STACK_DEPTH) then
      GL10_jset_GL_MAX_TEXTURE_STACK_DEPTH = .true.
      GL10_jcell_GL_MAX_TEXTURE_STACK_DEPTH = 3385
    end if
    jresult = GL10_jcell_GL_MAX_TEXTURE_STACK_DEPTH
  end function

  subroutine GL10_jsetstatic_GL_MAX_TEXTURE_STACK_DEPTH(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_TEXTURE_STACK_DEPTH = .true.
    GL10_jcell_GL_MAX_TEXTURE_STACK_DEPTH = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_TEXTURE_UNITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_TEXTURE_UNITS) then
      GL10_jset_GL_MAX_TEXTURE_UNITS = .true.
      GL10_jcell_GL_MAX_TEXTURE_UNITS = 34018
    end if
    jresult = GL10_jcell_GL_MAX_TEXTURE_UNITS
  end function

  subroutine GL10_jsetstatic_GL_MAX_TEXTURE_UNITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_TEXTURE_UNITS = .true.
    GL10_jcell_GL_MAX_TEXTURE_UNITS = jvalue
  end subroutine

  function GL10_jstatic_GL_MAX_VIEWPORT_DIMS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MAX_VIEWPORT_DIMS) then
      GL10_jset_GL_MAX_VIEWPORT_DIMS = .true.
      GL10_jcell_GL_MAX_VIEWPORT_DIMS = 3386
    end if
    jresult = GL10_jcell_GL_MAX_VIEWPORT_DIMS
  end function

  subroutine GL10_jsetstatic_GL_MAX_VIEWPORT_DIMS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MAX_VIEWPORT_DIMS = .true.
    GL10_jcell_GL_MAX_VIEWPORT_DIMS = jvalue
  end subroutine

  function GL10_jstatic_GL_MODELVIEW() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MODELVIEW) then
      GL10_jset_GL_MODELVIEW = .true.
      GL10_jcell_GL_MODELVIEW = 5888
    end if
    jresult = GL10_jcell_GL_MODELVIEW
  end function

  subroutine GL10_jsetstatic_GL_MODELVIEW(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MODELVIEW = .true.
    GL10_jcell_GL_MODELVIEW = jvalue
  end subroutine

  function GL10_jstatic_GL_MODULATE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MODULATE) then
      GL10_jset_GL_MODULATE = .true.
      GL10_jcell_GL_MODULATE = 8448
    end if
    jresult = GL10_jcell_GL_MODULATE
  end function

  subroutine GL10_jsetstatic_GL_MODULATE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MODULATE = .true.
    GL10_jcell_GL_MODULATE = jvalue
  end subroutine

  function GL10_jstatic_GL_MULTISAMPLE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_MULTISAMPLE) then
      GL10_jset_GL_MULTISAMPLE = .true.
      GL10_jcell_GL_MULTISAMPLE = 32925
    end if
    jresult = GL10_jcell_GL_MULTISAMPLE
  end function

  subroutine GL10_jsetstatic_GL_MULTISAMPLE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_MULTISAMPLE = .true.
    GL10_jcell_GL_MULTISAMPLE = jvalue
  end subroutine

  function GL10_jstatic_GL_NAND() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NAND) then
      GL10_jset_GL_NAND = .true.
      GL10_jcell_GL_NAND = 5390
    end if
    jresult = GL10_jcell_GL_NAND
  end function

  subroutine GL10_jsetstatic_GL_NAND(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NAND = .true.
    GL10_jcell_GL_NAND = jvalue
  end subroutine

  function GL10_jstatic_GL_NEAREST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NEAREST) then
      GL10_jset_GL_NEAREST = .true.
      GL10_jcell_GL_NEAREST = 9728
    end if
    jresult = GL10_jcell_GL_NEAREST
  end function

  subroutine GL10_jsetstatic_GL_NEAREST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NEAREST = .true.
    GL10_jcell_GL_NEAREST = jvalue
  end subroutine

  function GL10_jstatic_GL_NEAREST_MIPMAP_LINEAR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NEAREST_MIPMAP_LINEAR) then
      GL10_jset_GL_NEAREST_MIPMAP_LINEAR = .true.
      GL10_jcell_GL_NEAREST_MIPMAP_LINEAR = 9986
    end if
    jresult = GL10_jcell_GL_NEAREST_MIPMAP_LINEAR
  end function

  subroutine GL10_jsetstatic_GL_NEAREST_MIPMAP_LINEAR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NEAREST_MIPMAP_LINEAR = .true.
    GL10_jcell_GL_NEAREST_MIPMAP_LINEAR = jvalue
  end subroutine

  function GL10_jstatic_GL_NEAREST_MIPMAP_NEAREST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NEAREST_MIPMAP_NEAREST) then
      GL10_jset_GL_NEAREST_MIPMAP_NEAREST = .true.
      GL10_jcell_GL_NEAREST_MIPMAP_NEAREST = 9984
    end if
    jresult = GL10_jcell_GL_NEAREST_MIPMAP_NEAREST
  end function

  subroutine GL10_jsetstatic_GL_NEAREST_MIPMAP_NEAREST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NEAREST_MIPMAP_NEAREST = .true.
    GL10_jcell_GL_NEAREST_MIPMAP_NEAREST = jvalue
  end subroutine

  function GL10_jstatic_GL_NEVER() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NEVER) then
      GL10_jset_GL_NEVER = .true.
      GL10_jcell_GL_NEVER = 512
    end if
    jresult = GL10_jcell_GL_NEVER
  end function

  subroutine GL10_jsetstatic_GL_NEVER(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NEVER = .true.
    GL10_jcell_GL_NEVER = jvalue
  end subroutine

  function GL10_jstatic_GL_NICEST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NICEST) then
      GL10_jset_GL_NICEST = .true.
      GL10_jcell_GL_NICEST = 4354
    end if
    jresult = GL10_jcell_GL_NICEST
  end function

  subroutine GL10_jsetstatic_GL_NICEST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NICEST = .true.
    GL10_jcell_GL_NICEST = jvalue
  end subroutine

  function GL10_jstatic_GL_NO_ERROR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NO_ERROR) then
      GL10_jset_GL_NO_ERROR = .true.
      GL10_jcell_GL_NO_ERROR = 0
    end if
    jresult = GL10_jcell_GL_NO_ERROR
  end function

  subroutine GL10_jsetstatic_GL_NO_ERROR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NO_ERROR = .true.
    GL10_jcell_GL_NO_ERROR = jvalue
  end subroutine

  function GL10_jstatic_GL_NOOP() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NOOP) then
      GL10_jset_GL_NOOP = .true.
      GL10_jcell_GL_NOOP = 5381
    end if
    jresult = GL10_jcell_GL_NOOP
  end function

  subroutine GL10_jsetstatic_GL_NOOP(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NOOP = .true.
    GL10_jcell_GL_NOOP = jvalue
  end subroutine

  function GL10_jstatic_GL_NOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NOR) then
      GL10_jset_GL_NOR = .true.
      GL10_jcell_GL_NOR = 5384
    end if
    jresult = GL10_jcell_GL_NOR
  end function

  subroutine GL10_jsetstatic_GL_NOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NOR = .true.
    GL10_jcell_GL_NOR = jvalue
  end subroutine

  function GL10_jstatic_GL_NORMAL_ARRAY() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NORMAL_ARRAY) then
      GL10_jset_GL_NORMAL_ARRAY = .true.
      GL10_jcell_GL_NORMAL_ARRAY = 32885
    end if
    jresult = GL10_jcell_GL_NORMAL_ARRAY
  end function

  subroutine GL10_jsetstatic_GL_NORMAL_ARRAY(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NORMAL_ARRAY = .true.
    GL10_jcell_GL_NORMAL_ARRAY = jvalue
  end subroutine

  function GL10_jstatic_GL_NORMALIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NORMALIZE) then
      GL10_jset_GL_NORMALIZE = .true.
      GL10_jcell_GL_NORMALIZE = 2977
    end if
    jresult = GL10_jcell_GL_NORMALIZE
  end function

  subroutine GL10_jsetstatic_GL_NORMALIZE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NORMALIZE = .true.
    GL10_jcell_GL_NORMALIZE = jvalue
  end subroutine

  function GL10_jstatic_GL_NOTEQUAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NOTEQUAL) then
      GL10_jset_GL_NOTEQUAL = .true.
      GL10_jcell_GL_NOTEQUAL = 517
    end if
    jresult = GL10_jcell_GL_NOTEQUAL
  end function

  subroutine GL10_jsetstatic_GL_NOTEQUAL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NOTEQUAL = .true.
    GL10_jcell_GL_NOTEQUAL = jvalue
  end subroutine

  function GL10_jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_NUM_COMPRESSED_TEXTURE_FORMATS) then
      GL10_jset_GL_NUM_COMPRESSED_TEXTURE_FORMATS = .true.
      GL10_jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466
    end if
    jresult = GL10_jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS
  end function

  subroutine GL10_jsetstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_NUM_COMPRESSED_TEXTURE_FORMATS = .true.
    GL10_jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS = jvalue
  end subroutine

  function GL10_jstatic_GL_ONE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ONE) then
      GL10_jset_GL_ONE = .true.
      GL10_jcell_GL_ONE = 1
    end if
    jresult = GL10_jcell_GL_ONE
  end function

  subroutine GL10_jsetstatic_GL_ONE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ONE = .true.
    GL10_jcell_GL_ONE = jvalue
  end subroutine

  function GL10_jstatic_GL_ONE_MINUS_DST_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ONE_MINUS_DST_ALPHA) then
      GL10_jset_GL_ONE_MINUS_DST_ALPHA = .true.
      GL10_jcell_GL_ONE_MINUS_DST_ALPHA = 773
    end if
    jresult = GL10_jcell_GL_ONE_MINUS_DST_ALPHA
  end function

  subroutine GL10_jsetstatic_GL_ONE_MINUS_DST_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ONE_MINUS_DST_ALPHA = .true.
    GL10_jcell_GL_ONE_MINUS_DST_ALPHA = jvalue
  end subroutine

  function GL10_jstatic_GL_ONE_MINUS_DST_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ONE_MINUS_DST_COLOR) then
      GL10_jset_GL_ONE_MINUS_DST_COLOR = .true.
      GL10_jcell_GL_ONE_MINUS_DST_COLOR = 775
    end if
    jresult = GL10_jcell_GL_ONE_MINUS_DST_COLOR
  end function

  subroutine GL10_jsetstatic_GL_ONE_MINUS_DST_COLOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ONE_MINUS_DST_COLOR = .true.
    GL10_jcell_GL_ONE_MINUS_DST_COLOR = jvalue
  end subroutine

  function GL10_jstatic_GL_ONE_MINUS_SRC_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ONE_MINUS_SRC_ALPHA) then
      GL10_jset_GL_ONE_MINUS_SRC_ALPHA = .true.
      GL10_jcell_GL_ONE_MINUS_SRC_ALPHA = 771
    end if
    jresult = GL10_jcell_GL_ONE_MINUS_SRC_ALPHA
  end function

  subroutine GL10_jsetstatic_GL_ONE_MINUS_SRC_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ONE_MINUS_SRC_ALPHA = .true.
    GL10_jcell_GL_ONE_MINUS_SRC_ALPHA = jvalue
  end subroutine

  function GL10_jstatic_GL_ONE_MINUS_SRC_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ONE_MINUS_SRC_COLOR) then
      GL10_jset_GL_ONE_MINUS_SRC_COLOR = .true.
      GL10_jcell_GL_ONE_MINUS_SRC_COLOR = 769
    end if
    jresult = GL10_jcell_GL_ONE_MINUS_SRC_COLOR
  end function

  subroutine GL10_jsetstatic_GL_ONE_MINUS_SRC_COLOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ONE_MINUS_SRC_COLOR = .true.
    GL10_jcell_GL_ONE_MINUS_SRC_COLOR = jvalue
  end subroutine

  function GL10_jstatic_GL_OR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_OR) then
      GL10_jset_GL_OR = .true.
      GL10_jcell_GL_OR = 5383
    end if
    jresult = GL10_jcell_GL_OR
  end function

  subroutine GL10_jsetstatic_GL_OR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_OR = .true.
    GL10_jcell_GL_OR = jvalue
  end subroutine

  function GL10_jstatic_GL_OR_INVERTED() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_OR_INVERTED) then
      GL10_jset_GL_OR_INVERTED = .true.
      GL10_jcell_GL_OR_INVERTED = 5389
    end if
    jresult = GL10_jcell_GL_OR_INVERTED
  end function

  subroutine GL10_jsetstatic_GL_OR_INVERTED(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_OR_INVERTED = .true.
    GL10_jcell_GL_OR_INVERTED = jvalue
  end subroutine

  function GL10_jstatic_GL_OR_REVERSE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_OR_REVERSE) then
      GL10_jset_GL_OR_REVERSE = .true.
      GL10_jcell_GL_OR_REVERSE = 5387
    end if
    jresult = GL10_jcell_GL_OR_REVERSE
  end function

  subroutine GL10_jsetstatic_GL_OR_REVERSE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_OR_REVERSE = .true.
    GL10_jcell_GL_OR_REVERSE = jvalue
  end subroutine

  function GL10_jstatic_GL_OUT_OF_MEMORY() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_OUT_OF_MEMORY) then
      GL10_jset_GL_OUT_OF_MEMORY = .true.
      GL10_jcell_GL_OUT_OF_MEMORY = 1285
    end if
    jresult = GL10_jcell_GL_OUT_OF_MEMORY
  end function

  subroutine GL10_jsetstatic_GL_OUT_OF_MEMORY(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_OUT_OF_MEMORY = .true.
    GL10_jcell_GL_OUT_OF_MEMORY = jvalue
  end subroutine

  function GL10_jstatic_GL_PACK_ALIGNMENT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PACK_ALIGNMENT) then
      GL10_jset_GL_PACK_ALIGNMENT = .true.
      GL10_jcell_GL_PACK_ALIGNMENT = 3333
    end if
    jresult = GL10_jcell_GL_PACK_ALIGNMENT
  end function

  subroutine GL10_jsetstatic_GL_PACK_ALIGNMENT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PACK_ALIGNMENT = .true.
    GL10_jcell_GL_PACK_ALIGNMENT = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE4_R5_G6_B5_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE4_R5_G6_B5_OES) then
      GL10_jset_GL_PALETTE4_R5_G6_B5_OES = .true.
      GL10_jcell_GL_PALETTE4_R5_G6_B5_OES = 35730
    end if
    jresult = GL10_jcell_GL_PALETTE4_R5_G6_B5_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE4_R5_G6_B5_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE4_R5_G6_B5_OES = .true.
    GL10_jcell_GL_PALETTE4_R5_G6_B5_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE4_RGB5_A1_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE4_RGB5_A1_OES) then
      GL10_jset_GL_PALETTE4_RGB5_A1_OES = .true.
      GL10_jcell_GL_PALETTE4_RGB5_A1_OES = 35732
    end if
    jresult = GL10_jcell_GL_PALETTE4_RGB5_A1_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE4_RGB5_A1_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE4_RGB5_A1_OES = .true.
    GL10_jcell_GL_PALETTE4_RGB5_A1_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE4_RGB8_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE4_RGB8_OES) then
      GL10_jset_GL_PALETTE4_RGB8_OES = .true.
      GL10_jcell_GL_PALETTE4_RGB8_OES = 35728
    end if
    jresult = GL10_jcell_GL_PALETTE4_RGB8_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE4_RGB8_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE4_RGB8_OES = .true.
    GL10_jcell_GL_PALETTE4_RGB8_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE4_RGBA4_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE4_RGBA4_OES) then
      GL10_jset_GL_PALETTE4_RGBA4_OES = .true.
      GL10_jcell_GL_PALETTE4_RGBA4_OES = 35731
    end if
    jresult = GL10_jcell_GL_PALETTE4_RGBA4_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE4_RGBA4_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE4_RGBA4_OES = .true.
    GL10_jcell_GL_PALETTE4_RGBA4_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE4_RGBA8_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE4_RGBA8_OES) then
      GL10_jset_GL_PALETTE4_RGBA8_OES = .true.
      GL10_jcell_GL_PALETTE4_RGBA8_OES = 35729
    end if
    jresult = GL10_jcell_GL_PALETTE4_RGBA8_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE4_RGBA8_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE4_RGBA8_OES = .true.
    GL10_jcell_GL_PALETTE4_RGBA8_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE8_R5_G6_B5_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE8_R5_G6_B5_OES) then
      GL10_jset_GL_PALETTE8_R5_G6_B5_OES = .true.
      GL10_jcell_GL_PALETTE8_R5_G6_B5_OES = 35735
    end if
    jresult = GL10_jcell_GL_PALETTE8_R5_G6_B5_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE8_R5_G6_B5_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE8_R5_G6_B5_OES = .true.
    GL10_jcell_GL_PALETTE8_R5_G6_B5_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE8_RGB5_A1_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE8_RGB5_A1_OES) then
      GL10_jset_GL_PALETTE8_RGB5_A1_OES = .true.
      GL10_jcell_GL_PALETTE8_RGB5_A1_OES = 35737
    end if
    jresult = GL10_jcell_GL_PALETTE8_RGB5_A1_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE8_RGB5_A1_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE8_RGB5_A1_OES = .true.
    GL10_jcell_GL_PALETTE8_RGB5_A1_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE8_RGB8_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE8_RGB8_OES) then
      GL10_jset_GL_PALETTE8_RGB8_OES = .true.
      GL10_jcell_GL_PALETTE8_RGB8_OES = 35733
    end if
    jresult = GL10_jcell_GL_PALETTE8_RGB8_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE8_RGB8_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE8_RGB8_OES = .true.
    GL10_jcell_GL_PALETTE8_RGB8_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE8_RGBA4_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE8_RGBA4_OES) then
      GL10_jset_GL_PALETTE8_RGBA4_OES = .true.
      GL10_jcell_GL_PALETTE8_RGBA4_OES = 35736
    end if
    jresult = GL10_jcell_GL_PALETTE8_RGBA4_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE8_RGBA4_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE8_RGBA4_OES = .true.
    GL10_jcell_GL_PALETTE8_RGBA4_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PALETTE8_RGBA8_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PALETTE8_RGBA8_OES) then
      GL10_jset_GL_PALETTE8_RGBA8_OES = .true.
      GL10_jcell_GL_PALETTE8_RGBA8_OES = 35734
    end if
    jresult = GL10_jcell_GL_PALETTE8_RGBA8_OES
  end function

  subroutine GL10_jsetstatic_GL_PALETTE8_RGBA8_OES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PALETTE8_RGBA8_OES = .true.
    GL10_jcell_GL_PALETTE8_RGBA8_OES = jvalue
  end subroutine

  function GL10_jstatic_GL_PERSPECTIVE_CORRECTION_HINT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PERSPECTIVE_CORRECTION_HINT) then
      GL10_jset_GL_PERSPECTIVE_CORRECTION_HINT = .true.
      GL10_jcell_GL_PERSPECTIVE_CORRECTION_HINT = 3152
    end if
    jresult = GL10_jcell_GL_PERSPECTIVE_CORRECTION_HINT
  end function

  subroutine GL10_jsetstatic_GL_PERSPECTIVE_CORRECTION_HINT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PERSPECTIVE_CORRECTION_HINT = .true.
    GL10_jcell_GL_PERSPECTIVE_CORRECTION_HINT = jvalue
  end subroutine

  function GL10_jstatic_GL_POINT_SMOOTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POINT_SMOOTH) then
      GL10_jset_GL_POINT_SMOOTH = .true.
      GL10_jcell_GL_POINT_SMOOTH = 2832
    end if
    jresult = GL10_jcell_GL_POINT_SMOOTH
  end function

  subroutine GL10_jsetstatic_GL_POINT_SMOOTH(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POINT_SMOOTH = .true.
    GL10_jcell_GL_POINT_SMOOTH = jvalue
  end subroutine

  function GL10_jstatic_GL_POINT_SMOOTH_HINT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POINT_SMOOTH_HINT) then
      GL10_jset_GL_POINT_SMOOTH_HINT = .true.
      GL10_jcell_GL_POINT_SMOOTH_HINT = 3153
    end if
    jresult = GL10_jcell_GL_POINT_SMOOTH_HINT
  end function

  subroutine GL10_jsetstatic_GL_POINT_SMOOTH_HINT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POINT_SMOOTH_HINT = .true.
    GL10_jcell_GL_POINT_SMOOTH_HINT = jvalue
  end subroutine

  function GL10_jstatic_GL_POINTS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POINTS) then
      GL10_jset_GL_POINTS = .true.
      GL10_jcell_GL_POINTS = 0
    end if
    jresult = GL10_jcell_GL_POINTS
  end function

  subroutine GL10_jsetstatic_GL_POINTS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POINTS = .true.
    GL10_jcell_GL_POINTS = jvalue
  end subroutine

  function GL10_jstatic_GL_POINT_FADE_THRESHOLD_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POINT_FADE_THRESHOLD_SIZE) then
      GL10_jset_GL_POINT_FADE_THRESHOLD_SIZE = .true.
      GL10_jcell_GL_POINT_FADE_THRESHOLD_SIZE = 33064
    end if
    jresult = GL10_jcell_GL_POINT_FADE_THRESHOLD_SIZE
  end function

  subroutine GL10_jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POINT_FADE_THRESHOLD_SIZE = .true.
    GL10_jcell_GL_POINT_FADE_THRESHOLD_SIZE = jvalue
  end subroutine

  function GL10_jstatic_GL_POINT_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POINT_SIZE) then
      GL10_jset_GL_POINT_SIZE = .true.
      GL10_jcell_GL_POINT_SIZE = 2833
    end if
    jresult = GL10_jcell_GL_POINT_SIZE
  end function

  subroutine GL10_jsetstatic_GL_POINT_SIZE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POINT_SIZE = .true.
    GL10_jcell_GL_POINT_SIZE = jvalue
  end subroutine

  function GL10_jstatic_GL_POLYGON_OFFSET_FILL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POLYGON_OFFSET_FILL) then
      GL10_jset_GL_POLYGON_OFFSET_FILL = .true.
      GL10_jcell_GL_POLYGON_OFFSET_FILL = 32823
    end if
    jresult = GL10_jcell_GL_POLYGON_OFFSET_FILL
  end function

  subroutine GL10_jsetstatic_GL_POLYGON_OFFSET_FILL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POLYGON_OFFSET_FILL = .true.
    GL10_jcell_GL_POLYGON_OFFSET_FILL = jvalue
  end subroutine

  function GL10_jstatic_GL_POLYGON_SMOOTH_HINT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POLYGON_SMOOTH_HINT) then
      GL10_jset_GL_POLYGON_SMOOTH_HINT = .true.
      GL10_jcell_GL_POLYGON_SMOOTH_HINT = 3155
    end if
    jresult = GL10_jcell_GL_POLYGON_SMOOTH_HINT
  end function

  subroutine GL10_jsetstatic_GL_POLYGON_SMOOTH_HINT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POLYGON_SMOOTH_HINT = .true.
    GL10_jcell_GL_POLYGON_SMOOTH_HINT = jvalue
  end subroutine

  function GL10_jstatic_GL_POSITION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_POSITION) then
      GL10_jset_GL_POSITION = .true.
      GL10_jcell_GL_POSITION = 4611
    end if
    jresult = GL10_jcell_GL_POSITION
  end function

  subroutine GL10_jsetstatic_GL_POSITION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_POSITION = .true.
    GL10_jcell_GL_POSITION = jvalue
  end subroutine

  function GL10_jstatic_GL_PROJECTION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_PROJECTION) then
      GL10_jset_GL_PROJECTION = .true.
      GL10_jcell_GL_PROJECTION = 5889
    end if
    jresult = GL10_jcell_GL_PROJECTION
  end function

  subroutine GL10_jsetstatic_GL_PROJECTION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_PROJECTION = .true.
    GL10_jcell_GL_PROJECTION = jvalue
  end subroutine

  function GL10_jstatic_GL_QUADRATIC_ATTENUATION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_QUADRATIC_ATTENUATION) then
      GL10_jset_GL_QUADRATIC_ATTENUATION = .true.
      GL10_jcell_GL_QUADRATIC_ATTENUATION = 4617
    end if
    jresult = GL10_jcell_GL_QUADRATIC_ATTENUATION
  end function

  subroutine GL10_jsetstatic_GL_QUADRATIC_ATTENUATION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_QUADRATIC_ATTENUATION = .true.
    GL10_jcell_GL_QUADRATIC_ATTENUATION = jvalue
  end subroutine

  function GL10_jstatic_GL_RED_BITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_RED_BITS) then
      GL10_jset_GL_RED_BITS = .true.
      GL10_jcell_GL_RED_BITS = 3410
    end if
    jresult = GL10_jcell_GL_RED_BITS
  end function

  subroutine GL10_jsetstatic_GL_RED_BITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_RED_BITS = .true.
    GL10_jcell_GL_RED_BITS = jvalue
  end subroutine

  function GL10_jstatic_GL_RENDERER() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_RENDERER) then
      GL10_jset_GL_RENDERER = .true.
      GL10_jcell_GL_RENDERER = 7937
    end if
    jresult = GL10_jcell_GL_RENDERER
  end function

  subroutine GL10_jsetstatic_GL_RENDERER(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_RENDERER = .true.
    GL10_jcell_GL_RENDERER = jvalue
  end subroutine

  function GL10_jstatic_GL_REPEAT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_REPEAT) then
      GL10_jset_GL_REPEAT = .true.
      GL10_jcell_GL_REPEAT = 10497
    end if
    jresult = GL10_jcell_GL_REPEAT
  end function

  subroutine GL10_jsetstatic_GL_REPEAT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_REPEAT = .true.
    GL10_jcell_GL_REPEAT = jvalue
  end subroutine

  function GL10_jstatic_GL_REPLACE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_REPLACE) then
      GL10_jset_GL_REPLACE = .true.
      GL10_jcell_GL_REPLACE = 7681
    end if
    jresult = GL10_jcell_GL_REPLACE
  end function

  subroutine GL10_jsetstatic_GL_REPLACE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_REPLACE = .true.
    GL10_jcell_GL_REPLACE = jvalue
  end subroutine

  function GL10_jstatic_GL_RESCALE_NORMAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_RESCALE_NORMAL) then
      GL10_jset_GL_RESCALE_NORMAL = .true.
      GL10_jcell_GL_RESCALE_NORMAL = 32826
    end if
    jresult = GL10_jcell_GL_RESCALE_NORMAL
  end function

  subroutine GL10_jsetstatic_GL_RESCALE_NORMAL(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_RESCALE_NORMAL = .true.
    GL10_jcell_GL_RESCALE_NORMAL = jvalue
  end subroutine

  function GL10_jstatic_GL_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_RGB) then
      GL10_jset_GL_RGB = .true.
      GL10_jcell_GL_RGB = 6407
    end if
    jresult = GL10_jcell_GL_RGB
  end function

  subroutine GL10_jsetstatic_GL_RGB(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_RGB = .true.
    GL10_jcell_GL_RGB = jvalue
  end subroutine

  function GL10_jstatic_GL_RGBA() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_RGBA) then
      GL10_jset_GL_RGBA = .true.
      GL10_jcell_GL_RGBA = 6408
    end if
    jresult = GL10_jcell_GL_RGBA
  end function

  subroutine GL10_jsetstatic_GL_RGBA(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_RGBA = .true.
    GL10_jcell_GL_RGBA = jvalue
  end subroutine

  function GL10_jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SAMPLE_ALPHA_TO_COVERAGE) then
      GL10_jset_GL_SAMPLE_ALPHA_TO_COVERAGE = .true.
      GL10_jcell_GL_SAMPLE_ALPHA_TO_COVERAGE = 32926
    end if
    jresult = GL10_jcell_GL_SAMPLE_ALPHA_TO_COVERAGE
  end function

  subroutine GL10_jsetstatic_GL_SAMPLE_ALPHA_TO_COVERAGE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SAMPLE_ALPHA_TO_COVERAGE = .true.
    GL10_jcell_GL_SAMPLE_ALPHA_TO_COVERAGE = jvalue
  end subroutine

  function GL10_jstatic_GL_SAMPLE_ALPHA_TO_ONE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SAMPLE_ALPHA_TO_ONE) then
      GL10_jset_GL_SAMPLE_ALPHA_TO_ONE = .true.
      GL10_jcell_GL_SAMPLE_ALPHA_TO_ONE = 32927
    end if
    jresult = GL10_jcell_GL_SAMPLE_ALPHA_TO_ONE
  end function

  subroutine GL10_jsetstatic_GL_SAMPLE_ALPHA_TO_ONE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SAMPLE_ALPHA_TO_ONE = .true.
    GL10_jcell_GL_SAMPLE_ALPHA_TO_ONE = jvalue
  end subroutine

  function GL10_jstatic_GL_SAMPLE_COVERAGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SAMPLE_COVERAGE) then
      GL10_jset_GL_SAMPLE_COVERAGE = .true.
      GL10_jcell_GL_SAMPLE_COVERAGE = 32928
    end if
    jresult = GL10_jcell_GL_SAMPLE_COVERAGE
  end function

  subroutine GL10_jsetstatic_GL_SAMPLE_COVERAGE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SAMPLE_COVERAGE = .true.
    GL10_jcell_GL_SAMPLE_COVERAGE = jvalue
  end subroutine

  function GL10_jstatic_GL_SCISSOR_TEST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SCISSOR_TEST) then
      GL10_jset_GL_SCISSOR_TEST = .true.
      GL10_jcell_GL_SCISSOR_TEST = 3089
    end if
    jresult = GL10_jcell_GL_SCISSOR_TEST
  end function

  subroutine GL10_jsetstatic_GL_SCISSOR_TEST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SCISSOR_TEST = .true.
    GL10_jcell_GL_SCISSOR_TEST = jvalue
  end subroutine

  function GL10_jstatic_GL_SET() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SET) then
      GL10_jset_GL_SET = .true.
      GL10_jcell_GL_SET = 5391
    end if
    jresult = GL10_jcell_GL_SET
  end function

  subroutine GL10_jsetstatic_GL_SET(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SET = .true.
    GL10_jcell_GL_SET = jvalue
  end subroutine

  function GL10_jstatic_GL_SHININESS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SHININESS) then
      GL10_jset_GL_SHININESS = .true.
      GL10_jcell_GL_SHININESS = 5633
    end if
    jresult = GL10_jcell_GL_SHININESS
  end function

  subroutine GL10_jsetstatic_GL_SHININESS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SHININESS = .true.
    GL10_jcell_GL_SHININESS = jvalue
  end subroutine

  function GL10_jstatic_GL_SHORT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SHORT) then
      GL10_jset_GL_SHORT = .true.
      GL10_jcell_GL_SHORT = 5122
    end if
    jresult = GL10_jcell_GL_SHORT
  end function

  subroutine GL10_jsetstatic_GL_SHORT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SHORT = .true.
    GL10_jcell_GL_SHORT = jvalue
  end subroutine

  function GL10_jstatic_GL_SMOOTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SMOOTH) then
      GL10_jset_GL_SMOOTH = .true.
      GL10_jcell_GL_SMOOTH = 7425
    end if
    jresult = GL10_jcell_GL_SMOOTH
  end function

  subroutine GL10_jsetstatic_GL_SMOOTH(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SMOOTH = .true.
    GL10_jcell_GL_SMOOTH = jvalue
  end subroutine

  function GL10_jstatic_GL_SMOOTH_LINE_WIDTH_RANGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SMOOTH_LINE_WIDTH_RANGE) then
      GL10_jset_GL_SMOOTH_LINE_WIDTH_RANGE = .true.
      GL10_jcell_GL_SMOOTH_LINE_WIDTH_RANGE = 2850
    end if
    jresult = GL10_jcell_GL_SMOOTH_LINE_WIDTH_RANGE
  end function

  subroutine GL10_jsetstatic_GL_SMOOTH_LINE_WIDTH_RANGE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SMOOTH_LINE_WIDTH_RANGE = .true.
    GL10_jcell_GL_SMOOTH_LINE_WIDTH_RANGE = jvalue
  end subroutine

  function GL10_jstatic_GL_SMOOTH_POINT_SIZE_RANGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SMOOTH_POINT_SIZE_RANGE) then
      GL10_jset_GL_SMOOTH_POINT_SIZE_RANGE = .true.
      GL10_jcell_GL_SMOOTH_POINT_SIZE_RANGE = 2834
    end if
    jresult = GL10_jcell_GL_SMOOTH_POINT_SIZE_RANGE
  end function

  subroutine GL10_jsetstatic_GL_SMOOTH_POINT_SIZE_RANGE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SMOOTH_POINT_SIZE_RANGE = .true.
    GL10_jcell_GL_SMOOTH_POINT_SIZE_RANGE = jvalue
  end subroutine

  function GL10_jstatic_GL_SPECULAR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SPECULAR) then
      GL10_jset_GL_SPECULAR = .true.
      GL10_jcell_GL_SPECULAR = 4610
    end if
    jresult = GL10_jcell_GL_SPECULAR
  end function

  subroutine GL10_jsetstatic_GL_SPECULAR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SPECULAR = .true.
    GL10_jcell_GL_SPECULAR = jvalue
  end subroutine

  function GL10_jstatic_GL_SPOT_CUTOFF() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SPOT_CUTOFF) then
      GL10_jset_GL_SPOT_CUTOFF = .true.
      GL10_jcell_GL_SPOT_CUTOFF = 4614
    end if
    jresult = GL10_jcell_GL_SPOT_CUTOFF
  end function

  subroutine GL10_jsetstatic_GL_SPOT_CUTOFF(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SPOT_CUTOFF = .true.
    GL10_jcell_GL_SPOT_CUTOFF = jvalue
  end subroutine

  function GL10_jstatic_GL_SPOT_DIRECTION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SPOT_DIRECTION) then
      GL10_jset_GL_SPOT_DIRECTION = .true.
      GL10_jcell_GL_SPOT_DIRECTION = 4612
    end if
    jresult = GL10_jcell_GL_SPOT_DIRECTION
  end function

  subroutine GL10_jsetstatic_GL_SPOT_DIRECTION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SPOT_DIRECTION = .true.
    GL10_jcell_GL_SPOT_DIRECTION = jvalue
  end subroutine

  function GL10_jstatic_GL_SPOT_EXPONENT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SPOT_EXPONENT) then
      GL10_jset_GL_SPOT_EXPONENT = .true.
      GL10_jcell_GL_SPOT_EXPONENT = 4613
    end if
    jresult = GL10_jcell_GL_SPOT_EXPONENT
  end function

  subroutine GL10_jsetstatic_GL_SPOT_EXPONENT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SPOT_EXPONENT = .true.
    GL10_jcell_GL_SPOT_EXPONENT = jvalue
  end subroutine

  function GL10_jstatic_GL_SRC_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SRC_ALPHA) then
      GL10_jset_GL_SRC_ALPHA = .true.
      GL10_jcell_GL_SRC_ALPHA = 770
    end if
    jresult = GL10_jcell_GL_SRC_ALPHA
  end function

  subroutine GL10_jsetstatic_GL_SRC_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SRC_ALPHA = .true.
    GL10_jcell_GL_SRC_ALPHA = jvalue
  end subroutine

  function GL10_jstatic_GL_SRC_ALPHA_SATURATE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SRC_ALPHA_SATURATE) then
      GL10_jset_GL_SRC_ALPHA_SATURATE = .true.
      GL10_jcell_GL_SRC_ALPHA_SATURATE = 776
    end if
    jresult = GL10_jcell_GL_SRC_ALPHA_SATURATE
  end function

  subroutine GL10_jsetstatic_GL_SRC_ALPHA_SATURATE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SRC_ALPHA_SATURATE = .true.
    GL10_jcell_GL_SRC_ALPHA_SATURATE = jvalue
  end subroutine

  function GL10_jstatic_GL_SRC_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SRC_COLOR) then
      GL10_jset_GL_SRC_COLOR = .true.
      GL10_jcell_GL_SRC_COLOR = 768
    end if
    jresult = GL10_jcell_GL_SRC_COLOR
  end function

  subroutine GL10_jsetstatic_GL_SRC_COLOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SRC_COLOR = .true.
    GL10_jcell_GL_SRC_COLOR = jvalue
  end subroutine

  function GL10_jstatic_GL_STACK_OVERFLOW() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_STACK_OVERFLOW) then
      GL10_jset_GL_STACK_OVERFLOW = .true.
      GL10_jcell_GL_STACK_OVERFLOW = 1283
    end if
    jresult = GL10_jcell_GL_STACK_OVERFLOW
  end function

  subroutine GL10_jsetstatic_GL_STACK_OVERFLOW(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_STACK_OVERFLOW = .true.
    GL10_jcell_GL_STACK_OVERFLOW = jvalue
  end subroutine

  function GL10_jstatic_GL_STACK_UNDERFLOW() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_STACK_UNDERFLOW) then
      GL10_jset_GL_STACK_UNDERFLOW = .true.
      GL10_jcell_GL_STACK_UNDERFLOW = 1284
    end if
    jresult = GL10_jcell_GL_STACK_UNDERFLOW
  end function

  subroutine GL10_jsetstatic_GL_STACK_UNDERFLOW(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_STACK_UNDERFLOW = .true.
    GL10_jcell_GL_STACK_UNDERFLOW = jvalue
  end subroutine

  function GL10_jstatic_GL_STENCIL_BITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_STENCIL_BITS) then
      GL10_jset_GL_STENCIL_BITS = .true.
      GL10_jcell_GL_STENCIL_BITS = 3415
    end if
    jresult = GL10_jcell_GL_STENCIL_BITS
  end function

  subroutine GL10_jsetstatic_GL_STENCIL_BITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_STENCIL_BITS = .true.
    GL10_jcell_GL_STENCIL_BITS = jvalue
  end subroutine

  function GL10_jstatic_GL_STENCIL_BUFFER_BIT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_STENCIL_BUFFER_BIT) then
      GL10_jset_GL_STENCIL_BUFFER_BIT = .true.
      GL10_jcell_GL_STENCIL_BUFFER_BIT = 1024
    end if
    jresult = GL10_jcell_GL_STENCIL_BUFFER_BIT
  end function

  subroutine GL10_jsetstatic_GL_STENCIL_BUFFER_BIT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_STENCIL_BUFFER_BIT = .true.
    GL10_jcell_GL_STENCIL_BUFFER_BIT = jvalue
  end subroutine

  function GL10_jstatic_GL_STENCIL_TEST() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_STENCIL_TEST) then
      GL10_jset_GL_STENCIL_TEST = .true.
      GL10_jcell_GL_STENCIL_TEST = 2960
    end if
    jresult = GL10_jcell_GL_STENCIL_TEST
  end function

  subroutine GL10_jsetstatic_GL_STENCIL_TEST(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_STENCIL_TEST = .true.
    GL10_jcell_GL_STENCIL_TEST = jvalue
  end subroutine

  function GL10_jstatic_GL_SUBPIXEL_BITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_SUBPIXEL_BITS) then
      GL10_jset_GL_SUBPIXEL_BITS = .true.
      GL10_jcell_GL_SUBPIXEL_BITS = 3408
    end if
    jresult = GL10_jcell_GL_SUBPIXEL_BITS
  end function

  subroutine GL10_jsetstatic_GL_SUBPIXEL_BITS(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_SUBPIXEL_BITS = .true.
    GL10_jcell_GL_SUBPIXEL_BITS = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE) then
      GL10_jset_GL_TEXTURE = .true.
      GL10_jcell_GL_TEXTURE = 5890
    end if
    jresult = GL10_jcell_GL_TEXTURE
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE = .true.
    GL10_jcell_GL_TEXTURE = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_2D() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_2D) then
      GL10_jset_GL_TEXTURE_2D = .true.
      GL10_jcell_GL_TEXTURE_2D = 3553
    end if
    jresult = GL10_jcell_GL_TEXTURE_2D
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_2D(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_2D = .true.
    GL10_jcell_GL_TEXTURE_2D = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_COORD_ARRAY() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_COORD_ARRAY) then
      GL10_jset_GL_TEXTURE_COORD_ARRAY = .true.
      GL10_jcell_GL_TEXTURE_COORD_ARRAY = 32888
    end if
    jresult = GL10_jcell_GL_TEXTURE_COORD_ARRAY
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_COORD_ARRAY(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_COORD_ARRAY = .true.
    GL10_jcell_GL_TEXTURE_COORD_ARRAY = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_ENV() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_ENV) then
      GL10_jset_GL_TEXTURE_ENV = .true.
      GL10_jcell_GL_TEXTURE_ENV = 8960
    end if
    jresult = GL10_jcell_GL_TEXTURE_ENV
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_ENV(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_ENV = .true.
    GL10_jcell_GL_TEXTURE_ENV = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_ENV_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_ENV_COLOR) then
      GL10_jset_GL_TEXTURE_ENV_COLOR = .true.
      GL10_jcell_GL_TEXTURE_ENV_COLOR = 8705
    end if
    jresult = GL10_jcell_GL_TEXTURE_ENV_COLOR
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_ENV_COLOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_ENV_COLOR = .true.
    GL10_jcell_GL_TEXTURE_ENV_COLOR = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_ENV_MODE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_ENV_MODE) then
      GL10_jset_GL_TEXTURE_ENV_MODE = .true.
      GL10_jcell_GL_TEXTURE_ENV_MODE = 8704
    end if
    jresult = GL10_jcell_GL_TEXTURE_ENV_MODE
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_ENV_MODE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_ENV_MODE = .true.
    GL10_jcell_GL_TEXTURE_ENV_MODE = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_MAG_FILTER() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_MAG_FILTER) then
      GL10_jset_GL_TEXTURE_MAG_FILTER = .true.
      GL10_jcell_GL_TEXTURE_MAG_FILTER = 10240
    end if
    jresult = GL10_jcell_GL_TEXTURE_MAG_FILTER
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_MAG_FILTER(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_MAG_FILTER = .true.
    GL10_jcell_GL_TEXTURE_MAG_FILTER = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_MIN_FILTER() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_MIN_FILTER) then
      GL10_jset_GL_TEXTURE_MIN_FILTER = .true.
      GL10_jcell_GL_TEXTURE_MIN_FILTER = 10241
    end if
    jresult = GL10_jcell_GL_TEXTURE_MIN_FILTER
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_MIN_FILTER(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_MIN_FILTER = .true.
    GL10_jcell_GL_TEXTURE_MIN_FILTER = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_WRAP_S() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_WRAP_S) then
      GL10_jset_GL_TEXTURE_WRAP_S = .true.
      GL10_jcell_GL_TEXTURE_WRAP_S = 10242
    end if
    jresult = GL10_jcell_GL_TEXTURE_WRAP_S
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_WRAP_S(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_WRAP_S = .true.
    GL10_jcell_GL_TEXTURE_WRAP_S = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE_WRAP_T() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE_WRAP_T) then
      GL10_jset_GL_TEXTURE_WRAP_T = .true.
      GL10_jcell_GL_TEXTURE_WRAP_T = 10243
    end if
    jresult = GL10_jcell_GL_TEXTURE_WRAP_T
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE_WRAP_T(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE_WRAP_T = .true.
    GL10_jcell_GL_TEXTURE_WRAP_T = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE0() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE0) then
      GL10_jset_GL_TEXTURE0 = .true.
      GL10_jcell_GL_TEXTURE0 = 33984
    end if
    jresult = GL10_jcell_GL_TEXTURE0
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE0(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE0 = .true.
    GL10_jcell_GL_TEXTURE0 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE1() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE1) then
      GL10_jset_GL_TEXTURE1 = .true.
      GL10_jcell_GL_TEXTURE1 = 33985
    end if
    jresult = GL10_jcell_GL_TEXTURE1
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE1(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE1 = .true.
    GL10_jcell_GL_TEXTURE1 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE2() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE2) then
      GL10_jset_GL_TEXTURE2 = .true.
      GL10_jcell_GL_TEXTURE2 = 33986
    end if
    jresult = GL10_jcell_GL_TEXTURE2
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE2(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE2 = .true.
    GL10_jcell_GL_TEXTURE2 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE3() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE3) then
      GL10_jset_GL_TEXTURE3 = .true.
      GL10_jcell_GL_TEXTURE3 = 33987
    end if
    jresult = GL10_jcell_GL_TEXTURE3
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE3(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE3 = .true.
    GL10_jcell_GL_TEXTURE3 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE4() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE4) then
      GL10_jset_GL_TEXTURE4 = .true.
      GL10_jcell_GL_TEXTURE4 = 33988
    end if
    jresult = GL10_jcell_GL_TEXTURE4
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE4(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE4 = .true.
    GL10_jcell_GL_TEXTURE4 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE5() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE5) then
      GL10_jset_GL_TEXTURE5 = .true.
      GL10_jcell_GL_TEXTURE5 = 33989
    end if
    jresult = GL10_jcell_GL_TEXTURE5
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE5(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE5 = .true.
    GL10_jcell_GL_TEXTURE5 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE6() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE6) then
      GL10_jset_GL_TEXTURE6 = .true.
      GL10_jcell_GL_TEXTURE6 = 33990
    end if
    jresult = GL10_jcell_GL_TEXTURE6
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE6(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE6 = .true.
    GL10_jcell_GL_TEXTURE6 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE7() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE7) then
      GL10_jset_GL_TEXTURE7 = .true.
      GL10_jcell_GL_TEXTURE7 = 33991
    end if
    jresult = GL10_jcell_GL_TEXTURE7
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE7(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE7 = .true.
    GL10_jcell_GL_TEXTURE7 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE8() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE8) then
      GL10_jset_GL_TEXTURE8 = .true.
      GL10_jcell_GL_TEXTURE8 = 33992
    end if
    jresult = GL10_jcell_GL_TEXTURE8
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE8(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE8 = .true.
    GL10_jcell_GL_TEXTURE8 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE9() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE9) then
      GL10_jset_GL_TEXTURE9 = .true.
      GL10_jcell_GL_TEXTURE9 = 33993
    end if
    jresult = GL10_jcell_GL_TEXTURE9
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE9(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE9 = .true.
    GL10_jcell_GL_TEXTURE9 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE10() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE10) then
      GL10_jset_GL_TEXTURE10 = .true.
      GL10_jcell_GL_TEXTURE10 = 33994
    end if
    jresult = GL10_jcell_GL_TEXTURE10
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE10(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE10 = .true.
    GL10_jcell_GL_TEXTURE10 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE11() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE11) then
      GL10_jset_GL_TEXTURE11 = .true.
      GL10_jcell_GL_TEXTURE11 = 33995
    end if
    jresult = GL10_jcell_GL_TEXTURE11
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE11(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE11 = .true.
    GL10_jcell_GL_TEXTURE11 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE12() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE12) then
      GL10_jset_GL_TEXTURE12 = .true.
      GL10_jcell_GL_TEXTURE12 = 33996
    end if
    jresult = GL10_jcell_GL_TEXTURE12
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE12(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE12 = .true.
    GL10_jcell_GL_TEXTURE12 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE13() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE13) then
      GL10_jset_GL_TEXTURE13 = .true.
      GL10_jcell_GL_TEXTURE13 = 33997
    end if
    jresult = GL10_jcell_GL_TEXTURE13
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE13(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE13 = .true.
    GL10_jcell_GL_TEXTURE13 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE14() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE14) then
      GL10_jset_GL_TEXTURE14 = .true.
      GL10_jcell_GL_TEXTURE14 = 33998
    end if
    jresult = GL10_jcell_GL_TEXTURE14
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE14(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE14 = .true.
    GL10_jcell_GL_TEXTURE14 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE15() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE15) then
      GL10_jset_GL_TEXTURE15 = .true.
      GL10_jcell_GL_TEXTURE15 = 33999
    end if
    jresult = GL10_jcell_GL_TEXTURE15
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE15(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE15 = .true.
    GL10_jcell_GL_TEXTURE15 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE16() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE16) then
      GL10_jset_GL_TEXTURE16 = .true.
      GL10_jcell_GL_TEXTURE16 = 34000
    end if
    jresult = GL10_jcell_GL_TEXTURE16
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE16(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE16 = .true.
    GL10_jcell_GL_TEXTURE16 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE17() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE17) then
      GL10_jset_GL_TEXTURE17 = .true.
      GL10_jcell_GL_TEXTURE17 = 34001
    end if
    jresult = GL10_jcell_GL_TEXTURE17
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE17(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE17 = .true.
    GL10_jcell_GL_TEXTURE17 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE18() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE18) then
      GL10_jset_GL_TEXTURE18 = .true.
      GL10_jcell_GL_TEXTURE18 = 34002
    end if
    jresult = GL10_jcell_GL_TEXTURE18
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE18(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE18 = .true.
    GL10_jcell_GL_TEXTURE18 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE19() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE19) then
      GL10_jset_GL_TEXTURE19 = .true.
      GL10_jcell_GL_TEXTURE19 = 34003
    end if
    jresult = GL10_jcell_GL_TEXTURE19
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE19(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE19 = .true.
    GL10_jcell_GL_TEXTURE19 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE20() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE20) then
      GL10_jset_GL_TEXTURE20 = .true.
      GL10_jcell_GL_TEXTURE20 = 34004
    end if
    jresult = GL10_jcell_GL_TEXTURE20
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE20(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE20 = .true.
    GL10_jcell_GL_TEXTURE20 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE21() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE21) then
      GL10_jset_GL_TEXTURE21 = .true.
      GL10_jcell_GL_TEXTURE21 = 34005
    end if
    jresult = GL10_jcell_GL_TEXTURE21
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE21(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE21 = .true.
    GL10_jcell_GL_TEXTURE21 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE22() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE22) then
      GL10_jset_GL_TEXTURE22 = .true.
      GL10_jcell_GL_TEXTURE22 = 34006
    end if
    jresult = GL10_jcell_GL_TEXTURE22
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE22(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE22 = .true.
    GL10_jcell_GL_TEXTURE22 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE23() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE23) then
      GL10_jset_GL_TEXTURE23 = .true.
      GL10_jcell_GL_TEXTURE23 = 34007
    end if
    jresult = GL10_jcell_GL_TEXTURE23
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE23(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE23 = .true.
    GL10_jcell_GL_TEXTURE23 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE24() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE24) then
      GL10_jset_GL_TEXTURE24 = .true.
      GL10_jcell_GL_TEXTURE24 = 34008
    end if
    jresult = GL10_jcell_GL_TEXTURE24
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE24(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE24 = .true.
    GL10_jcell_GL_TEXTURE24 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE25() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE25) then
      GL10_jset_GL_TEXTURE25 = .true.
      GL10_jcell_GL_TEXTURE25 = 34009
    end if
    jresult = GL10_jcell_GL_TEXTURE25
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE25(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE25 = .true.
    GL10_jcell_GL_TEXTURE25 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE26() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE26) then
      GL10_jset_GL_TEXTURE26 = .true.
      GL10_jcell_GL_TEXTURE26 = 34010
    end if
    jresult = GL10_jcell_GL_TEXTURE26
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE26(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE26 = .true.
    GL10_jcell_GL_TEXTURE26 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE27() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE27) then
      GL10_jset_GL_TEXTURE27 = .true.
      GL10_jcell_GL_TEXTURE27 = 34011
    end if
    jresult = GL10_jcell_GL_TEXTURE27
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE27(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE27 = .true.
    GL10_jcell_GL_TEXTURE27 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE28() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE28) then
      GL10_jset_GL_TEXTURE28 = .true.
      GL10_jcell_GL_TEXTURE28 = 34012
    end if
    jresult = GL10_jcell_GL_TEXTURE28
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE28(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE28 = .true.
    GL10_jcell_GL_TEXTURE28 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE29() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE29) then
      GL10_jset_GL_TEXTURE29 = .true.
      GL10_jcell_GL_TEXTURE29 = 34013
    end if
    jresult = GL10_jcell_GL_TEXTURE29
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE29(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE29 = .true.
    GL10_jcell_GL_TEXTURE29 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE30() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE30) then
      GL10_jset_GL_TEXTURE30 = .true.
      GL10_jcell_GL_TEXTURE30 = 34014
    end if
    jresult = GL10_jcell_GL_TEXTURE30
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE30(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE30 = .true.
    GL10_jcell_GL_TEXTURE30 = jvalue
  end subroutine

  function GL10_jstatic_GL_TEXTURE31() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TEXTURE31) then
      GL10_jset_GL_TEXTURE31 = .true.
      GL10_jcell_GL_TEXTURE31 = 34015
    end if
    jresult = GL10_jcell_GL_TEXTURE31
  end function

  subroutine GL10_jsetstatic_GL_TEXTURE31(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TEXTURE31 = .true.
    GL10_jcell_GL_TEXTURE31 = jvalue
  end subroutine

  function GL10_jstatic_GL_TRIANGLE_FAN() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TRIANGLE_FAN) then
      GL10_jset_GL_TRIANGLE_FAN = .true.
      GL10_jcell_GL_TRIANGLE_FAN = 6
    end if
    jresult = GL10_jcell_GL_TRIANGLE_FAN
  end function

  subroutine GL10_jsetstatic_GL_TRIANGLE_FAN(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TRIANGLE_FAN = .true.
    GL10_jcell_GL_TRIANGLE_FAN = jvalue
  end subroutine

  function GL10_jstatic_GL_TRIANGLE_STRIP() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TRIANGLE_STRIP) then
      GL10_jset_GL_TRIANGLE_STRIP = .true.
      GL10_jcell_GL_TRIANGLE_STRIP = 5
    end if
    jresult = GL10_jcell_GL_TRIANGLE_STRIP
  end function

  subroutine GL10_jsetstatic_GL_TRIANGLE_STRIP(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TRIANGLE_STRIP = .true.
    GL10_jcell_GL_TRIANGLE_STRIP = jvalue
  end subroutine

  function GL10_jstatic_GL_TRIANGLES() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TRIANGLES) then
      GL10_jset_GL_TRIANGLES = .true.
      GL10_jcell_GL_TRIANGLES = 4
    end if
    jresult = GL10_jcell_GL_TRIANGLES
  end function

  subroutine GL10_jsetstatic_GL_TRIANGLES(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TRIANGLES = .true.
    GL10_jcell_GL_TRIANGLES = jvalue
  end subroutine

  function GL10_jstatic_GL_TRUE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_TRUE) then
      GL10_jset_GL_TRUE = .true.
      GL10_jcell_GL_TRUE = 1
    end if
    jresult = GL10_jcell_GL_TRUE
  end function

  subroutine GL10_jsetstatic_GL_TRUE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_TRUE = .true.
    GL10_jcell_GL_TRUE = jvalue
  end subroutine

  function GL10_jstatic_GL_UNPACK_ALIGNMENT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_UNPACK_ALIGNMENT) then
      GL10_jset_GL_UNPACK_ALIGNMENT = .true.
      GL10_jcell_GL_UNPACK_ALIGNMENT = 3317
    end if
    jresult = GL10_jcell_GL_UNPACK_ALIGNMENT
  end function

  subroutine GL10_jsetstatic_GL_UNPACK_ALIGNMENT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_UNPACK_ALIGNMENT = .true.
    GL10_jcell_GL_UNPACK_ALIGNMENT = jvalue
  end subroutine

  function GL10_jstatic_GL_UNSIGNED_BYTE() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_UNSIGNED_BYTE) then
      GL10_jset_GL_UNSIGNED_BYTE = .true.
      GL10_jcell_GL_UNSIGNED_BYTE = 5121
    end if
    jresult = GL10_jcell_GL_UNSIGNED_BYTE
  end function

  subroutine GL10_jsetstatic_GL_UNSIGNED_BYTE(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_UNSIGNED_BYTE = .true.
    GL10_jcell_GL_UNSIGNED_BYTE = jvalue
  end subroutine

  function GL10_jstatic_GL_UNSIGNED_SHORT() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_UNSIGNED_SHORT) then
      GL10_jset_GL_UNSIGNED_SHORT = .true.
      GL10_jcell_GL_UNSIGNED_SHORT = 5123
    end if
    jresult = GL10_jcell_GL_UNSIGNED_SHORT
  end function

  subroutine GL10_jsetstatic_GL_UNSIGNED_SHORT(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_UNSIGNED_SHORT = .true.
    GL10_jcell_GL_UNSIGNED_SHORT = jvalue
  end subroutine

  function GL10_jstatic_GL_UNSIGNED_SHORT_4_4_4_4() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_UNSIGNED_SHORT_4_4_4_4) then
      GL10_jset_GL_UNSIGNED_SHORT_4_4_4_4 = .true.
      GL10_jcell_GL_UNSIGNED_SHORT_4_4_4_4 = 32819
    end if
    jresult = GL10_jcell_GL_UNSIGNED_SHORT_4_4_4_4
  end function

  subroutine GL10_jsetstatic_GL_UNSIGNED_SHORT_4_4_4_4(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_UNSIGNED_SHORT_4_4_4_4 = .true.
    GL10_jcell_GL_UNSIGNED_SHORT_4_4_4_4 = jvalue
  end subroutine

  function GL10_jstatic_GL_UNSIGNED_SHORT_5_5_5_1() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_UNSIGNED_SHORT_5_5_5_1) then
      GL10_jset_GL_UNSIGNED_SHORT_5_5_5_1 = .true.
      GL10_jcell_GL_UNSIGNED_SHORT_5_5_5_1 = 32820
    end if
    jresult = GL10_jcell_GL_UNSIGNED_SHORT_5_5_5_1
  end function

  subroutine GL10_jsetstatic_GL_UNSIGNED_SHORT_5_5_5_1(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_UNSIGNED_SHORT_5_5_5_1 = .true.
    GL10_jcell_GL_UNSIGNED_SHORT_5_5_5_1 = jvalue
  end subroutine

  function GL10_jstatic_GL_UNSIGNED_SHORT_5_6_5() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_UNSIGNED_SHORT_5_6_5) then
      GL10_jset_GL_UNSIGNED_SHORT_5_6_5 = .true.
      GL10_jcell_GL_UNSIGNED_SHORT_5_6_5 = 33635
    end if
    jresult = GL10_jcell_GL_UNSIGNED_SHORT_5_6_5
  end function

  subroutine GL10_jsetstatic_GL_UNSIGNED_SHORT_5_6_5(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_UNSIGNED_SHORT_5_6_5 = .true.
    GL10_jcell_GL_UNSIGNED_SHORT_5_6_5 = jvalue
  end subroutine

  function GL10_jstatic_GL_VENDOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_VENDOR) then
      GL10_jset_GL_VENDOR = .true.
      GL10_jcell_GL_VENDOR = 7936
    end if
    jresult = GL10_jcell_GL_VENDOR
  end function

  subroutine GL10_jsetstatic_GL_VENDOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_VENDOR = .true.
    GL10_jcell_GL_VENDOR = jvalue
  end subroutine

  function GL10_jstatic_GL_VERSION() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_VERSION) then
      GL10_jset_GL_VERSION = .true.
      GL10_jcell_GL_VERSION = 7938
    end if
    jresult = GL10_jcell_GL_VERSION
  end function

  subroutine GL10_jsetstatic_GL_VERSION(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_VERSION = .true.
    GL10_jcell_GL_VERSION = jvalue
  end subroutine

  function GL10_jstatic_GL_VERTEX_ARRAY() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_VERTEX_ARRAY) then
      GL10_jset_GL_VERTEX_ARRAY = .true.
      GL10_jcell_GL_VERTEX_ARRAY = 32884
    end if
    jresult = GL10_jcell_GL_VERTEX_ARRAY
  end function

  subroutine GL10_jsetstatic_GL_VERTEX_ARRAY(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_VERTEX_ARRAY = .true.
    GL10_jcell_GL_VERTEX_ARRAY = jvalue
  end subroutine

  function GL10_jstatic_GL_XOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_XOR) then
      GL10_jset_GL_XOR = .true.
      GL10_jcell_GL_XOR = 5382
    end if
    jresult = GL10_jcell_GL_XOR
  end function

  subroutine GL10_jsetstatic_GL_XOR(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_XOR = .true.
    GL10_jcell_GL_XOR = jvalue
  end subroutine

  function GL10_jstatic_GL_ZERO() result(jresult)
    integer(4) :: jresult
    if (.not. GL10_jset_GL_ZERO) then
      GL10_jset_GL_ZERO = .true.
      GL10_jcell_GL_ZERO = 0
    end if
    jresult = GL10_jcell_GL_ZERO
  end function

  subroutine GL10_jsetstatic_GL_ZERO(jvalue)
    integer(4), value :: jvalue
    GL10_jset_GL_ZERO = .true.
    GL10_jcell_GL_ZERO = jvalue
  end subroutine

  function GL10_jnew_0() result(this)
    class(GL10), pointer :: this
    allocate(this)
    this%jclass = 'GL10'
  end function

  recursive subroutine GL10_jm_glActiveTexture_1(this, j_texture)
    class(GL10), target :: this
    integer(4), value :: j_texture
    error stop 'AbstractMethodError: GL10.glActiveTexture'
  end subroutine

  recursive subroutine GL10_jm_glAlphaFunc_2(this, j_func, j_ref)
    class(GL10), target :: this
    integer(4), value :: j_func
    real(4), value :: j_ref
    error stop 'AbstractMethodError: GL10.glAlphaFunc'
  end subroutine

  recursive subroutine GL10_jm_glBindTexture_2(this, j_target, j_texture)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_texture
    error stop 'AbstractMethodError: GL10.glBindTexture'
  end subroutine

  recursive subroutine GL10_jm_glBlendFunc_2(this, j_sfactor, j_dfactor)
    class(GL10), target :: this
    integer(4), value :: j_sfactor
    integer(4), value :: j_dfactor
    error stop 'AbstractMethodError: GL10.glBlendFunc'
  end subroutine

  recursive subroutine GL10_jm_glClear_1(this, j_mask)
    class(GL10), target :: this
    integer(4), value :: j_mask
    error stop 'AbstractMethodError: GL10.glClear'
  end subroutine

  recursive subroutine GL10_jm_glClearColor_4(this, j_red, j_green, j_blue, j_alpha)
    class(GL10), target :: this
    real(4), value :: j_red
    real(4), value :: j_green
    real(4), value :: j_blue
    real(4), value :: j_alpha
    error stop 'AbstractMethodError: GL10.glClearColor'
  end subroutine

  recursive subroutine GL10_jm_glClearDepthf_1(this, j_depth)
    class(GL10), target :: this
    real(4), value :: j_depth
    error stop 'AbstractMethodError: GL10.glClearDepthf'
  end subroutine

  recursive subroutine GL10_jm_glClearStencil_1(this, j_s)
    class(GL10), target :: this
    integer(4), value :: j_s
    error stop 'AbstractMethodError: GL10.glClearStencil'
  end subroutine

  recursive subroutine GL10_jm_glClientActiveTexture_1(this, j_texture)
    class(GL10), target :: this
    integer(4), value :: j_texture
    error stop 'AbstractMethodError: GL10.glClientActiveTexture'
  end subroutine

  recursive subroutine GL10_jm_glColor4f_4(this, j_red, j_green, j_blue, j_alpha)
    class(GL10), target :: this
    real(4), value :: j_red
    real(4), value :: j_green
    real(4), value :: j_blue
    real(4), value :: j_alpha
    error stop 'AbstractMethodError: GL10.glColor4f'
  end subroutine

  recursive subroutine GL10_jm_glColorMask_4(this, j_red, j_green, j_blue, j_alpha)
    class(GL10), target :: this
    logical, value :: j_red
    logical, value :: j_green
    logical, value :: j_blue
    logical, value :: j_alpha
    error stop 'AbstractMethodError: GL10.glColorMask'
  end subroutine

  recursive subroutine GL10_jm_glColorPointer_4(this, j_size, j_type, j_stride, j_pointer)
    class(GL10), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
    error stop 'AbstractMethodError: GL10.glColorPointer'
  end subroutine

  recursive subroutine GL10_jm_glCompressedTexImage2D_8(this, j_target, j_level, j_internalformat, j_width, j_height, j_border, j_imageSize, j_data)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_internalformat
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_border
    integer(4), value :: j_imageSize
    class(Buffer), target, optional :: j_data
    error stop 'AbstractMethodError: GL10.glCompressedTexImage2D'
  end subroutine

  recursive subroutine GL10_jm_glCompressedTexSubImage2D_9(this, j_target, j_level, j_xoffset, j_yoffset, j_width, j_height, j_format, j_imageSize, j_data)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_xoffset
    integer(4), value :: j_yoffset
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_format
    integer(4), value :: j_imageSize
    class(Buffer), target, optional :: j_data
    error stop 'AbstractMethodError: GL10.glCompressedTexSubImage2D'
  end subroutine

  recursive subroutine GL10_jm_glCopyTexImage2D_8(this, j_target, j_level, j_internalformat, j_x, j_y, j_width, j_height, j_border)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_internalformat
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_border
    error stop 'AbstractMethodError: GL10.glCopyTexImage2D'
  end subroutine

  recursive subroutine GL10_jm_glCopyTexSubImage2D_8(this, j_target, j_level, j_xoffset, j_yoffset, j_x, j_y, j_width, j_height)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_xoffset
    integer(4), value :: j_yoffset
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    error stop 'AbstractMethodError: GL10.glCopyTexSubImage2D'
  end subroutine

  recursive subroutine GL10_jm_glCullFace_1(this, j_mode)
    class(GL10), target :: this
    integer(4), value :: j_mode
    error stop 'AbstractMethodError: GL10.glCullFace'
  end subroutine

  recursive subroutine GL10_jm_glDeleteTextures_3(this, j_n, j_textures, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_n
    integer(4) :: j_textures(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glDeleteTextures'
  end subroutine

  recursive subroutine GL10_jm_glDeleteTextures_2(this, j_n, j_textures)
    class(GL10), target :: this
    integer(4), value :: j_n
    class(IntBuffer), target, optional :: j_textures
    error stop 'AbstractMethodError: GL10.glDeleteTextures'
  end subroutine

  recursive subroutine GL10_jm_glDepthFunc_1(this, j_func)
    class(GL10), target :: this
    integer(4), value :: j_func
    error stop 'AbstractMethodError: GL10.glDepthFunc'
  end subroutine

  recursive subroutine GL10_jm_glDepthMask_1(this, j_flag)
    class(GL10), target :: this
    logical, value :: j_flag
    error stop 'AbstractMethodError: GL10.glDepthMask'
  end subroutine

  recursive subroutine GL10_jm_glDepthRangef_2(this, j_zNear, j_zFar)
    class(GL10), target :: this
    real(4), value :: j_zNear
    real(4), value :: j_zFar
    error stop 'AbstractMethodError: GL10.glDepthRangef'
  end subroutine

  recursive subroutine GL10_jm_glDisable_1(this, j_cap)
    class(GL10), target :: this
    integer(4), value :: j_cap
    error stop 'AbstractMethodError: GL10.glDisable'
  end subroutine

  recursive subroutine GL10_jm_glDisableClientState_1(this, j_array)
    class(GL10), target :: this
    integer(4), value :: j_array
    error stop 'AbstractMethodError: GL10.glDisableClientState'
  end subroutine

  recursive subroutine GL10_jm_glDrawArrays_3(this, j_mode, j_first, j_count)
    class(GL10), target :: this
    integer(4), value :: j_mode
    integer(4), value :: j_first
    integer(4), value :: j_count
    error stop 'AbstractMethodError: GL10.glDrawArrays'
  end subroutine

  recursive subroutine GL10_jm_glDrawElements_4(this, j_mode, j_count, j_type, j_indices)
    class(GL10), target :: this
    integer(4), value :: j_mode
    integer(4), value :: j_count
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_indices
    error stop 'AbstractMethodError: GL10.glDrawElements'
  end subroutine

  recursive subroutine GL10_jm_glEnable_1(this, j_cap)
    class(GL10), target :: this
    integer(4), value :: j_cap
    error stop 'AbstractMethodError: GL10.glEnable'
  end subroutine

  recursive subroutine GL10_jm_glEnableClientState_1(this, j_array)
    class(GL10), target :: this
    integer(4), value :: j_array
    error stop 'AbstractMethodError: GL10.glEnableClientState'
  end subroutine

  recursive subroutine GL10_jm_glFinish_0(this)
    class(GL10), target :: this
    error stop 'AbstractMethodError: GL10.glFinish'
  end subroutine

  recursive subroutine GL10_jm_glFlush_0(this)
    class(GL10), target :: this
    error stop 'AbstractMethodError: GL10.glFlush'
  end subroutine

  recursive subroutine GL10_jm_glFogf_2(this, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_pname
    real(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glFogf'
  end subroutine

  recursive subroutine GL10_jm_glFogfv_3(this, j_pname, j_params, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glFogfv'
  end subroutine

  recursive subroutine GL10_jm_glFogfv_2(this, j_pname, j_params)
    class(GL10), target :: this
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL10.glFogfv'
  end subroutine

  recursive subroutine GL10_jm_glFrontFace_1(this, j_mode)
    class(GL10), target :: this
    integer(4), value :: j_mode
    error stop 'AbstractMethodError: GL10.glFrontFace'
  end subroutine

  recursive subroutine GL10_jm_glFrustumf_6(this, j_left, j_right, j_bottom, j_top, j_zNear, j_zFar)
    class(GL10), target :: this
    real(4), value :: j_left
    real(4), value :: j_right
    real(4), value :: j_bottom
    real(4), value :: j_top
    real(4), value :: j_zNear
    real(4), value :: j_zFar
    error stop 'AbstractMethodError: GL10.glFrustumf'
  end subroutine

  recursive subroutine GL10_jm_glGenTextures_3(this, j_n, j_textures, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_n
    integer(4) :: j_textures(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glGenTextures'
  end subroutine

  recursive subroutine GL10_jm_glGenTextures_2(this, j_n, j_textures)
    class(GL10), target :: this
    integer(4), value :: j_n
    class(IntBuffer), target, optional :: j_textures
    error stop 'AbstractMethodError: GL10.glGenTextures'
  end subroutine

  recursive function GL10_jm_glGetError_0(this) result(jresult)
    class(GL10), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: GL10.glGetError'
  end function

  recursive subroutine GL10_jm_glGetIntegerv_3(this, j_pname, j_params, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_pname
    integer(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glGetIntegerv'
  end subroutine

  recursive subroutine GL10_jm_glGetIntegerv_2(this, j_pname, j_params)
    class(GL10), target :: this
    integer(4), value :: j_pname
    class(IntBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL10.glGetIntegerv'
  end subroutine

  recursive function GL10_jm_glGetString_1(this, j_name) result(jresult)
    class(GL10), target :: this
    integer(4), value :: j_name
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: GL10.glGetString'
  end function

  recursive subroutine GL10_jm_glHint_2(this, j_target, j_mode)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_mode
    error stop 'AbstractMethodError: GL10.glHint'
  end subroutine

  recursive subroutine GL10_jm_glLightModelf_2(this, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_pname
    real(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glLightModelf'
  end subroutine

  recursive subroutine GL10_jm_glLightModelfv_3(this, j_pname, j_params, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glLightModelfv'
  end subroutine

  recursive subroutine GL10_jm_glLightModelfv_2(this, j_pname, j_params)
    class(GL10), target :: this
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL10.glLightModelfv'
  end subroutine

  recursive subroutine GL10_jm_glLightf_3(this, j_light, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    real(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glLightf'
  end subroutine

  recursive subroutine GL10_jm_glLightfv_4(this, j_light, j_pname, j_params, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glLightfv'
  end subroutine

  recursive subroutine GL10_jm_glLightfv_3(this, j_light, j_pname, j_params)
    class(GL10), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL10.glLightfv'
  end subroutine

  recursive subroutine GL10_jm_glLineWidth_1(this, j_width)
    class(GL10), target :: this
    real(4), value :: j_width
    error stop 'AbstractMethodError: GL10.glLineWidth'
  end subroutine

  recursive subroutine GL10_jm_glLoadIdentity_0(this)
    class(GL10), target :: this
    error stop 'AbstractMethodError: GL10.glLoadIdentity'
  end subroutine

  recursive subroutine GL10_jm_glLoadMatrixf_2(this, j_m, j_offset)
    class(GL10), target :: this
    real(4) :: j_m(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glLoadMatrixf'
  end subroutine

  recursive subroutine GL10_jm_glLoadMatrixf_1(this, j_m)
    class(GL10), target :: this
    class(FloatBuffer), target, optional :: j_m
    error stop 'AbstractMethodError: GL10.glLoadMatrixf'
  end subroutine

  recursive subroutine GL10_jm_glLogicOp_1(this, j_opcode)
    class(GL10), target :: this
    integer(4), value :: j_opcode
    error stop 'AbstractMethodError: GL10.glLogicOp'
  end subroutine

  recursive subroutine GL10_jm_glMaterialf_3(this, j_face, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    real(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glMaterialf'
  end subroutine

  recursive subroutine GL10_jm_glMaterialfv_4(this, j_face, j_pname, j_params, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glMaterialfv'
  end subroutine

  recursive subroutine GL10_jm_glMaterialfv_3(this, j_face, j_pname, j_params)
    class(GL10), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL10.glMaterialfv'
  end subroutine

  recursive subroutine GL10_jm_glMatrixMode_1(this, j_mode)
    class(GL10), target :: this
    integer(4), value :: j_mode
    error stop 'AbstractMethodError: GL10.glMatrixMode'
  end subroutine

  recursive subroutine GL10_jm_glMultMatrixf_2(this, j_m, j_offset)
    class(GL10), target :: this
    real(4) :: j_m(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glMultMatrixf'
  end subroutine

  recursive subroutine GL10_jm_glMultMatrixf_1(this, j_m)
    class(GL10), target :: this
    class(FloatBuffer), target, optional :: j_m
    error stop 'AbstractMethodError: GL10.glMultMatrixf'
  end subroutine

  recursive subroutine GL10_jm_glMultiTexCoord4f_5(this, j_target, j_s, j_t, j_r, j_q)
    class(GL10), target :: this
    integer(4), value :: j_target
    real(4), value :: j_s
    real(4), value :: j_t
    real(4), value :: j_r
    real(4), value :: j_q
    error stop 'AbstractMethodError: GL10.glMultiTexCoord4f'
  end subroutine

  recursive subroutine GL10_jm_glNormal3f_3(this, j_nx, j_ny, j_nz)
    class(GL10), target :: this
    real(4), value :: j_nx
    real(4), value :: j_ny
    real(4), value :: j_nz
    error stop 'AbstractMethodError: GL10.glNormal3f'
  end subroutine

  recursive subroutine GL10_jm_glNormalPointer_3(this, j_type, j_stride, j_pointer)
    class(GL10), target :: this
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
    error stop 'AbstractMethodError: GL10.glNormalPointer'
  end subroutine

  recursive subroutine GL10_jm_glOrthof_6(this, j_left, j_right, j_bottom, j_top, j_zNear, j_zFar)
    class(GL10), target :: this
    real(4), value :: j_left
    real(4), value :: j_right
    real(4), value :: j_bottom
    real(4), value :: j_top
    real(4), value :: j_zNear
    real(4), value :: j_zFar
    error stop 'AbstractMethodError: GL10.glOrthof'
  end subroutine

  recursive subroutine GL10_jm_glPixelStorei_2(this, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_pname
    integer(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glPixelStorei'
  end subroutine

  recursive subroutine GL10_jm_glPointSize_1(this, j_size)
    class(GL10), target :: this
    real(4), value :: j_size
    error stop 'AbstractMethodError: GL10.glPointSize'
  end subroutine

  recursive subroutine GL10_jm_glPolygonOffset_2(this, j_factor, j_units)
    class(GL10), target :: this
    real(4), value :: j_factor
    real(4), value :: j_units
    error stop 'AbstractMethodError: GL10.glPolygonOffset'
  end subroutine

  recursive subroutine GL10_jm_glPopMatrix_0(this)
    class(GL10), target :: this
    error stop 'AbstractMethodError: GL10.glPopMatrix'
  end subroutine

  recursive subroutine GL10_jm_glPushMatrix_0(this)
    class(GL10), target :: this
    error stop 'AbstractMethodError: GL10.glPushMatrix'
  end subroutine

  recursive subroutine GL10_jm_glReadPixels_7(this, j_x, j_y, j_width, j_height, j_format, j_type, j_pixels)
    class(GL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_format
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_pixels
    error stop 'AbstractMethodError: GL10.glReadPixels'
  end subroutine

  recursive subroutine GL10_jm_glRotatef_4(this, j_angle, j_x, j_y, j_z)
    class(GL10), target :: this
    real(4), value :: j_angle
    real(4), value :: j_x
    real(4), value :: j_y
    real(4), value :: j_z
    error stop 'AbstractMethodError: GL10.glRotatef'
  end subroutine

  recursive subroutine GL10_jm_glRotatex_4(this, j_angle, j_x, j_y, j_z)
    class(GL10), target :: this
    integer(4), value :: j_angle
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    error stop 'AbstractMethodError: GL10.glRotatex'
  end subroutine

  recursive subroutine GL10_jm_glSampleCoverage_2(this, j_value, j_invert)
    class(GL10), target :: this
    real(4), value :: j_value
    logical, value :: j_invert
    error stop 'AbstractMethodError: GL10.glSampleCoverage'
  end subroutine

  recursive subroutine GL10_jm_glScalef_3(this, j_x, j_y, j_z)
    class(GL10), target :: this
    real(4), value :: j_x
    real(4), value :: j_y
    real(4), value :: j_z
    error stop 'AbstractMethodError: GL10.glScalef'
  end subroutine

  recursive subroutine GL10_jm_glScalex_3(this, j_x, j_y, j_z)
    class(GL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    error stop 'AbstractMethodError: GL10.glScalex'
  end subroutine

  recursive subroutine GL10_jm_glScissor_4(this, j_x, j_y, j_width, j_height)
    class(GL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    error stop 'AbstractMethodError: GL10.glScissor'
  end subroutine

  recursive subroutine GL10_jm_glShadeModel_1(this, j_mode)
    class(GL10), target :: this
    integer(4), value :: j_mode
    error stop 'AbstractMethodError: GL10.glShadeModel'
  end subroutine

  recursive subroutine GL10_jm_glStencilFunc_3(this, j_func, j_ref, j_mask)
    class(GL10), target :: this
    integer(4), value :: j_func
    integer(4), value :: j_ref
    integer(4), value :: j_mask
    error stop 'AbstractMethodError: GL10.glStencilFunc'
  end subroutine

  recursive subroutine GL10_jm_glStencilMask_1(this, j_mask)
    class(GL10), target :: this
    integer(4), value :: j_mask
    error stop 'AbstractMethodError: GL10.glStencilMask'
  end subroutine

  recursive subroutine GL10_jm_glStencilOp_3(this, j_fail, j_zfail, j_zpass)
    class(GL10), target :: this
    integer(4), value :: j_fail
    integer(4), value :: j_zfail
    integer(4), value :: j_zpass
    error stop 'AbstractMethodError: GL10.glStencilOp'
  end subroutine

  recursive subroutine GL10_jm_glTexCoordPointer_4(this, j_size, j_type, j_stride, j_pointer)
    class(GL10), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
    error stop 'AbstractMethodError: GL10.glTexCoordPointer'
  end subroutine

  recursive subroutine GL10_jm_glTexEnvf_3(this, j_target, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glTexEnvf'
  end subroutine

  recursive subroutine GL10_jm_glTexEnvfv_4(this, j_target, j_pname, j_params, j_offset)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL10.glTexEnvfv'
  end subroutine

  recursive subroutine GL10_jm_glTexEnvfv_3(this, j_target, j_pname, j_params)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL10.glTexEnvfv'
  end subroutine

  recursive subroutine GL10_jm_glTexImage2D_9(this, j_target, j_level, j_internalformat, j_width, j_height, j_border, j_format, j_type, j_pixels)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_internalformat
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_border
    integer(4), value :: j_format
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_pixels
    error stop 'AbstractMethodError: GL10.glTexImage2D'
  end subroutine

  recursive subroutine GL10_jm_glTexParameterf_3(this, j_target, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glTexParameterf'
  end subroutine

  recursive subroutine GL10_jm_glTexParameteri_3(this, j_target, j_pname, j_param)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4), value :: j_param
    error stop 'AbstractMethodError: GL10.glTexParameteri'
  end subroutine

  recursive subroutine GL10_jm_glTexSubImage2D_9(this, j_target, j_level, j_xoffset, j_yoffset, j_width, j_height, j_format, j_type, j_pixels)
    class(GL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_xoffset
    integer(4), value :: j_yoffset
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_format
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_pixels
    error stop 'AbstractMethodError: GL10.glTexSubImage2D'
  end subroutine

  recursive subroutine GL10_jm_glTranslatef_3(this, j_x, j_y, j_z)
    class(GL10), target :: this
    real(4), value :: j_x
    real(4), value :: j_y
    real(4), value :: j_z
    error stop 'AbstractMethodError: GL10.glTranslatef'
  end subroutine

  recursive subroutine GL10_jm_glVertexPointer_4(this, j_size, j_type, j_stride, j_pointer)
    class(GL10), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
    error stop 'AbstractMethodError: GL10.glVertexPointer'
  end subroutine

  recursive subroutine GL10_jm_glViewport_4(this, j_x, j_y, j_width, j_height)
    class(GL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    error stop 'AbstractMethodError: GL10.glViewport'
  end subroutine

  recursive subroutine GL10_jm_glBegin_1(this, j_i)
    class(GL10), target :: this
    integer(4), value :: j_i
    error stop 'AbstractMethodError: GL10.glBegin'
  end subroutine

  recursive subroutine GL10_jm_glEnd_0(this)
    class(GL10), target :: this
    error stop 'AbstractMethodError: GL10.glEnd'
  end subroutine

  recursive subroutine GL10_jm_glVertex3f_3(this, j_f, j_f2, j_f3)
    class(GL10), target :: this
    real(4), value :: j_f
    real(4), value :: j_f2
    real(4), value :: j_f3
    error stop 'AbstractMethodError: GL10.glVertex3f'
  end subroutine

  recursive subroutine GL10_jm_glPolygonMode_2(this, j_i, j_i1)
    class(GL10), target :: this
    integer(4), value :: j_i
    integer(4), value :: j_i1
    error stop 'AbstractMethodError: GL10.glPolygonMode'
  end subroutine
end module GL10_m

