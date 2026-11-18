! Generated Code Do Not Modify
! package javax.microedition.khronos.opengles
module GL11_m
  use JR_m
  use Buffer_m
  use FloatBuffer_m
  use IntBuffer_m
  implicit none

  type, extends(GL10) :: GL11
  contains
    procedure :: jm_glBindBuffer_2 => GL11_jm_glBindBuffer_2
    procedure :: jm_glBufferData_4 => GL11_jm_glBufferData_4
    procedure :: jm_glBufferSubData_4 => GL11_jm_glBufferSubData_4
    procedure :: jm_glClipPlanef_3 => GL11_jm_glClipPlanef_3
    procedure :: jm_glClipPlanef_2 => GL11_jm_glClipPlanef_2
    procedure :: jm_glColor4ub_4 => GL11_jm_glColor4ub_4
    procedure :: jm_glColorPointer_4 => GL11_jm_glColorPointer_4
    procedure :: jm_glDeleteBuffers_3 => GL11_jm_glDeleteBuffers_3
    procedure :: jm_glDeleteBuffers_2 => GL11_jm_glDeleteBuffers_2
    procedure :: jm_glDrawElements_4 => GL11_jm_glDrawElements_4
    procedure :: jm_glGenBuffers_3 => GL11_jm_glGenBuffers_3
    procedure :: jm_glGenBuffers_2 => GL11_jm_glGenBuffers_2
    procedure :: jm_glGetBufferParameteriv_4 => GL11_jm_glGetBufferParameteriv_4
    procedure :: jm_glGetBufferParameteriv_3 => GL11_jm_glGetBufferParameteriv_3
    procedure :: jm_glGetClipPlanef_3 => GL11_jm_glGetClipPlanef_3
    procedure :: jm_glGetClipPlanef_2 => GL11_jm_glGetClipPlanef_2
    procedure :: jm_glGetFloatv_3 => GL11_jm_glGetFloatv_3
    procedure :: jm_glGetFloatv_2 => GL11_jm_glGetFloatv_2
    procedure :: jm_glGetLightfv_4 => GL11_jm_glGetLightfv_4
    procedure :: jm_glGetLightfv_3 => GL11_jm_glGetLightfv_3
    procedure :: jm_glGetMaterialfv_4 => GL11_jm_glGetMaterialfv_4
    procedure :: jm_glGetMaterialfv_3 => GL11_jm_glGetMaterialfv_3
    procedure :: jm_glGetTexEnviv_4 => GL11_jm_glGetTexEnviv_4
    procedure :: jm_glGetTexEnviv_3 => GL11_jm_glGetTexEnviv_3
    procedure :: jm_glGetTexParameterfv_4 => GL11_jm_glGetTexParameterfv_4
    procedure :: jm_glGetTexParameterfv_3 => GL11_jm_glGetTexParameterfv_3
    procedure :: jm_glGetTexParameteriv_4 => GL11_jm_glGetTexParameteriv_4
    procedure :: jm_glGetTexParameteriv_3 => GL11_jm_glGetTexParameteriv_3
    procedure :: jm_glIsBuffer_1 => GL11_jm_glIsBuffer_1
    procedure :: jm_glIsEnabled_1 => GL11_jm_glIsEnabled_1
    procedure :: jm_glIsTexture_1 => GL11_jm_glIsTexture_1
    procedure :: jm_glNormalPointer_3 => GL11_jm_glNormalPointer_3
    procedure :: jm_glPointParameterf_2 => GL11_jm_glPointParameterf_2
    procedure :: jm_glPointParameterfv_3 => GL11_jm_glPointParameterfv_3
    procedure :: jm_glPointParameterfv_2 => GL11_jm_glPointParameterfv_2
    procedure :: jm_glTexCoordPointer_4 => GL11_jm_glTexCoordPointer_4
    procedure :: jm_glTexEnvi_3 => GL11_jm_glTexEnvi_3
    procedure :: jm_glTexEnviv_4 => GL11_jm_glTexEnviv_4
    procedure :: jm_glTexEnviv_3 => GL11_jm_glTexEnviv_3
    procedure :: jm_glTexParameterfv_4 => GL11_jm_glTexParameterfv_4
    procedure :: jm_glTexParameterfv_3 => GL11_jm_glTexParameterfv_3
    procedure :: jm_glTexParameteriv_4 => GL11_jm_glTexParameteriv_4
    procedure :: jm_glTexParameteriv_3 => GL11_jm_glTexParameteriv_3
    procedure :: jm_glVertexPointer_4 => GL11_jm_glVertexPointer_4
  end type

  integer(4), save :: GL11_jcell_GL_ACTIVE_TEXTURE
  logical, save :: GL11_jset_GL_ACTIVE_TEXTURE = .false.
  integer(4), save :: GL11_jcell_GL_ADD_SIGNED
  logical, save :: GL11_jset_GL_ADD_SIGNED = .false.
  integer(4), save :: GL11_jcell_GL_ALPHA_SCALE
  logical, save :: GL11_jset_GL_ALPHA_SCALE = .false.
  integer(4), save :: GL11_jcell_GL_ALPHA_TEST_FUNC
  logical, save :: GL11_jset_GL_ALPHA_TEST_FUNC = .false.
  integer(4), save :: GL11_jcell_GL_ALPHA_TEST_REF
  logical, save :: GL11_jset_GL_ALPHA_TEST_REF = .false.
  integer(4), save :: GL11_jcell_GL_ARRAY_BUFFER
  logical, save :: GL11_jset_GL_ARRAY_BUFFER = .false.
  integer(4), save :: GL11_jcell_GL_ARRAY_BUFFER_BINDING
  logical, save :: GL11_jset_GL_ARRAY_BUFFER_BINDING = .false.
  integer(4), save :: GL11_jcell_GL_BLEND_DST
  logical, save :: GL11_jset_GL_BLEND_DST = .false.
  integer(4), save :: GL11_jcell_GL_BLEND_SRC
  logical, save :: GL11_jset_GL_BLEND_SRC = .false.
  integer(4), save :: GL11_jcell_GL_BUFFER_ACCESS
  logical, save :: GL11_jset_GL_BUFFER_ACCESS = .false.
  integer(4), save :: GL11_jcell_GL_BUFFER_SIZE
  logical, save :: GL11_jset_GL_BUFFER_SIZE = .false.
  integer(4), save :: GL11_jcell_GL_BUFFER_USAGE
  logical, save :: GL11_jset_GL_BUFFER_USAGE = .false.
  integer(4), save :: GL11_jcell_GL_CLIENT_ACTIVE_TEXTURE
  logical, save :: GL11_jset_GL_CLIENT_ACTIVE_TEXTURE = .false.
  integer(4), save :: GL11_jcell_GL_CLIP_PLANE0
  logical, save :: GL11_jset_GL_CLIP_PLANE0 = .false.
  integer(4), save :: GL11_jcell_GL_CLIP_PLANE1
  logical, save :: GL11_jset_GL_CLIP_PLANE1 = .false.
  integer(4), save :: GL11_jcell_GL_CLIP_PLANE2
  logical, save :: GL11_jset_GL_CLIP_PLANE2 = .false.
  integer(4), save :: GL11_jcell_GL_CLIP_PLANE3
  logical, save :: GL11_jset_GL_CLIP_PLANE3 = .false.
  integer(4), save :: GL11_jcell_GL_CLIP_PLANE4
  logical, save :: GL11_jset_GL_CLIP_PLANE4 = .false.
  integer(4), save :: GL11_jcell_GL_CLIP_PLANE5
  logical, save :: GL11_jset_GL_CLIP_PLANE5 = .false.
  integer(4), save :: GL11_jcell_GL_COLOR_ARRAY_BUFFER_BINDING
  logical, save :: GL11_jset_GL_COLOR_ARRAY_BUFFER_BINDING = .false.
  integer(4), save :: GL11_jcell_GL_COLOR_ARRAY_POINTER
  logical, save :: GL11_jset_GL_COLOR_ARRAY_POINTER = .false.
  integer(4), save :: GL11_jcell_GL_COLOR_ARRAY_SIZE
  logical, save :: GL11_jset_GL_COLOR_ARRAY_SIZE = .false.
  integer(4), save :: GL11_jcell_GL_COLOR_ARRAY_STRIDE
  logical, save :: GL11_jset_GL_COLOR_ARRAY_STRIDE = .false.
  integer(4), save :: GL11_jcell_GL_COLOR_ARRAY_TYPE
  logical, save :: GL11_jset_GL_COLOR_ARRAY_TYPE = .false.
  integer(4), save :: GL11_jcell_GL_COLOR_CLEAR_VALUE
  logical, save :: GL11_jset_GL_COLOR_CLEAR_VALUE = .false.
  integer(4), save :: GL11_jcell_GL_COLOR_WRITEMASK
  logical, save :: GL11_jset_GL_COLOR_WRITEMASK = .false.
  integer(4), save :: GL11_jcell_GL_COMBINE
  logical, save :: GL11_jset_GL_COMBINE = .false.
  integer(4), save :: GL11_jcell_GL_COMBINE_ALPHA
  logical, save :: GL11_jset_GL_COMBINE_ALPHA = .false.
  integer(4), save :: GL11_jcell_GL_COMBINE_RGB
  logical, save :: GL11_jset_GL_COMBINE_RGB = .false.
  integer(4), save :: GL11_jcell_GL_CONSTANT
  logical, save :: GL11_jset_GL_CONSTANT = .false.
  integer(4), save :: GL11_jcell_GL_COORD_REPLACE_OES
  logical, save :: GL11_jset_GL_COORD_REPLACE_OES = .false.
  integer(4), save :: GL11_jcell_GL_CULL_FACE_MODE
  logical, save :: GL11_jset_GL_CULL_FACE_MODE = .false.
  integer(4), save :: GL11_jcell_GL_CURRENT_COLOR
  logical, save :: GL11_jset_GL_CURRENT_COLOR = .false.
  integer(4), save :: GL11_jcell_GL_CURRENT_NORMAL
  logical, save :: GL11_jset_GL_CURRENT_NORMAL = .false.
  integer(4), save :: GL11_jcell_GL_CURRENT_TEXTURE_COORDS
  logical, save :: GL11_jset_GL_CURRENT_TEXTURE_COORDS = .false.
  integer(4), save :: GL11_jcell_GL_DEPTH_CLEAR_VALUE
  logical, save :: GL11_jset_GL_DEPTH_CLEAR_VALUE = .false.
  integer(4), save :: GL11_jcell_GL_DEPTH_FUNC
  logical, save :: GL11_jset_GL_DEPTH_FUNC = .false.
  integer(4), save :: GL11_jcell_GL_DEPTH_RANGE
  logical, save :: GL11_jset_GL_DEPTH_RANGE = .false.
  integer(4), save :: GL11_jcell_GL_DEPTH_WRITEMASK
  logical, save :: GL11_jset_GL_DEPTH_WRITEMASK = .false.
  integer(4), save :: GL11_jcell_GL_DOT3_RGB
  logical, save :: GL11_jset_GL_DOT3_RGB = .false.
  integer(4), save :: GL11_jcell_GL_DOT3_RGBA
  logical, save :: GL11_jset_GL_DOT3_RGBA = .false.
  integer(4), save :: GL11_jcell_GL_DYNAMIC_DRAW
  logical, save :: GL11_jset_GL_DYNAMIC_DRAW = .false.
  integer(4), save :: GL11_jcell_GL_ELEMENT_ARRAY_BUFFER
  logical, save :: GL11_jset_GL_ELEMENT_ARRAY_BUFFER = .false.
  integer(4), save :: GL11_jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING
  logical, save :: GL11_jset_GL_ELEMENT_ARRAY_BUFFER_BINDING = .false.
  integer(4), save :: GL11_jcell_GL_FRONT_FACE
  logical, save :: GL11_jset_GL_FRONT_FACE = .false.
  integer(4), save :: GL11_jcell_GL_GENERATE_MIPMAP
  logical, save :: GL11_jset_GL_GENERATE_MIPMAP = .false.
  integer(4), save :: GL11_jcell_GL_GENERATE_MIPMAP_HINT
  logical, save :: GL11_jset_GL_GENERATE_MIPMAP_HINT = .false.
  integer(4), save :: GL11_jcell_GL_INTERPOLATE
  logical, save :: GL11_jset_GL_INTERPOLATE = .false.
  integer(4), save :: GL11_jcell_GL_LINE_WIDTH
  logical, save :: GL11_jset_GL_LINE_WIDTH = .false.
  integer(4), save :: GL11_jcell_GL_LOGIC_OP_MODE
  logical, save :: GL11_jset_GL_LOGIC_OP_MODE = .false.
  integer(4), save :: GL11_jcell_GL_MATRIX_MODE
  logical, save :: GL11_jset_GL_MATRIX_MODE = .false.
  integer(4), save :: GL11_jcell_GL_MAX_CLIP_PLANES
  logical, save :: GL11_jset_GL_MAX_CLIP_PLANES = .false.
  integer(4), save :: GL11_jcell_GL_MODELVIEW_MATRIX
  logical, save :: GL11_jset_GL_MODELVIEW_MATRIX = .false.
  integer(4), save :: GL11_jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES
  logical, save :: GL11_jset_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = .false.
  integer(4), save :: GL11_jcell_GL_MODELVIEW_STACK_DEPTH
  logical, save :: GL11_jset_GL_MODELVIEW_STACK_DEPTH = .false.
  integer(4), save :: GL11_jcell_GL_NORMAL_ARRAY_BUFFER_BINDING
  logical, save :: GL11_jset_GL_NORMAL_ARRAY_BUFFER_BINDING = .false.
  integer(4), save :: GL11_jcell_GL_NORMAL_ARRAY_POINTER
  logical, save :: GL11_jset_GL_NORMAL_ARRAY_POINTER = .false.
  integer(4), save :: GL11_jcell_GL_NORMAL_ARRAY_STRIDE
  logical, save :: GL11_jset_GL_NORMAL_ARRAY_STRIDE = .false.
  integer(4), save :: GL11_jcell_GL_NORMAL_ARRAY_TYPE
  logical, save :: GL11_jset_GL_NORMAL_ARRAY_TYPE = .false.
  integer(4), save :: GL11_jcell_GL_OPERAND0_ALPHA
  logical, save :: GL11_jset_GL_OPERAND0_ALPHA = .false.
  integer(4), save :: GL11_jcell_GL_OPERAND0_RGB
  logical, save :: GL11_jset_GL_OPERAND0_RGB = .false.
  integer(4), save :: GL11_jcell_GL_OPERAND1_ALPHA
  logical, save :: GL11_jset_GL_OPERAND1_ALPHA = .false.
  integer(4), save :: GL11_jcell_GL_OPERAND1_RGB
  logical, save :: GL11_jset_GL_OPERAND1_RGB = .false.
  integer(4), save :: GL11_jcell_GL_OPERAND2_ALPHA
  logical, save :: GL11_jset_GL_OPERAND2_ALPHA = .false.
  integer(4), save :: GL11_jcell_GL_OPERAND2_RGB
  logical, save :: GL11_jset_GL_OPERAND2_RGB = .false.
  integer(4), save :: GL11_jcell_GL_POINT_DISTANCE_ATTENUATION
  logical, save :: GL11_jset_GL_POINT_DISTANCE_ATTENUATION = .false.
  integer(4), save :: GL11_jcell_GL_POINT_FADE_THRESHOLD_SIZE
  logical, save :: GL11_jset_GL_POINT_FADE_THRESHOLD_SIZE = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE
  logical, save :: GL11_jset_GL_POINT_SIZE = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES
  logical, save :: GL11_jset_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE_ARRAY_OES
  logical, save :: GL11_jset_GL_POINT_SIZE_ARRAY_OES = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE_ARRAY_POINTER_OES
  logical, save :: GL11_jset_GL_POINT_SIZE_ARRAY_POINTER_OES = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES
  logical, save :: GL11_jset_GL_POINT_SIZE_ARRAY_STRIDE_OES = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE_ARRAY_TYPE_OES
  logical, save :: GL11_jset_GL_POINT_SIZE_ARRAY_TYPE_OES = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE_MAX
  logical, save :: GL11_jset_GL_POINT_SIZE_MAX = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SIZE_MIN
  logical, save :: GL11_jset_GL_POINT_SIZE_MIN = .false.
  integer(4), save :: GL11_jcell_GL_POINT_SPRITE_OES
  logical, save :: GL11_jset_GL_POINT_SPRITE_OES = .false.
  integer(4), save :: GL11_jcell_GL_POLYGON_OFFSET_FACTOR
  logical, save :: GL11_jset_GL_POLYGON_OFFSET_FACTOR = .false.
  integer(4), save :: GL11_jcell_GL_POLYGON_OFFSET_UNITS
  logical, save :: GL11_jset_GL_POLYGON_OFFSET_UNITS = .false.
  integer(4), save :: GL11_jcell_GL_PREVIOUS
  logical, save :: GL11_jset_GL_PREVIOUS = .false.
  integer(4), save :: GL11_jcell_GL_PRIMARY_COLOR
  logical, save :: GL11_jset_GL_PRIMARY_COLOR = .false.
  integer(4), save :: GL11_jcell_GL_PROJECTION_MATRIX
  logical, save :: GL11_jset_GL_PROJECTION_MATRIX = .false.
  integer(4), save :: GL11_jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES
  logical, save :: GL11_jset_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = .false.
  integer(4), save :: GL11_jcell_GL_PROJECTION_STACK_DEPTH
  logical, save :: GL11_jset_GL_PROJECTION_STACK_DEPTH = .false.
  integer(4), save :: GL11_jcell_GL_RGB_SCALE
  logical, save :: GL11_jset_GL_RGB_SCALE = .false.
  integer(4), save :: GL11_jcell_GL_SAMPLE_BUFFERS
  logical, save :: GL11_jset_GL_SAMPLE_BUFFERS = .false.
  integer(4), save :: GL11_jcell_GL_SAMPLE_COVERAGE_INVERT
  logical, save :: GL11_jset_GL_SAMPLE_COVERAGE_INVERT = .false.
  integer(4), save :: GL11_jcell_GL_SAMPLE_COVERAGE_VALUE
  logical, save :: GL11_jset_GL_SAMPLE_COVERAGE_VALUE = .false.
  integer(4), save :: GL11_jcell_GL_SAMPLES
  logical, save :: GL11_jset_GL_SAMPLES = .false.
  integer(4), save :: GL11_jcell_GL_SCISSOR_BOX
  logical, save :: GL11_jset_GL_SCISSOR_BOX = .false.
  integer(4), save :: GL11_jcell_GL_SHADE_MODEL
  logical, save :: GL11_jset_GL_SHADE_MODEL = .false.
  integer(4), save :: GL11_jcell_GL_SRC0_ALPHA
  logical, save :: GL11_jset_GL_SRC0_ALPHA = .false.
  integer(4), save :: GL11_jcell_GL_SRC0_RGB
  logical, save :: GL11_jset_GL_SRC0_RGB = .false.
  integer(4), save :: GL11_jcell_GL_SRC1_ALPHA
  logical, save :: GL11_jset_GL_SRC1_ALPHA = .false.
  integer(4), save :: GL11_jcell_GL_SRC1_RGB
  logical, save :: GL11_jset_GL_SRC1_RGB = .false.
  integer(4), save :: GL11_jcell_GL_SRC2_ALPHA
  logical, save :: GL11_jset_GL_SRC2_ALPHA = .false.
  integer(4), save :: GL11_jcell_GL_SRC2_RGB
  logical, save :: GL11_jset_GL_SRC2_RGB = .false.
  integer(4), save :: GL11_jcell_GL_STATIC_DRAW
  logical, save :: GL11_jset_GL_STATIC_DRAW = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_CLEAR_VALUE
  logical, save :: GL11_jset_GL_STENCIL_CLEAR_VALUE = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_FAIL
  logical, save :: GL11_jset_GL_STENCIL_FAIL = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_FUNC
  logical, save :: GL11_jset_GL_STENCIL_FUNC = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_PASS_DEPTH_FAIL
  logical, save :: GL11_jset_GL_STENCIL_PASS_DEPTH_FAIL = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_PASS_DEPTH_PASS
  logical, save :: GL11_jset_GL_STENCIL_PASS_DEPTH_PASS = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_REF
  logical, save :: GL11_jset_GL_STENCIL_REF = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_VALUE_MASK
  logical, save :: GL11_jset_GL_STENCIL_VALUE_MASK = .false.
  integer(4), save :: GL11_jcell_GL_STENCIL_WRITEMASK
  logical, save :: GL11_jset_GL_STENCIL_WRITEMASK = .false.
  integer(4), save :: GL11_jcell_GL_SUBTRACT
  logical, save :: GL11_jset_GL_SUBTRACT = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_BINDING_2D
  logical, save :: GL11_jset_GL_TEXTURE_BINDING_2D = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
  logical, save :: GL11_jset_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_COORD_ARRAY_POINTER
  logical, save :: GL11_jset_GL_TEXTURE_COORD_ARRAY_POINTER = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_COORD_ARRAY_SIZE
  logical, save :: GL11_jset_GL_TEXTURE_COORD_ARRAY_SIZE = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_COORD_ARRAY_STRIDE
  logical, save :: GL11_jset_GL_TEXTURE_COORD_ARRAY_STRIDE = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_COORD_ARRAY_TYPE
  logical, save :: GL11_jset_GL_TEXTURE_COORD_ARRAY_TYPE = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_MATRIX
  logical, save :: GL11_jset_GL_TEXTURE_MATRIX = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES
  logical, save :: GL11_jset_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = .false.
  integer(4), save :: GL11_jcell_GL_TEXTURE_STACK_DEPTH
  logical, save :: GL11_jset_GL_TEXTURE_STACK_DEPTH = .false.
  integer(4), save :: GL11_jcell_GL_VERTEX_ARRAY_BUFFER_BINDING
  logical, save :: GL11_jset_GL_VERTEX_ARRAY_BUFFER_BINDING = .false.
  integer(4), save :: GL11_jcell_GL_VERTEX_ARRAY_POINTER
  logical, save :: GL11_jset_GL_VERTEX_ARRAY_POINTER = .false.
  integer(4), save :: GL11_jcell_GL_VERTEX_ARRAY_SIZE
  logical, save :: GL11_jset_GL_VERTEX_ARRAY_SIZE = .false.
  integer(4), save :: GL11_jcell_GL_VERTEX_ARRAY_STRIDE
  logical, save :: GL11_jset_GL_VERTEX_ARRAY_STRIDE = .false.
  integer(4), save :: GL11_jcell_GL_VERTEX_ARRAY_TYPE
  logical, save :: GL11_jset_GL_VERTEX_ARRAY_TYPE = .false.
  integer(4), save :: GL11_jcell_GL_VIEWPORT
  logical, save :: GL11_jset_GL_VIEWPORT = .false.
  integer(4), save :: GL11_jcell_GL_WRITE_ONLY
  logical, save :: GL11_jset_GL_WRITE_ONLY = .false.

contains

  function GL11_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GL11), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GL11)
      jresult => object
    end select
  end function

  function GL11_jstatic_GL_ACTIVE_TEXTURE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ACTIVE_TEXTURE) then
      GL11_jset_GL_ACTIVE_TEXTURE = .true.
      GL11_jcell_GL_ACTIVE_TEXTURE = 34016
    end if
    jresult = GL11_jcell_GL_ACTIVE_TEXTURE
  end function

  subroutine GL11_jsetstatic_GL_ACTIVE_TEXTURE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ACTIVE_TEXTURE = .true.
    GL11_jcell_GL_ACTIVE_TEXTURE = jvalue
  end subroutine

  function GL11_jstatic_GL_ADD_SIGNED() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ADD_SIGNED) then
      GL11_jset_GL_ADD_SIGNED = .true.
      GL11_jcell_GL_ADD_SIGNED = 34164
    end if
    jresult = GL11_jcell_GL_ADD_SIGNED
  end function

  subroutine GL11_jsetstatic_GL_ADD_SIGNED(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ADD_SIGNED = .true.
    GL11_jcell_GL_ADD_SIGNED = jvalue
  end subroutine

  function GL11_jstatic_GL_ALPHA_SCALE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ALPHA_SCALE) then
      GL11_jset_GL_ALPHA_SCALE = .true.
      GL11_jcell_GL_ALPHA_SCALE = 3356
    end if
    jresult = GL11_jcell_GL_ALPHA_SCALE
  end function

  subroutine GL11_jsetstatic_GL_ALPHA_SCALE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ALPHA_SCALE = .true.
    GL11_jcell_GL_ALPHA_SCALE = jvalue
  end subroutine

  function GL11_jstatic_GL_ALPHA_TEST_FUNC() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ALPHA_TEST_FUNC) then
      GL11_jset_GL_ALPHA_TEST_FUNC = .true.
      GL11_jcell_GL_ALPHA_TEST_FUNC = 3009
    end if
    jresult = GL11_jcell_GL_ALPHA_TEST_FUNC
  end function

  subroutine GL11_jsetstatic_GL_ALPHA_TEST_FUNC(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ALPHA_TEST_FUNC = .true.
    GL11_jcell_GL_ALPHA_TEST_FUNC = jvalue
  end subroutine

  function GL11_jstatic_GL_ALPHA_TEST_REF() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ALPHA_TEST_REF) then
      GL11_jset_GL_ALPHA_TEST_REF = .true.
      GL11_jcell_GL_ALPHA_TEST_REF = 3010
    end if
    jresult = GL11_jcell_GL_ALPHA_TEST_REF
  end function

  subroutine GL11_jsetstatic_GL_ALPHA_TEST_REF(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ALPHA_TEST_REF = .true.
    GL11_jcell_GL_ALPHA_TEST_REF = jvalue
  end subroutine

  function GL11_jstatic_GL_ARRAY_BUFFER() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ARRAY_BUFFER) then
      GL11_jset_GL_ARRAY_BUFFER = .true.
      GL11_jcell_GL_ARRAY_BUFFER = 34962
    end if
    jresult = GL11_jcell_GL_ARRAY_BUFFER
  end function

  subroutine GL11_jsetstatic_GL_ARRAY_BUFFER(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ARRAY_BUFFER = .true.
    GL11_jcell_GL_ARRAY_BUFFER = jvalue
  end subroutine

  function GL11_jstatic_GL_ARRAY_BUFFER_BINDING() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ARRAY_BUFFER_BINDING) then
      GL11_jset_GL_ARRAY_BUFFER_BINDING = .true.
      GL11_jcell_GL_ARRAY_BUFFER_BINDING = 34964
    end if
    jresult = GL11_jcell_GL_ARRAY_BUFFER_BINDING
  end function

  subroutine GL11_jsetstatic_GL_ARRAY_BUFFER_BINDING(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ARRAY_BUFFER_BINDING = .true.
    GL11_jcell_GL_ARRAY_BUFFER_BINDING = jvalue
  end subroutine

  function GL11_jstatic_GL_BLEND_DST() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_BLEND_DST) then
      GL11_jset_GL_BLEND_DST = .true.
      GL11_jcell_GL_BLEND_DST = 3040
    end if
    jresult = GL11_jcell_GL_BLEND_DST
  end function

  subroutine GL11_jsetstatic_GL_BLEND_DST(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_BLEND_DST = .true.
    GL11_jcell_GL_BLEND_DST = jvalue
  end subroutine

  function GL11_jstatic_GL_BLEND_SRC() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_BLEND_SRC) then
      GL11_jset_GL_BLEND_SRC = .true.
      GL11_jcell_GL_BLEND_SRC = 3041
    end if
    jresult = GL11_jcell_GL_BLEND_SRC
  end function

  subroutine GL11_jsetstatic_GL_BLEND_SRC(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_BLEND_SRC = .true.
    GL11_jcell_GL_BLEND_SRC = jvalue
  end subroutine

  function GL11_jstatic_GL_BUFFER_ACCESS() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_BUFFER_ACCESS) then
      GL11_jset_GL_BUFFER_ACCESS = .true.
      GL11_jcell_GL_BUFFER_ACCESS = 35003
    end if
    jresult = GL11_jcell_GL_BUFFER_ACCESS
  end function

  subroutine GL11_jsetstatic_GL_BUFFER_ACCESS(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_BUFFER_ACCESS = .true.
    GL11_jcell_GL_BUFFER_ACCESS = jvalue
  end subroutine

  function GL11_jstatic_GL_BUFFER_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_BUFFER_SIZE) then
      GL11_jset_GL_BUFFER_SIZE = .true.
      GL11_jcell_GL_BUFFER_SIZE = 34660
    end if
    jresult = GL11_jcell_GL_BUFFER_SIZE
  end function

  subroutine GL11_jsetstatic_GL_BUFFER_SIZE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_BUFFER_SIZE = .true.
    GL11_jcell_GL_BUFFER_SIZE = jvalue
  end subroutine

  function GL11_jstatic_GL_BUFFER_USAGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_BUFFER_USAGE) then
      GL11_jset_GL_BUFFER_USAGE = .true.
      GL11_jcell_GL_BUFFER_USAGE = 34661
    end if
    jresult = GL11_jcell_GL_BUFFER_USAGE
  end function

  subroutine GL11_jsetstatic_GL_BUFFER_USAGE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_BUFFER_USAGE = .true.
    GL11_jcell_GL_BUFFER_USAGE = jvalue
  end subroutine

  function GL11_jstatic_GL_CLIENT_ACTIVE_TEXTURE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CLIENT_ACTIVE_TEXTURE) then
      GL11_jset_GL_CLIENT_ACTIVE_TEXTURE = .true.
      GL11_jcell_GL_CLIENT_ACTIVE_TEXTURE = 34017
    end if
    jresult = GL11_jcell_GL_CLIENT_ACTIVE_TEXTURE
  end function

  subroutine GL11_jsetstatic_GL_CLIENT_ACTIVE_TEXTURE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CLIENT_ACTIVE_TEXTURE = .true.
    GL11_jcell_GL_CLIENT_ACTIVE_TEXTURE = jvalue
  end subroutine

  function GL11_jstatic_GL_CLIP_PLANE0() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CLIP_PLANE0) then
      GL11_jset_GL_CLIP_PLANE0 = .true.
      GL11_jcell_GL_CLIP_PLANE0 = 12288
    end if
    jresult = GL11_jcell_GL_CLIP_PLANE0
  end function

  subroutine GL11_jsetstatic_GL_CLIP_PLANE0(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CLIP_PLANE0 = .true.
    GL11_jcell_GL_CLIP_PLANE0 = jvalue
  end subroutine

  function GL11_jstatic_GL_CLIP_PLANE1() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CLIP_PLANE1) then
      GL11_jset_GL_CLIP_PLANE1 = .true.
      GL11_jcell_GL_CLIP_PLANE1 = 12289
    end if
    jresult = GL11_jcell_GL_CLIP_PLANE1
  end function

  subroutine GL11_jsetstatic_GL_CLIP_PLANE1(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CLIP_PLANE1 = .true.
    GL11_jcell_GL_CLIP_PLANE1 = jvalue
  end subroutine

  function GL11_jstatic_GL_CLIP_PLANE2() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CLIP_PLANE2) then
      GL11_jset_GL_CLIP_PLANE2 = .true.
      GL11_jcell_GL_CLIP_PLANE2 = 12290
    end if
    jresult = GL11_jcell_GL_CLIP_PLANE2
  end function

  subroutine GL11_jsetstatic_GL_CLIP_PLANE2(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CLIP_PLANE2 = .true.
    GL11_jcell_GL_CLIP_PLANE2 = jvalue
  end subroutine

  function GL11_jstatic_GL_CLIP_PLANE3() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CLIP_PLANE3) then
      GL11_jset_GL_CLIP_PLANE3 = .true.
      GL11_jcell_GL_CLIP_PLANE3 = 12291
    end if
    jresult = GL11_jcell_GL_CLIP_PLANE3
  end function

  subroutine GL11_jsetstatic_GL_CLIP_PLANE3(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CLIP_PLANE3 = .true.
    GL11_jcell_GL_CLIP_PLANE3 = jvalue
  end subroutine

  function GL11_jstatic_GL_CLIP_PLANE4() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CLIP_PLANE4) then
      GL11_jset_GL_CLIP_PLANE4 = .true.
      GL11_jcell_GL_CLIP_PLANE4 = 12292
    end if
    jresult = GL11_jcell_GL_CLIP_PLANE4
  end function

  subroutine GL11_jsetstatic_GL_CLIP_PLANE4(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CLIP_PLANE4 = .true.
    GL11_jcell_GL_CLIP_PLANE4 = jvalue
  end subroutine

  function GL11_jstatic_GL_CLIP_PLANE5() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CLIP_PLANE5) then
      GL11_jset_GL_CLIP_PLANE5 = .true.
      GL11_jcell_GL_CLIP_PLANE5 = 12293
    end if
    jresult = GL11_jcell_GL_CLIP_PLANE5
  end function

  subroutine GL11_jsetstatic_GL_CLIP_PLANE5(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CLIP_PLANE5 = .true.
    GL11_jcell_GL_CLIP_PLANE5 = jvalue
  end subroutine

  function GL11_jstatic_GL_COLOR_ARRAY_BUFFER_BINDING() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COLOR_ARRAY_BUFFER_BINDING) then
      GL11_jset_GL_COLOR_ARRAY_BUFFER_BINDING = .true.
      GL11_jcell_GL_COLOR_ARRAY_BUFFER_BINDING = 34968
    end if
    jresult = GL11_jcell_GL_COLOR_ARRAY_BUFFER_BINDING
  end function

  subroutine GL11_jsetstatic_GL_COLOR_ARRAY_BUFFER_BINDING(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COLOR_ARRAY_BUFFER_BINDING = .true.
    GL11_jcell_GL_COLOR_ARRAY_BUFFER_BINDING = jvalue
  end subroutine

  function GL11_jstatic_GL_COLOR_ARRAY_POINTER() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COLOR_ARRAY_POINTER) then
      GL11_jset_GL_COLOR_ARRAY_POINTER = .true.
      GL11_jcell_GL_COLOR_ARRAY_POINTER = 32912
    end if
    jresult = GL11_jcell_GL_COLOR_ARRAY_POINTER
  end function

  subroutine GL11_jsetstatic_GL_COLOR_ARRAY_POINTER(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COLOR_ARRAY_POINTER = .true.
    GL11_jcell_GL_COLOR_ARRAY_POINTER = jvalue
  end subroutine

  function GL11_jstatic_GL_COLOR_ARRAY_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COLOR_ARRAY_SIZE) then
      GL11_jset_GL_COLOR_ARRAY_SIZE = .true.
      GL11_jcell_GL_COLOR_ARRAY_SIZE = 32897
    end if
    jresult = GL11_jcell_GL_COLOR_ARRAY_SIZE
  end function

  subroutine GL11_jsetstatic_GL_COLOR_ARRAY_SIZE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COLOR_ARRAY_SIZE = .true.
    GL11_jcell_GL_COLOR_ARRAY_SIZE = jvalue
  end subroutine

  function GL11_jstatic_GL_COLOR_ARRAY_STRIDE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COLOR_ARRAY_STRIDE) then
      GL11_jset_GL_COLOR_ARRAY_STRIDE = .true.
      GL11_jcell_GL_COLOR_ARRAY_STRIDE = 32899
    end if
    jresult = GL11_jcell_GL_COLOR_ARRAY_STRIDE
  end function

  subroutine GL11_jsetstatic_GL_COLOR_ARRAY_STRIDE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COLOR_ARRAY_STRIDE = .true.
    GL11_jcell_GL_COLOR_ARRAY_STRIDE = jvalue
  end subroutine

  function GL11_jstatic_GL_COLOR_ARRAY_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COLOR_ARRAY_TYPE) then
      GL11_jset_GL_COLOR_ARRAY_TYPE = .true.
      GL11_jcell_GL_COLOR_ARRAY_TYPE = 32898
    end if
    jresult = GL11_jcell_GL_COLOR_ARRAY_TYPE
  end function

  subroutine GL11_jsetstatic_GL_COLOR_ARRAY_TYPE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COLOR_ARRAY_TYPE = .true.
    GL11_jcell_GL_COLOR_ARRAY_TYPE = jvalue
  end subroutine

  function GL11_jstatic_GL_COLOR_CLEAR_VALUE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COLOR_CLEAR_VALUE) then
      GL11_jset_GL_COLOR_CLEAR_VALUE = .true.
      GL11_jcell_GL_COLOR_CLEAR_VALUE = 3106
    end if
    jresult = GL11_jcell_GL_COLOR_CLEAR_VALUE
  end function

  subroutine GL11_jsetstatic_GL_COLOR_CLEAR_VALUE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COLOR_CLEAR_VALUE = .true.
    GL11_jcell_GL_COLOR_CLEAR_VALUE = jvalue
  end subroutine

  function GL11_jstatic_GL_COLOR_WRITEMASK() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COLOR_WRITEMASK) then
      GL11_jset_GL_COLOR_WRITEMASK = .true.
      GL11_jcell_GL_COLOR_WRITEMASK = 3107
    end if
    jresult = GL11_jcell_GL_COLOR_WRITEMASK
  end function

  subroutine GL11_jsetstatic_GL_COLOR_WRITEMASK(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COLOR_WRITEMASK = .true.
    GL11_jcell_GL_COLOR_WRITEMASK = jvalue
  end subroutine

  function GL11_jstatic_GL_COMBINE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COMBINE) then
      GL11_jset_GL_COMBINE = .true.
      GL11_jcell_GL_COMBINE = 34160
    end if
    jresult = GL11_jcell_GL_COMBINE
  end function

  subroutine GL11_jsetstatic_GL_COMBINE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COMBINE = .true.
    GL11_jcell_GL_COMBINE = jvalue
  end subroutine

  function GL11_jstatic_GL_COMBINE_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COMBINE_ALPHA) then
      GL11_jset_GL_COMBINE_ALPHA = .true.
      GL11_jcell_GL_COMBINE_ALPHA = 34162
    end if
    jresult = GL11_jcell_GL_COMBINE_ALPHA
  end function

  subroutine GL11_jsetstatic_GL_COMBINE_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COMBINE_ALPHA = .true.
    GL11_jcell_GL_COMBINE_ALPHA = jvalue
  end subroutine

  function GL11_jstatic_GL_COMBINE_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COMBINE_RGB) then
      GL11_jset_GL_COMBINE_RGB = .true.
      GL11_jcell_GL_COMBINE_RGB = 34161
    end if
    jresult = GL11_jcell_GL_COMBINE_RGB
  end function

  subroutine GL11_jsetstatic_GL_COMBINE_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COMBINE_RGB = .true.
    GL11_jcell_GL_COMBINE_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_CONSTANT() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CONSTANT) then
      GL11_jset_GL_CONSTANT = .true.
      GL11_jcell_GL_CONSTANT = 34166
    end if
    jresult = GL11_jcell_GL_CONSTANT
  end function

  subroutine GL11_jsetstatic_GL_CONSTANT(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CONSTANT = .true.
    GL11_jcell_GL_CONSTANT = jvalue
  end subroutine

  function GL11_jstatic_GL_COORD_REPLACE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_COORD_REPLACE_OES) then
      GL11_jset_GL_COORD_REPLACE_OES = .true.
      GL11_jcell_GL_COORD_REPLACE_OES = 34914
    end if
    jresult = GL11_jcell_GL_COORD_REPLACE_OES
  end function

  subroutine GL11_jsetstatic_GL_COORD_REPLACE_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_COORD_REPLACE_OES = .true.
    GL11_jcell_GL_COORD_REPLACE_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_CULL_FACE_MODE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CULL_FACE_MODE) then
      GL11_jset_GL_CULL_FACE_MODE = .true.
      GL11_jcell_GL_CULL_FACE_MODE = 2885
    end if
    jresult = GL11_jcell_GL_CULL_FACE_MODE
  end function

  subroutine GL11_jsetstatic_GL_CULL_FACE_MODE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CULL_FACE_MODE = .true.
    GL11_jcell_GL_CULL_FACE_MODE = jvalue
  end subroutine

  function GL11_jstatic_GL_CURRENT_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CURRENT_COLOR) then
      GL11_jset_GL_CURRENT_COLOR = .true.
      GL11_jcell_GL_CURRENT_COLOR = 2816
    end if
    jresult = GL11_jcell_GL_CURRENT_COLOR
  end function

  subroutine GL11_jsetstatic_GL_CURRENT_COLOR(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CURRENT_COLOR = .true.
    GL11_jcell_GL_CURRENT_COLOR = jvalue
  end subroutine

  function GL11_jstatic_GL_CURRENT_NORMAL() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CURRENT_NORMAL) then
      GL11_jset_GL_CURRENT_NORMAL = .true.
      GL11_jcell_GL_CURRENT_NORMAL = 2818
    end if
    jresult = GL11_jcell_GL_CURRENT_NORMAL
  end function

  subroutine GL11_jsetstatic_GL_CURRENT_NORMAL(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CURRENT_NORMAL = .true.
    GL11_jcell_GL_CURRENT_NORMAL = jvalue
  end subroutine

  function GL11_jstatic_GL_CURRENT_TEXTURE_COORDS() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_CURRENT_TEXTURE_COORDS) then
      GL11_jset_GL_CURRENT_TEXTURE_COORDS = .true.
      GL11_jcell_GL_CURRENT_TEXTURE_COORDS = 2819
    end if
    jresult = GL11_jcell_GL_CURRENT_TEXTURE_COORDS
  end function

  subroutine GL11_jsetstatic_GL_CURRENT_TEXTURE_COORDS(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_CURRENT_TEXTURE_COORDS = .true.
    GL11_jcell_GL_CURRENT_TEXTURE_COORDS = jvalue
  end subroutine

  function GL11_jstatic_GL_DEPTH_CLEAR_VALUE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_DEPTH_CLEAR_VALUE) then
      GL11_jset_GL_DEPTH_CLEAR_VALUE = .true.
      GL11_jcell_GL_DEPTH_CLEAR_VALUE = 2931
    end if
    jresult = GL11_jcell_GL_DEPTH_CLEAR_VALUE
  end function

  subroutine GL11_jsetstatic_GL_DEPTH_CLEAR_VALUE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_DEPTH_CLEAR_VALUE = .true.
    GL11_jcell_GL_DEPTH_CLEAR_VALUE = jvalue
  end subroutine

  function GL11_jstatic_GL_DEPTH_FUNC() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_DEPTH_FUNC) then
      GL11_jset_GL_DEPTH_FUNC = .true.
      GL11_jcell_GL_DEPTH_FUNC = 2932
    end if
    jresult = GL11_jcell_GL_DEPTH_FUNC
  end function

  subroutine GL11_jsetstatic_GL_DEPTH_FUNC(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_DEPTH_FUNC = .true.
    GL11_jcell_GL_DEPTH_FUNC = jvalue
  end subroutine

  function GL11_jstatic_GL_DEPTH_RANGE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_DEPTH_RANGE) then
      GL11_jset_GL_DEPTH_RANGE = .true.
      GL11_jcell_GL_DEPTH_RANGE = 2928
    end if
    jresult = GL11_jcell_GL_DEPTH_RANGE
  end function

  subroutine GL11_jsetstatic_GL_DEPTH_RANGE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_DEPTH_RANGE = .true.
    GL11_jcell_GL_DEPTH_RANGE = jvalue
  end subroutine

  function GL11_jstatic_GL_DEPTH_WRITEMASK() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_DEPTH_WRITEMASK) then
      GL11_jset_GL_DEPTH_WRITEMASK = .true.
      GL11_jcell_GL_DEPTH_WRITEMASK = 2930
    end if
    jresult = GL11_jcell_GL_DEPTH_WRITEMASK
  end function

  subroutine GL11_jsetstatic_GL_DEPTH_WRITEMASK(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_DEPTH_WRITEMASK = .true.
    GL11_jcell_GL_DEPTH_WRITEMASK = jvalue
  end subroutine

  function GL11_jstatic_GL_DOT3_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_DOT3_RGB) then
      GL11_jset_GL_DOT3_RGB = .true.
      GL11_jcell_GL_DOT3_RGB = 34478
    end if
    jresult = GL11_jcell_GL_DOT3_RGB
  end function

  subroutine GL11_jsetstatic_GL_DOT3_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_DOT3_RGB = .true.
    GL11_jcell_GL_DOT3_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_DOT3_RGBA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_DOT3_RGBA) then
      GL11_jset_GL_DOT3_RGBA = .true.
      GL11_jcell_GL_DOT3_RGBA = 34479
    end if
    jresult = GL11_jcell_GL_DOT3_RGBA
  end function

  subroutine GL11_jsetstatic_GL_DOT3_RGBA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_DOT3_RGBA = .true.
    GL11_jcell_GL_DOT3_RGBA = jvalue
  end subroutine

  function GL11_jstatic_GL_DYNAMIC_DRAW() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_DYNAMIC_DRAW) then
      GL11_jset_GL_DYNAMIC_DRAW = .true.
      GL11_jcell_GL_DYNAMIC_DRAW = 35048
    end if
    jresult = GL11_jcell_GL_DYNAMIC_DRAW
  end function

  subroutine GL11_jsetstatic_GL_DYNAMIC_DRAW(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_DYNAMIC_DRAW = .true.
    GL11_jcell_GL_DYNAMIC_DRAW = jvalue
  end subroutine

  function GL11_jstatic_GL_ELEMENT_ARRAY_BUFFER() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ELEMENT_ARRAY_BUFFER) then
      GL11_jset_GL_ELEMENT_ARRAY_BUFFER = .true.
      GL11_jcell_GL_ELEMENT_ARRAY_BUFFER = 34963
    end if
    jresult = GL11_jcell_GL_ELEMENT_ARRAY_BUFFER
  end function

  subroutine GL11_jsetstatic_GL_ELEMENT_ARRAY_BUFFER(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ELEMENT_ARRAY_BUFFER = .true.
    GL11_jcell_GL_ELEMENT_ARRAY_BUFFER = jvalue
  end subroutine

  function GL11_jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_ELEMENT_ARRAY_BUFFER_BINDING) then
      GL11_jset_GL_ELEMENT_ARRAY_BUFFER_BINDING = .true.
      GL11_jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965
    end if
    jresult = GL11_jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING
  end function

  subroutine GL11_jsetstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_ELEMENT_ARRAY_BUFFER_BINDING = .true.
    GL11_jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING = jvalue
  end subroutine

  function GL11_jstatic_GL_FRONT_FACE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_FRONT_FACE) then
      GL11_jset_GL_FRONT_FACE = .true.
      GL11_jcell_GL_FRONT_FACE = 2886
    end if
    jresult = GL11_jcell_GL_FRONT_FACE
  end function

  subroutine GL11_jsetstatic_GL_FRONT_FACE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_FRONT_FACE = .true.
    GL11_jcell_GL_FRONT_FACE = jvalue
  end subroutine

  function GL11_jstatic_GL_GENERATE_MIPMAP() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_GENERATE_MIPMAP) then
      GL11_jset_GL_GENERATE_MIPMAP = .true.
      GL11_jcell_GL_GENERATE_MIPMAP = 33169
    end if
    jresult = GL11_jcell_GL_GENERATE_MIPMAP
  end function

  subroutine GL11_jsetstatic_GL_GENERATE_MIPMAP(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_GENERATE_MIPMAP = .true.
    GL11_jcell_GL_GENERATE_MIPMAP = jvalue
  end subroutine

  function GL11_jstatic_GL_GENERATE_MIPMAP_HINT() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_GENERATE_MIPMAP_HINT) then
      GL11_jset_GL_GENERATE_MIPMAP_HINT = .true.
      GL11_jcell_GL_GENERATE_MIPMAP_HINT = 33170
    end if
    jresult = GL11_jcell_GL_GENERATE_MIPMAP_HINT
  end function

  subroutine GL11_jsetstatic_GL_GENERATE_MIPMAP_HINT(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_GENERATE_MIPMAP_HINT = .true.
    GL11_jcell_GL_GENERATE_MIPMAP_HINT = jvalue
  end subroutine

  function GL11_jstatic_GL_INTERPOLATE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_INTERPOLATE) then
      GL11_jset_GL_INTERPOLATE = .true.
      GL11_jcell_GL_INTERPOLATE = 34165
    end if
    jresult = GL11_jcell_GL_INTERPOLATE
  end function

  subroutine GL11_jsetstatic_GL_INTERPOLATE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_INTERPOLATE = .true.
    GL11_jcell_GL_INTERPOLATE = jvalue
  end subroutine

  function GL11_jstatic_GL_LINE_WIDTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_LINE_WIDTH) then
      GL11_jset_GL_LINE_WIDTH = .true.
      GL11_jcell_GL_LINE_WIDTH = 2849
    end if
    jresult = GL11_jcell_GL_LINE_WIDTH
  end function

  subroutine GL11_jsetstatic_GL_LINE_WIDTH(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_LINE_WIDTH = .true.
    GL11_jcell_GL_LINE_WIDTH = jvalue
  end subroutine

  function GL11_jstatic_GL_LOGIC_OP_MODE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_LOGIC_OP_MODE) then
      GL11_jset_GL_LOGIC_OP_MODE = .true.
      GL11_jcell_GL_LOGIC_OP_MODE = 3056
    end if
    jresult = GL11_jcell_GL_LOGIC_OP_MODE
  end function

  subroutine GL11_jsetstatic_GL_LOGIC_OP_MODE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_LOGIC_OP_MODE = .true.
    GL11_jcell_GL_LOGIC_OP_MODE = jvalue
  end subroutine

  function GL11_jstatic_GL_MATRIX_MODE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_MATRIX_MODE) then
      GL11_jset_GL_MATRIX_MODE = .true.
      GL11_jcell_GL_MATRIX_MODE = 2976
    end if
    jresult = GL11_jcell_GL_MATRIX_MODE
  end function

  subroutine GL11_jsetstatic_GL_MATRIX_MODE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_MATRIX_MODE = .true.
    GL11_jcell_GL_MATRIX_MODE = jvalue
  end subroutine

  function GL11_jstatic_GL_MAX_CLIP_PLANES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_MAX_CLIP_PLANES) then
      GL11_jset_GL_MAX_CLIP_PLANES = .true.
      GL11_jcell_GL_MAX_CLIP_PLANES = 3378
    end if
    jresult = GL11_jcell_GL_MAX_CLIP_PLANES
  end function

  subroutine GL11_jsetstatic_GL_MAX_CLIP_PLANES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_MAX_CLIP_PLANES = .true.
    GL11_jcell_GL_MAX_CLIP_PLANES = jvalue
  end subroutine

  function GL11_jstatic_GL_MODELVIEW_MATRIX() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_MODELVIEW_MATRIX) then
      GL11_jset_GL_MODELVIEW_MATRIX = .true.
      GL11_jcell_GL_MODELVIEW_MATRIX = 2982
    end if
    jresult = GL11_jcell_GL_MODELVIEW_MATRIX
  end function

  subroutine GL11_jsetstatic_GL_MODELVIEW_MATRIX(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_MODELVIEW_MATRIX = .true.
    GL11_jcell_GL_MODELVIEW_MATRIX = jvalue
  end subroutine

  function GL11_jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES) then
      GL11_jset_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = .true.
      GL11_jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = 35213
    end if
    jresult = GL11_jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES
  end function

  subroutine GL11_jsetstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = .true.
    GL11_jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_MODELVIEW_STACK_DEPTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_MODELVIEW_STACK_DEPTH) then
      GL11_jset_GL_MODELVIEW_STACK_DEPTH = .true.
      GL11_jcell_GL_MODELVIEW_STACK_DEPTH = 2979
    end if
    jresult = GL11_jcell_GL_MODELVIEW_STACK_DEPTH
  end function

  subroutine GL11_jsetstatic_GL_MODELVIEW_STACK_DEPTH(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_MODELVIEW_STACK_DEPTH = .true.
    GL11_jcell_GL_MODELVIEW_STACK_DEPTH = jvalue
  end subroutine

  function GL11_jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_NORMAL_ARRAY_BUFFER_BINDING) then
      GL11_jset_GL_NORMAL_ARRAY_BUFFER_BINDING = .true.
      GL11_jcell_GL_NORMAL_ARRAY_BUFFER_BINDING = 34967
    end if
    jresult = GL11_jcell_GL_NORMAL_ARRAY_BUFFER_BINDING
  end function

  subroutine GL11_jsetstatic_GL_NORMAL_ARRAY_BUFFER_BINDING(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_NORMAL_ARRAY_BUFFER_BINDING = .true.
    GL11_jcell_GL_NORMAL_ARRAY_BUFFER_BINDING = jvalue
  end subroutine

  function GL11_jstatic_GL_NORMAL_ARRAY_POINTER() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_NORMAL_ARRAY_POINTER) then
      GL11_jset_GL_NORMAL_ARRAY_POINTER = .true.
      GL11_jcell_GL_NORMAL_ARRAY_POINTER = 32911
    end if
    jresult = GL11_jcell_GL_NORMAL_ARRAY_POINTER
  end function

  subroutine GL11_jsetstatic_GL_NORMAL_ARRAY_POINTER(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_NORMAL_ARRAY_POINTER = .true.
    GL11_jcell_GL_NORMAL_ARRAY_POINTER = jvalue
  end subroutine

  function GL11_jstatic_GL_NORMAL_ARRAY_STRIDE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_NORMAL_ARRAY_STRIDE) then
      GL11_jset_GL_NORMAL_ARRAY_STRIDE = .true.
      GL11_jcell_GL_NORMAL_ARRAY_STRIDE = 32895
    end if
    jresult = GL11_jcell_GL_NORMAL_ARRAY_STRIDE
  end function

  subroutine GL11_jsetstatic_GL_NORMAL_ARRAY_STRIDE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_NORMAL_ARRAY_STRIDE = .true.
    GL11_jcell_GL_NORMAL_ARRAY_STRIDE = jvalue
  end subroutine

  function GL11_jstatic_GL_NORMAL_ARRAY_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_NORMAL_ARRAY_TYPE) then
      GL11_jset_GL_NORMAL_ARRAY_TYPE = .true.
      GL11_jcell_GL_NORMAL_ARRAY_TYPE = 32894
    end if
    jresult = GL11_jcell_GL_NORMAL_ARRAY_TYPE
  end function

  subroutine GL11_jsetstatic_GL_NORMAL_ARRAY_TYPE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_NORMAL_ARRAY_TYPE = .true.
    GL11_jcell_GL_NORMAL_ARRAY_TYPE = jvalue
  end subroutine

  function GL11_jstatic_GL_OPERAND0_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_OPERAND0_ALPHA) then
      GL11_jset_GL_OPERAND0_ALPHA = .true.
      GL11_jcell_GL_OPERAND0_ALPHA = 34200
    end if
    jresult = GL11_jcell_GL_OPERAND0_ALPHA
  end function

  subroutine GL11_jsetstatic_GL_OPERAND0_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_OPERAND0_ALPHA = .true.
    GL11_jcell_GL_OPERAND0_ALPHA = jvalue
  end subroutine

  function GL11_jstatic_GL_OPERAND0_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_OPERAND0_RGB) then
      GL11_jset_GL_OPERAND0_RGB = .true.
      GL11_jcell_GL_OPERAND0_RGB = 34192
    end if
    jresult = GL11_jcell_GL_OPERAND0_RGB
  end function

  subroutine GL11_jsetstatic_GL_OPERAND0_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_OPERAND0_RGB = .true.
    GL11_jcell_GL_OPERAND0_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_OPERAND1_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_OPERAND1_ALPHA) then
      GL11_jset_GL_OPERAND1_ALPHA = .true.
      GL11_jcell_GL_OPERAND1_ALPHA = 34201
    end if
    jresult = GL11_jcell_GL_OPERAND1_ALPHA
  end function

  subroutine GL11_jsetstatic_GL_OPERAND1_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_OPERAND1_ALPHA = .true.
    GL11_jcell_GL_OPERAND1_ALPHA = jvalue
  end subroutine

  function GL11_jstatic_GL_OPERAND1_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_OPERAND1_RGB) then
      GL11_jset_GL_OPERAND1_RGB = .true.
      GL11_jcell_GL_OPERAND1_RGB = 34193
    end if
    jresult = GL11_jcell_GL_OPERAND1_RGB
  end function

  subroutine GL11_jsetstatic_GL_OPERAND1_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_OPERAND1_RGB = .true.
    GL11_jcell_GL_OPERAND1_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_OPERAND2_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_OPERAND2_ALPHA) then
      GL11_jset_GL_OPERAND2_ALPHA = .true.
      GL11_jcell_GL_OPERAND2_ALPHA = 34202
    end if
    jresult = GL11_jcell_GL_OPERAND2_ALPHA
  end function

  subroutine GL11_jsetstatic_GL_OPERAND2_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_OPERAND2_ALPHA = .true.
    GL11_jcell_GL_OPERAND2_ALPHA = jvalue
  end subroutine

  function GL11_jstatic_GL_OPERAND2_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_OPERAND2_RGB) then
      GL11_jset_GL_OPERAND2_RGB = .true.
      GL11_jcell_GL_OPERAND2_RGB = 34194
    end if
    jresult = GL11_jcell_GL_OPERAND2_RGB
  end function

  subroutine GL11_jsetstatic_GL_OPERAND2_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_OPERAND2_RGB = .true.
    GL11_jcell_GL_OPERAND2_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_DISTANCE_ATTENUATION() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_DISTANCE_ATTENUATION) then
      GL11_jset_GL_POINT_DISTANCE_ATTENUATION = .true.
      GL11_jcell_GL_POINT_DISTANCE_ATTENUATION = 33065
    end if
    jresult = GL11_jcell_GL_POINT_DISTANCE_ATTENUATION
  end function

  subroutine GL11_jsetstatic_GL_POINT_DISTANCE_ATTENUATION(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_DISTANCE_ATTENUATION = .true.
    GL11_jcell_GL_POINT_DISTANCE_ATTENUATION = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_FADE_THRESHOLD_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_FADE_THRESHOLD_SIZE) then
      GL11_jset_GL_POINT_FADE_THRESHOLD_SIZE = .true.
      GL11_jcell_GL_POINT_FADE_THRESHOLD_SIZE = 33064
    end if
    jresult = GL11_jcell_GL_POINT_FADE_THRESHOLD_SIZE
  end function

  subroutine GL11_jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_FADE_THRESHOLD_SIZE = .true.
    GL11_jcell_GL_POINT_FADE_THRESHOLD_SIZE = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE) then
      GL11_jset_GL_POINT_SIZE = .true.
      GL11_jcell_GL_POINT_SIZE = 2833
    end if
    jresult = GL11_jcell_GL_POINT_SIZE
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE = .true.
    GL11_jcell_GL_POINT_SIZE = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES) then
      GL11_jset_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = .true.
      GL11_jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 35743
    end if
    jresult = GL11_jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = .true.
    GL11_jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE_ARRAY_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE_ARRAY_OES) then
      GL11_jset_GL_POINT_SIZE_ARRAY_OES = .true.
      GL11_jcell_GL_POINT_SIZE_ARRAY_OES = 35740
    end if
    jresult = GL11_jcell_GL_POINT_SIZE_ARRAY_OES
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE_ARRAY_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE_ARRAY_OES = .true.
    GL11_jcell_GL_POINT_SIZE_ARRAY_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE_ARRAY_POINTER_OES) then
      GL11_jset_GL_POINT_SIZE_ARRAY_POINTER_OES = .true.
      GL11_jcell_GL_POINT_SIZE_ARRAY_POINTER_OES = 35212
    end if
    jresult = GL11_jcell_GL_POINT_SIZE_ARRAY_POINTER_OES
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE_ARRAY_POINTER_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE_ARRAY_POINTER_OES = .true.
    GL11_jcell_GL_POINT_SIZE_ARRAY_POINTER_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE_ARRAY_STRIDE_OES) then
      GL11_jset_GL_POINT_SIZE_ARRAY_STRIDE_OES = .true.
      GL11_jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES = 35211
    end if
    jresult = GL11_jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE_ARRAY_STRIDE_OES = .true.
    GL11_jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE_ARRAY_TYPE_OES) then
      GL11_jset_GL_POINT_SIZE_ARRAY_TYPE_OES = .true.
      GL11_jcell_GL_POINT_SIZE_ARRAY_TYPE_OES = 35210
    end if
    jresult = GL11_jcell_GL_POINT_SIZE_ARRAY_TYPE_OES
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE_ARRAY_TYPE_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE_ARRAY_TYPE_OES = .true.
    GL11_jcell_GL_POINT_SIZE_ARRAY_TYPE_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE_MAX() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE_MAX) then
      GL11_jset_GL_POINT_SIZE_MAX = .true.
      GL11_jcell_GL_POINT_SIZE_MAX = 33063
    end if
    jresult = GL11_jcell_GL_POINT_SIZE_MAX
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE_MAX(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE_MAX = .true.
    GL11_jcell_GL_POINT_SIZE_MAX = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SIZE_MIN() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SIZE_MIN) then
      GL11_jset_GL_POINT_SIZE_MIN = .true.
      GL11_jcell_GL_POINT_SIZE_MIN = 33062
    end if
    jresult = GL11_jcell_GL_POINT_SIZE_MIN
  end function

  subroutine GL11_jsetstatic_GL_POINT_SIZE_MIN(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SIZE_MIN = .true.
    GL11_jcell_GL_POINT_SIZE_MIN = jvalue
  end subroutine

  function GL11_jstatic_GL_POINT_SPRITE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POINT_SPRITE_OES) then
      GL11_jset_GL_POINT_SPRITE_OES = .true.
      GL11_jcell_GL_POINT_SPRITE_OES = 34913
    end if
    jresult = GL11_jcell_GL_POINT_SPRITE_OES
  end function

  subroutine GL11_jsetstatic_GL_POINT_SPRITE_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POINT_SPRITE_OES = .true.
    GL11_jcell_GL_POINT_SPRITE_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_POLYGON_OFFSET_FACTOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POLYGON_OFFSET_FACTOR) then
      GL11_jset_GL_POLYGON_OFFSET_FACTOR = .true.
      GL11_jcell_GL_POLYGON_OFFSET_FACTOR = 32824
    end if
    jresult = GL11_jcell_GL_POLYGON_OFFSET_FACTOR
  end function

  subroutine GL11_jsetstatic_GL_POLYGON_OFFSET_FACTOR(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POLYGON_OFFSET_FACTOR = .true.
    GL11_jcell_GL_POLYGON_OFFSET_FACTOR = jvalue
  end subroutine

  function GL11_jstatic_GL_POLYGON_OFFSET_UNITS() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_POLYGON_OFFSET_UNITS) then
      GL11_jset_GL_POLYGON_OFFSET_UNITS = .true.
      GL11_jcell_GL_POLYGON_OFFSET_UNITS = 10752
    end if
    jresult = GL11_jcell_GL_POLYGON_OFFSET_UNITS
  end function

  subroutine GL11_jsetstatic_GL_POLYGON_OFFSET_UNITS(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_POLYGON_OFFSET_UNITS = .true.
    GL11_jcell_GL_POLYGON_OFFSET_UNITS = jvalue
  end subroutine

  function GL11_jstatic_GL_PREVIOUS() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_PREVIOUS) then
      GL11_jset_GL_PREVIOUS = .true.
      GL11_jcell_GL_PREVIOUS = 34168
    end if
    jresult = GL11_jcell_GL_PREVIOUS
  end function

  subroutine GL11_jsetstatic_GL_PREVIOUS(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_PREVIOUS = .true.
    GL11_jcell_GL_PREVIOUS = jvalue
  end subroutine

  function GL11_jstatic_GL_PRIMARY_COLOR() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_PRIMARY_COLOR) then
      GL11_jset_GL_PRIMARY_COLOR = .true.
      GL11_jcell_GL_PRIMARY_COLOR = 34167
    end if
    jresult = GL11_jcell_GL_PRIMARY_COLOR
  end function

  subroutine GL11_jsetstatic_GL_PRIMARY_COLOR(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_PRIMARY_COLOR = .true.
    GL11_jcell_GL_PRIMARY_COLOR = jvalue
  end subroutine

  function GL11_jstatic_GL_PROJECTION_MATRIX() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_PROJECTION_MATRIX) then
      GL11_jset_GL_PROJECTION_MATRIX = .true.
      GL11_jcell_GL_PROJECTION_MATRIX = 2983
    end if
    jresult = GL11_jcell_GL_PROJECTION_MATRIX
  end function

  subroutine GL11_jsetstatic_GL_PROJECTION_MATRIX(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_PROJECTION_MATRIX = .true.
    GL11_jcell_GL_PROJECTION_MATRIX = jvalue
  end subroutine

  function GL11_jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES) then
      GL11_jset_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = .true.
      GL11_jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = 35214
    end if
    jresult = GL11_jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES
  end function

  subroutine GL11_jsetstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = .true.
    GL11_jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_PROJECTION_STACK_DEPTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_PROJECTION_STACK_DEPTH) then
      GL11_jset_GL_PROJECTION_STACK_DEPTH = .true.
      GL11_jcell_GL_PROJECTION_STACK_DEPTH = 2980
    end if
    jresult = GL11_jcell_GL_PROJECTION_STACK_DEPTH
  end function

  subroutine GL11_jsetstatic_GL_PROJECTION_STACK_DEPTH(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_PROJECTION_STACK_DEPTH = .true.
    GL11_jcell_GL_PROJECTION_STACK_DEPTH = jvalue
  end subroutine

  function GL11_jstatic_GL_RGB_SCALE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_RGB_SCALE) then
      GL11_jset_GL_RGB_SCALE = .true.
      GL11_jcell_GL_RGB_SCALE = 34163
    end if
    jresult = GL11_jcell_GL_RGB_SCALE
  end function

  subroutine GL11_jsetstatic_GL_RGB_SCALE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_RGB_SCALE = .true.
    GL11_jcell_GL_RGB_SCALE = jvalue
  end subroutine

  function GL11_jstatic_GL_SAMPLE_BUFFERS() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SAMPLE_BUFFERS) then
      GL11_jset_GL_SAMPLE_BUFFERS = .true.
      GL11_jcell_GL_SAMPLE_BUFFERS = 32936
    end if
    jresult = GL11_jcell_GL_SAMPLE_BUFFERS
  end function

  subroutine GL11_jsetstatic_GL_SAMPLE_BUFFERS(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SAMPLE_BUFFERS = .true.
    GL11_jcell_GL_SAMPLE_BUFFERS = jvalue
  end subroutine

  function GL11_jstatic_GL_SAMPLE_COVERAGE_INVERT() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SAMPLE_COVERAGE_INVERT) then
      GL11_jset_GL_SAMPLE_COVERAGE_INVERT = .true.
      GL11_jcell_GL_SAMPLE_COVERAGE_INVERT = 32939
    end if
    jresult = GL11_jcell_GL_SAMPLE_COVERAGE_INVERT
  end function

  subroutine GL11_jsetstatic_GL_SAMPLE_COVERAGE_INVERT(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SAMPLE_COVERAGE_INVERT = .true.
    GL11_jcell_GL_SAMPLE_COVERAGE_INVERT = jvalue
  end subroutine

  function GL11_jstatic_GL_SAMPLE_COVERAGE_VALUE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SAMPLE_COVERAGE_VALUE) then
      GL11_jset_GL_SAMPLE_COVERAGE_VALUE = .true.
      GL11_jcell_GL_SAMPLE_COVERAGE_VALUE = 32938
    end if
    jresult = GL11_jcell_GL_SAMPLE_COVERAGE_VALUE
  end function

  subroutine GL11_jsetstatic_GL_SAMPLE_COVERAGE_VALUE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SAMPLE_COVERAGE_VALUE = .true.
    GL11_jcell_GL_SAMPLE_COVERAGE_VALUE = jvalue
  end subroutine

  function GL11_jstatic_GL_SAMPLES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SAMPLES) then
      GL11_jset_GL_SAMPLES = .true.
      GL11_jcell_GL_SAMPLES = 32937
    end if
    jresult = GL11_jcell_GL_SAMPLES
  end function

  subroutine GL11_jsetstatic_GL_SAMPLES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SAMPLES = .true.
    GL11_jcell_GL_SAMPLES = jvalue
  end subroutine

  function GL11_jstatic_GL_SCISSOR_BOX() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SCISSOR_BOX) then
      GL11_jset_GL_SCISSOR_BOX = .true.
      GL11_jcell_GL_SCISSOR_BOX = 3088
    end if
    jresult = GL11_jcell_GL_SCISSOR_BOX
  end function

  subroutine GL11_jsetstatic_GL_SCISSOR_BOX(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SCISSOR_BOX = .true.
    GL11_jcell_GL_SCISSOR_BOX = jvalue
  end subroutine

  function GL11_jstatic_GL_SHADE_MODEL() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SHADE_MODEL) then
      GL11_jset_GL_SHADE_MODEL = .true.
      GL11_jcell_GL_SHADE_MODEL = 2900
    end if
    jresult = GL11_jcell_GL_SHADE_MODEL
  end function

  subroutine GL11_jsetstatic_GL_SHADE_MODEL(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SHADE_MODEL = .true.
    GL11_jcell_GL_SHADE_MODEL = jvalue
  end subroutine

  function GL11_jstatic_GL_SRC0_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SRC0_ALPHA) then
      GL11_jset_GL_SRC0_ALPHA = .true.
      GL11_jcell_GL_SRC0_ALPHA = 34184
    end if
    jresult = GL11_jcell_GL_SRC0_ALPHA
  end function

  subroutine GL11_jsetstatic_GL_SRC0_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SRC0_ALPHA = .true.
    GL11_jcell_GL_SRC0_ALPHA = jvalue
  end subroutine

  function GL11_jstatic_GL_SRC0_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SRC0_RGB) then
      GL11_jset_GL_SRC0_RGB = .true.
      GL11_jcell_GL_SRC0_RGB = 34176
    end if
    jresult = GL11_jcell_GL_SRC0_RGB
  end function

  subroutine GL11_jsetstatic_GL_SRC0_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SRC0_RGB = .true.
    GL11_jcell_GL_SRC0_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_SRC1_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SRC1_ALPHA) then
      GL11_jset_GL_SRC1_ALPHA = .true.
      GL11_jcell_GL_SRC1_ALPHA = 34185
    end if
    jresult = GL11_jcell_GL_SRC1_ALPHA
  end function

  subroutine GL11_jsetstatic_GL_SRC1_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SRC1_ALPHA = .true.
    GL11_jcell_GL_SRC1_ALPHA = jvalue
  end subroutine

  function GL11_jstatic_GL_SRC1_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SRC1_RGB) then
      GL11_jset_GL_SRC1_RGB = .true.
      GL11_jcell_GL_SRC1_RGB = 34177
    end if
    jresult = GL11_jcell_GL_SRC1_RGB
  end function

  subroutine GL11_jsetstatic_GL_SRC1_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SRC1_RGB = .true.
    GL11_jcell_GL_SRC1_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_SRC2_ALPHA() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SRC2_ALPHA) then
      GL11_jset_GL_SRC2_ALPHA = .true.
      GL11_jcell_GL_SRC2_ALPHA = 34186
    end if
    jresult = GL11_jcell_GL_SRC2_ALPHA
  end function

  subroutine GL11_jsetstatic_GL_SRC2_ALPHA(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SRC2_ALPHA = .true.
    GL11_jcell_GL_SRC2_ALPHA = jvalue
  end subroutine

  function GL11_jstatic_GL_SRC2_RGB() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SRC2_RGB) then
      GL11_jset_GL_SRC2_RGB = .true.
      GL11_jcell_GL_SRC2_RGB = 34178
    end if
    jresult = GL11_jcell_GL_SRC2_RGB
  end function

  subroutine GL11_jsetstatic_GL_SRC2_RGB(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SRC2_RGB = .true.
    GL11_jcell_GL_SRC2_RGB = jvalue
  end subroutine

  function GL11_jstatic_GL_STATIC_DRAW() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STATIC_DRAW) then
      GL11_jset_GL_STATIC_DRAW = .true.
      GL11_jcell_GL_STATIC_DRAW = 35044
    end if
    jresult = GL11_jcell_GL_STATIC_DRAW
  end function

  subroutine GL11_jsetstatic_GL_STATIC_DRAW(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STATIC_DRAW = .true.
    GL11_jcell_GL_STATIC_DRAW = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_CLEAR_VALUE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_CLEAR_VALUE) then
      GL11_jset_GL_STENCIL_CLEAR_VALUE = .true.
      GL11_jcell_GL_STENCIL_CLEAR_VALUE = 2961
    end if
    jresult = GL11_jcell_GL_STENCIL_CLEAR_VALUE
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_CLEAR_VALUE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_CLEAR_VALUE = .true.
    GL11_jcell_GL_STENCIL_CLEAR_VALUE = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_FAIL() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_FAIL) then
      GL11_jset_GL_STENCIL_FAIL = .true.
      GL11_jcell_GL_STENCIL_FAIL = 2964
    end if
    jresult = GL11_jcell_GL_STENCIL_FAIL
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_FAIL(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_FAIL = .true.
    GL11_jcell_GL_STENCIL_FAIL = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_FUNC() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_FUNC) then
      GL11_jset_GL_STENCIL_FUNC = .true.
      GL11_jcell_GL_STENCIL_FUNC = 2962
    end if
    jresult = GL11_jcell_GL_STENCIL_FUNC
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_FUNC(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_FUNC = .true.
    GL11_jcell_GL_STENCIL_FUNC = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_PASS_DEPTH_FAIL() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_PASS_DEPTH_FAIL) then
      GL11_jset_GL_STENCIL_PASS_DEPTH_FAIL = .true.
      GL11_jcell_GL_STENCIL_PASS_DEPTH_FAIL = 2965
    end if
    jresult = GL11_jcell_GL_STENCIL_PASS_DEPTH_FAIL
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_PASS_DEPTH_FAIL(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_PASS_DEPTH_FAIL = .true.
    GL11_jcell_GL_STENCIL_PASS_DEPTH_FAIL = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_PASS_DEPTH_PASS() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_PASS_DEPTH_PASS) then
      GL11_jset_GL_STENCIL_PASS_DEPTH_PASS = .true.
      GL11_jcell_GL_STENCIL_PASS_DEPTH_PASS = 2966
    end if
    jresult = GL11_jcell_GL_STENCIL_PASS_DEPTH_PASS
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_PASS_DEPTH_PASS(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_PASS_DEPTH_PASS = .true.
    GL11_jcell_GL_STENCIL_PASS_DEPTH_PASS = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_REF() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_REF) then
      GL11_jset_GL_STENCIL_REF = .true.
      GL11_jcell_GL_STENCIL_REF = 2967
    end if
    jresult = GL11_jcell_GL_STENCIL_REF
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_REF(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_REF = .true.
    GL11_jcell_GL_STENCIL_REF = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_VALUE_MASK() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_VALUE_MASK) then
      GL11_jset_GL_STENCIL_VALUE_MASK = .true.
      GL11_jcell_GL_STENCIL_VALUE_MASK = 2963
    end if
    jresult = GL11_jcell_GL_STENCIL_VALUE_MASK
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_VALUE_MASK(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_VALUE_MASK = .true.
    GL11_jcell_GL_STENCIL_VALUE_MASK = jvalue
  end subroutine

  function GL11_jstatic_GL_STENCIL_WRITEMASK() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_STENCIL_WRITEMASK) then
      GL11_jset_GL_STENCIL_WRITEMASK = .true.
      GL11_jcell_GL_STENCIL_WRITEMASK = 2968
    end if
    jresult = GL11_jcell_GL_STENCIL_WRITEMASK
  end function

  subroutine GL11_jsetstatic_GL_STENCIL_WRITEMASK(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_STENCIL_WRITEMASK = .true.
    GL11_jcell_GL_STENCIL_WRITEMASK = jvalue
  end subroutine

  function GL11_jstatic_GL_SUBTRACT() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_SUBTRACT) then
      GL11_jset_GL_SUBTRACT = .true.
      GL11_jcell_GL_SUBTRACT = 34023
    end if
    jresult = GL11_jcell_GL_SUBTRACT
  end function

  subroutine GL11_jsetstatic_GL_SUBTRACT(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_SUBTRACT = .true.
    GL11_jcell_GL_SUBTRACT = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_BINDING_2D() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_BINDING_2D) then
      GL11_jset_GL_TEXTURE_BINDING_2D = .true.
      GL11_jcell_GL_TEXTURE_BINDING_2D = 32873
    end if
    jresult = GL11_jcell_GL_TEXTURE_BINDING_2D
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_BINDING_2D(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_BINDING_2D = .true.
    GL11_jcell_GL_TEXTURE_BINDING_2D = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING) then
      GL11_jset_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = .true.
      GL11_jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970
    end if
    jresult = GL11_jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = .true.
    GL11_jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_COORD_ARRAY_POINTER() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_COORD_ARRAY_POINTER) then
      GL11_jset_GL_TEXTURE_COORD_ARRAY_POINTER = .true.
      GL11_jcell_GL_TEXTURE_COORD_ARRAY_POINTER = 32914
    end if
    jresult = GL11_jcell_GL_TEXTURE_COORD_ARRAY_POINTER
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_COORD_ARRAY_POINTER(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_COORD_ARRAY_POINTER = .true.
    GL11_jcell_GL_TEXTURE_COORD_ARRAY_POINTER = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_COORD_ARRAY_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_COORD_ARRAY_SIZE) then
      GL11_jset_GL_TEXTURE_COORD_ARRAY_SIZE = .true.
      GL11_jcell_GL_TEXTURE_COORD_ARRAY_SIZE = 32904
    end if
    jresult = GL11_jcell_GL_TEXTURE_COORD_ARRAY_SIZE
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_COORD_ARRAY_SIZE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_COORD_ARRAY_SIZE = .true.
    GL11_jcell_GL_TEXTURE_COORD_ARRAY_SIZE = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_COORD_ARRAY_STRIDE) then
      GL11_jset_GL_TEXTURE_COORD_ARRAY_STRIDE = .true.
      GL11_jcell_GL_TEXTURE_COORD_ARRAY_STRIDE = 32906
    end if
    jresult = GL11_jcell_GL_TEXTURE_COORD_ARRAY_STRIDE
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_COORD_ARRAY_STRIDE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_COORD_ARRAY_STRIDE = .true.
    GL11_jcell_GL_TEXTURE_COORD_ARRAY_STRIDE = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_COORD_ARRAY_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_COORD_ARRAY_TYPE) then
      GL11_jset_GL_TEXTURE_COORD_ARRAY_TYPE = .true.
      GL11_jcell_GL_TEXTURE_COORD_ARRAY_TYPE = 32905
    end if
    jresult = GL11_jcell_GL_TEXTURE_COORD_ARRAY_TYPE
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_COORD_ARRAY_TYPE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_COORD_ARRAY_TYPE = .true.
    GL11_jcell_GL_TEXTURE_COORD_ARRAY_TYPE = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_MATRIX() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_MATRIX) then
      GL11_jset_GL_TEXTURE_MATRIX = .true.
      GL11_jcell_GL_TEXTURE_MATRIX = 2984
    end if
    jresult = GL11_jcell_GL_TEXTURE_MATRIX
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_MATRIX(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_MATRIX = .true.
    GL11_jcell_GL_TEXTURE_MATRIX = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES) then
      GL11_jset_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = .true.
      GL11_jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = 35215
    end if
    jresult = GL11_jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = .true.
    GL11_jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = jvalue
  end subroutine

  function GL11_jstatic_GL_TEXTURE_STACK_DEPTH() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_TEXTURE_STACK_DEPTH) then
      GL11_jset_GL_TEXTURE_STACK_DEPTH = .true.
      GL11_jcell_GL_TEXTURE_STACK_DEPTH = 2981
    end if
    jresult = GL11_jcell_GL_TEXTURE_STACK_DEPTH
  end function

  subroutine GL11_jsetstatic_GL_TEXTURE_STACK_DEPTH(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_TEXTURE_STACK_DEPTH = .true.
    GL11_jcell_GL_TEXTURE_STACK_DEPTH = jvalue
  end subroutine

  function GL11_jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_VERTEX_ARRAY_BUFFER_BINDING) then
      GL11_jset_GL_VERTEX_ARRAY_BUFFER_BINDING = .true.
      GL11_jcell_GL_VERTEX_ARRAY_BUFFER_BINDING = 34966
    end if
    jresult = GL11_jcell_GL_VERTEX_ARRAY_BUFFER_BINDING
  end function

  subroutine GL11_jsetstatic_GL_VERTEX_ARRAY_BUFFER_BINDING(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_VERTEX_ARRAY_BUFFER_BINDING = .true.
    GL11_jcell_GL_VERTEX_ARRAY_BUFFER_BINDING = jvalue
  end subroutine

  function GL11_jstatic_GL_VERTEX_ARRAY_POINTER() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_VERTEX_ARRAY_POINTER) then
      GL11_jset_GL_VERTEX_ARRAY_POINTER = .true.
      GL11_jcell_GL_VERTEX_ARRAY_POINTER = 32910
    end if
    jresult = GL11_jcell_GL_VERTEX_ARRAY_POINTER
  end function

  subroutine GL11_jsetstatic_GL_VERTEX_ARRAY_POINTER(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_VERTEX_ARRAY_POINTER = .true.
    GL11_jcell_GL_VERTEX_ARRAY_POINTER = jvalue
  end subroutine

  function GL11_jstatic_GL_VERTEX_ARRAY_SIZE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_VERTEX_ARRAY_SIZE) then
      GL11_jset_GL_VERTEX_ARRAY_SIZE = .true.
      GL11_jcell_GL_VERTEX_ARRAY_SIZE = 32890
    end if
    jresult = GL11_jcell_GL_VERTEX_ARRAY_SIZE
  end function

  subroutine GL11_jsetstatic_GL_VERTEX_ARRAY_SIZE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_VERTEX_ARRAY_SIZE = .true.
    GL11_jcell_GL_VERTEX_ARRAY_SIZE = jvalue
  end subroutine

  function GL11_jstatic_GL_VERTEX_ARRAY_STRIDE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_VERTEX_ARRAY_STRIDE) then
      GL11_jset_GL_VERTEX_ARRAY_STRIDE = .true.
      GL11_jcell_GL_VERTEX_ARRAY_STRIDE = 32892
    end if
    jresult = GL11_jcell_GL_VERTEX_ARRAY_STRIDE
  end function

  subroutine GL11_jsetstatic_GL_VERTEX_ARRAY_STRIDE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_VERTEX_ARRAY_STRIDE = .true.
    GL11_jcell_GL_VERTEX_ARRAY_STRIDE = jvalue
  end subroutine

  function GL11_jstatic_GL_VERTEX_ARRAY_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_VERTEX_ARRAY_TYPE) then
      GL11_jset_GL_VERTEX_ARRAY_TYPE = .true.
      GL11_jcell_GL_VERTEX_ARRAY_TYPE = 32891
    end if
    jresult = GL11_jcell_GL_VERTEX_ARRAY_TYPE
  end function

  subroutine GL11_jsetstatic_GL_VERTEX_ARRAY_TYPE(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_VERTEX_ARRAY_TYPE = .true.
    GL11_jcell_GL_VERTEX_ARRAY_TYPE = jvalue
  end subroutine

  function GL11_jstatic_GL_VIEWPORT() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_VIEWPORT) then
      GL11_jset_GL_VIEWPORT = .true.
      GL11_jcell_GL_VIEWPORT = 2978
    end if
    jresult = GL11_jcell_GL_VIEWPORT
  end function

  subroutine GL11_jsetstatic_GL_VIEWPORT(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_VIEWPORT = .true.
    GL11_jcell_GL_VIEWPORT = jvalue
  end subroutine

  function GL11_jstatic_GL_WRITE_ONLY() result(jresult)
    integer(4) :: jresult
    if (.not. GL11_jset_GL_WRITE_ONLY) then
      GL11_jset_GL_WRITE_ONLY = .true.
      GL11_jcell_GL_WRITE_ONLY = 35001
    end if
    jresult = GL11_jcell_GL_WRITE_ONLY
  end function

  subroutine GL11_jsetstatic_GL_WRITE_ONLY(jvalue)
    integer(4), value :: jvalue
    GL11_jset_GL_WRITE_ONLY = .true.
    GL11_jcell_GL_WRITE_ONLY = jvalue
  end subroutine

  function GL11_jnew_0() result(this)
    class(GL11), pointer :: this
    allocate(this)
    this%jclass = 'GL11'
  end function

  recursive subroutine GL11_jm_glBindBuffer_2(this, j_target, j_buffer)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_buffer
    error stop 'AbstractMethodError: GL11.glBindBuffer'
  end subroutine

  recursive subroutine GL11_jm_glBufferData_4(this, j_target, j_size, j_data, j_usage)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_size
    class(Buffer), target, optional :: j_data
    integer(4), value :: j_usage
    error stop 'AbstractMethodError: GL11.glBufferData'
  end subroutine

  recursive subroutine GL11_jm_glBufferSubData_4(this, j_target, j_offset, j_size, j_data)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_offset
    integer(4), value :: j_size
    class(Buffer), target, optional :: j_data
    error stop 'AbstractMethodError: GL11.glBufferSubData'
  end subroutine

  recursive subroutine GL11_jm_glClipPlanef_3(this, j_plane, j_equation, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_plane
    real(4) :: j_equation(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glClipPlanef'
  end subroutine

  recursive subroutine GL11_jm_glClipPlanef_2(this, j_plane, j_equation)
    class(GL11), target :: this
    integer(4), value :: j_plane
    class(FloatBuffer), target, optional :: j_equation
    error stop 'AbstractMethodError: GL11.glClipPlanef'
  end subroutine

  recursive subroutine GL11_jm_glColor4ub_4(this, j_red, j_green, j_blue, j_alpha)
    class(GL11), target :: this
    integer(4), value :: j_red
    integer(4), value :: j_green
    integer(4), value :: j_blue
    integer(4), value :: j_alpha
    error stop 'AbstractMethodError: GL11.glColor4ub'
  end subroutine

  recursive subroutine GL11_jm_glColorPointer_4(this, j_size, j_type, j_stride, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glColorPointer'
  end subroutine

  recursive subroutine GL11_jm_glDeleteBuffers_3(this, j_n, j_buffers, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_n
    integer(4) :: j_buffers(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glDeleteBuffers'
  end subroutine

  recursive subroutine GL11_jm_glDeleteBuffers_2(this, j_n, j_buffers)
    class(GL11), target :: this
    integer(4), value :: j_n
    class(IntBuffer), target, optional :: j_buffers
    error stop 'AbstractMethodError: GL11.glDeleteBuffers'
  end subroutine

  recursive subroutine GL11_jm_glDrawElements_4(this, j_mode, j_count, j_type, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_mode
    integer(4), value :: j_count
    integer(4), value :: j_type
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glDrawElements'
  end subroutine

  recursive subroutine GL11_jm_glGenBuffers_3(this, j_n, j_buffers, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_n
    integer(4) :: j_buffers(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGenBuffers'
  end subroutine

  recursive subroutine GL11_jm_glGenBuffers_2(this, j_n, j_buffers)
    class(GL11), target :: this
    integer(4), value :: j_n
    class(IntBuffer), target, optional :: j_buffers
    error stop 'AbstractMethodError: GL11.glGenBuffers'
  end subroutine

  recursive subroutine GL11_jm_glGetBufferParameteriv_4(this, j_target, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetBufferParameteriv'
  end subroutine

  recursive subroutine GL11_jm_glGetBufferParameteriv_3(this, j_target, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(IntBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glGetBufferParameteriv'
  end subroutine

  recursive subroutine GL11_jm_glGetClipPlanef_3(this, j_pname, j_eqn, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_pname
    real(4) :: j_eqn(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetClipPlanef'
  end subroutine

  recursive subroutine GL11_jm_glGetClipPlanef_2(this, j_pname, j_eqn)
    class(GL11), target :: this
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_eqn
    error stop 'AbstractMethodError: GL11.glGetClipPlanef'
  end subroutine

  recursive subroutine GL11_jm_glGetFloatv_3(this, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetFloatv'
  end subroutine

  recursive subroutine GL11_jm_glGetFloatv_2(this, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glGetFloatv'
  end subroutine

  recursive subroutine GL11_jm_glGetLightfv_4(this, j_light, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetLightfv'
  end subroutine

  recursive subroutine GL11_jm_glGetLightfv_3(this, j_light, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glGetLightfv'
  end subroutine

  recursive subroutine GL11_jm_glGetMaterialfv_4(this, j_face, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetMaterialfv'
  end subroutine

  recursive subroutine GL11_jm_glGetMaterialfv_3(this, j_face, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glGetMaterialfv'
  end subroutine

  recursive subroutine GL11_jm_glGetTexEnviv_4(this, j_env, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_env
    integer(4), value :: j_pname
    integer(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetTexEnviv'
  end subroutine

  recursive subroutine GL11_jm_glGetTexEnviv_3(this, j_env, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_env
    integer(4), value :: j_pname
    class(IntBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glGetTexEnviv'
  end subroutine

  recursive subroutine GL11_jm_glGetTexParameterfv_4(this, j_target, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetTexParameterfv'
  end subroutine

  recursive subroutine GL11_jm_glGetTexParameterfv_3(this, j_target, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glGetTexParameterfv'
  end subroutine

  recursive subroutine GL11_jm_glGetTexParameteriv_4(this, j_target, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glGetTexParameteriv'
  end subroutine

  recursive subroutine GL11_jm_glGetTexParameteriv_3(this, j_target, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(IntBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glGetTexParameteriv'
  end subroutine

  recursive function GL11_jm_glIsBuffer_1(this, j_buffer) result(jresult)
    class(GL11), target :: this
    integer(4), value :: j_buffer
    logical :: jresult
    error stop 'AbstractMethodError: GL11.glIsBuffer'
  end function

  recursive function GL11_jm_glIsEnabled_1(this, j_cap) result(jresult)
    class(GL11), target :: this
    integer(4), value :: j_cap
    logical :: jresult
    error stop 'AbstractMethodError: GL11.glIsEnabled'
  end function

  recursive function GL11_jm_glIsTexture_1(this, j_texture) result(jresult)
    class(GL11), target :: this
    integer(4), value :: j_texture
    logical :: jresult
    error stop 'AbstractMethodError: GL11.glIsTexture'
  end function

  recursive subroutine GL11_jm_glNormalPointer_3(this, j_type, j_stride, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_type
    integer(4), value :: j_stride
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glNormalPointer'
  end subroutine

  recursive subroutine GL11_jm_glPointParameterf_2(this, j_pname, j_param)
    class(GL11), target :: this
    integer(4), value :: j_pname
    real(4), value :: j_param
    error stop 'AbstractMethodError: GL11.glPointParameterf'
  end subroutine

  recursive subroutine GL11_jm_glPointParameterfv_3(this, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glPointParameterfv'
  end subroutine

  recursive subroutine GL11_jm_glPointParameterfv_2(this, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glPointParameterfv'
  end subroutine

  recursive subroutine GL11_jm_glTexCoordPointer_4(this, j_size, j_type, j_stride, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glTexCoordPointer'
  end subroutine

  recursive subroutine GL11_jm_glTexEnvi_3(this, j_target, j_pname, j_param)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4), value :: j_param
    error stop 'AbstractMethodError: GL11.glTexEnvi'
  end subroutine

  recursive subroutine GL11_jm_glTexEnviv_4(this, j_target, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glTexEnviv'
  end subroutine

  recursive subroutine GL11_jm_glTexEnviv_3(this, j_target, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(IntBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glTexEnviv'
  end subroutine

  recursive subroutine GL11_jm_glTexParameterfv_4(this, j_target, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glTexParameterfv'
  end subroutine

  recursive subroutine GL11_jm_glTexParameterfv_3(this, j_target, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glTexParameterfv'
  end subroutine

  recursive subroutine GL11_jm_glTexParameteriv_4(this, j_target, j_pname, j_params, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4) :: j_params(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glTexParameteriv'
  end subroutine

  recursive subroutine GL11_jm_glTexParameteriv_3(this, j_target, j_pname, j_params)
    class(GL11), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(IntBuffer), target, optional :: j_params
    error stop 'AbstractMethodError: GL11.glTexParameteriv'
  end subroutine

  recursive subroutine GL11_jm_glVertexPointer_4(this, j_size, j_type, j_stride, j_offset)
    class(GL11), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11.glVertexPointer'
  end subroutine
end module GL11_m

