! Generated Code Do Not Modify
! package javax.microedition.khronos.opengles
module GL11Ext_m
  use JR_m
  use Buffer_m
  use FloatBuffer_m
  use IntBuffer_m
  use ShortBuffer_m
  implicit none

  type, extends(GL) :: GL11Ext
  contains
    procedure :: jm_glTexParameterfv_4 => GL11Ext_jm_glTexParameterfv_4
    procedure :: jm_glCurrentPaletteMatrixOES_1 => GL11Ext_jm_glCurrentPaletteMatrixOES_1
    procedure :: jm_glDrawTexfOES_5 => GL11Ext_jm_glDrawTexfOES_5
    procedure :: jm_glDrawTexfvOES_2 => GL11Ext_jm_glDrawTexfvOES_2
    procedure :: jm_glDrawTexfvOES_1 => GL11Ext_jm_glDrawTexfvOES_1
    procedure :: jm_glDrawTexiOES_5 => GL11Ext_jm_glDrawTexiOES_5
    procedure :: jm_glDrawTexivOES_2 => GL11Ext_jm_glDrawTexivOES_2
    procedure :: jm_glDrawTexivOES_1 => GL11Ext_jm_glDrawTexivOES_1
    procedure :: jm_glDrawTexsOES_5 => GL11Ext_jm_glDrawTexsOES_5
    procedure :: jm_glDrawTexsvOES_2 => GL11Ext_jm_glDrawTexsvOES_2
    procedure :: jm_glDrawTexsvOES_1 => GL11Ext_jm_glDrawTexsvOES_1
    procedure :: jm_glDrawTexxOES_5 => GL11Ext_jm_glDrawTexxOES_5
    procedure :: jm_glDrawTexxvOES_2 => GL11Ext_jm_glDrawTexxvOES_2
    procedure :: jm_glDrawTexxvOES_1 => GL11Ext_jm_glDrawTexxvOES_1
    procedure :: jm_glEnable_1 => GL11Ext_jm_glEnable_1
    procedure :: jm_glEnableClientState_1 => GL11Ext_jm_glEnableClientState_1
    procedure :: jm_glLoadPaletteFromModelViewMatrixOES_0 => GL11Ext_jm_glLoadPaletteFromModelViewMatrixOES_0
    procedure :: jm_glMatrixIndexPointerOES_4 => GL11Ext_jm_glMatrixIndexPointerOES_4
    procedure :: jm_glMatrixIndexPointerOES_4b => GL11Ext_jm_glMatrixIndexPointerOES_4b
    procedure :: jm_glWeightPointerOES_4 => GL11Ext_jm_glWeightPointerOES_4
    procedure :: jm_glWeightPointerOES_4b => GL11Ext_jm_glWeightPointerOES_4b
  end type

  integer(4), save :: GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES
  logical, save :: GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_OES
  logical, save :: GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES
  logical, save :: GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_POINTER_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES
  logical, save :: GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_SIZE_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES
  logical, save :: GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_STRIDE_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES
  logical, save :: GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_TYPE_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MATRIX_PALETTE_OES
  logical, save :: GL11Ext_jset_GL_MATRIX_PALETTE_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MAX_PALETTE_MATRICES_OES
  logical, save :: GL11Ext_jset_GL_MAX_PALETTE_MATRICES_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_MAX_VERTEX_UNITS_OES
  logical, save :: GL11Ext_jset_GL_MAX_VERTEX_UNITS_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_TEXTURE_CROP_RECT_OES
  logical, save :: GL11Ext_jset_GL_TEXTURE_CROP_RECT_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES
  logical, save :: GL11Ext_jset_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_WEIGHT_ARRAY_OES
  logical, save :: GL11Ext_jset_GL_WEIGHT_ARRAY_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_WEIGHT_ARRAY_POINTER_OES
  logical, save :: GL11Ext_jset_GL_WEIGHT_ARRAY_POINTER_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_WEIGHT_ARRAY_SIZE_OES
  logical, save :: GL11Ext_jset_GL_WEIGHT_ARRAY_SIZE_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_WEIGHT_ARRAY_STRIDE_OES
  logical, save :: GL11Ext_jset_GL_WEIGHT_ARRAY_STRIDE_OES = .false.
  integer(4), save :: GL11Ext_jcell_GL_WEIGHT_ARRAY_TYPE_OES
  logical, save :: GL11Ext_jset_GL_WEIGHT_ARRAY_TYPE_OES = .false.

contains

  function GL11Ext_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GL11Ext), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GL11Ext)
      jresult => object
    end select
  end function

  function GL11Ext_jstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES) then
      GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = .true.
      GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 35742
    end if
    jresult = GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = .true.
    GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MATRIX_INDEX_ARRAY_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_OES) then
      GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_OES = .true.
      GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_OES = 34884
    end if
    jresult = GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MATRIX_INDEX_ARRAY_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_OES = .true.
    GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_POINTER_OES) then
      GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_POINTER_OES = .true.
      GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES = 34889
    end if
    jresult = GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_POINTER_OES = .true.
    GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_POINTER_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_SIZE_OES) then
      GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_SIZE_OES = .true.
      GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES = 34886
    end if
    jresult = GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_SIZE_OES = .true.
    GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_SIZE_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_STRIDE_OES) then
      GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_STRIDE_OES = .true.
      GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES = 34888
    end if
    jresult = GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_STRIDE_OES = .true.
    GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_STRIDE_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_TYPE_OES) then
      GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_TYPE_OES = .true.
      GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES = 34887
    end if
    jresult = GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MATRIX_INDEX_ARRAY_TYPE_OES = .true.
    GL11Ext_jcell_GL_MATRIX_INDEX_ARRAY_TYPE_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MATRIX_PALETTE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MATRIX_PALETTE_OES) then
      GL11Ext_jset_GL_MATRIX_PALETTE_OES = .true.
      GL11Ext_jcell_GL_MATRIX_PALETTE_OES = 34880
    end if
    jresult = GL11Ext_jcell_GL_MATRIX_PALETTE_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MATRIX_PALETTE_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MATRIX_PALETTE_OES = .true.
    GL11Ext_jcell_GL_MATRIX_PALETTE_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MAX_PALETTE_MATRICES_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MAX_PALETTE_MATRICES_OES) then
      GL11Ext_jset_GL_MAX_PALETTE_MATRICES_OES = .true.
      GL11Ext_jcell_GL_MAX_PALETTE_MATRICES_OES = 34882
    end if
    jresult = GL11Ext_jcell_GL_MAX_PALETTE_MATRICES_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MAX_PALETTE_MATRICES_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MAX_PALETTE_MATRICES_OES = .true.
    GL11Ext_jcell_GL_MAX_PALETTE_MATRICES_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_MAX_VERTEX_UNITS_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_MAX_VERTEX_UNITS_OES) then
      GL11Ext_jset_GL_MAX_VERTEX_UNITS_OES = .true.
      GL11Ext_jcell_GL_MAX_VERTEX_UNITS_OES = 34468
    end if
    jresult = GL11Ext_jcell_GL_MAX_VERTEX_UNITS_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_MAX_VERTEX_UNITS_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_MAX_VERTEX_UNITS_OES = .true.
    GL11Ext_jcell_GL_MAX_VERTEX_UNITS_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_TEXTURE_CROP_RECT_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_TEXTURE_CROP_RECT_OES) then
      GL11Ext_jset_GL_TEXTURE_CROP_RECT_OES = .true.
      GL11Ext_jcell_GL_TEXTURE_CROP_RECT_OES = 35741
    end if
    jresult = GL11Ext_jcell_GL_TEXTURE_CROP_RECT_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_TEXTURE_CROP_RECT_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_TEXTURE_CROP_RECT_OES = .true.
    GL11Ext_jcell_GL_TEXTURE_CROP_RECT_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES) then
      GL11Ext_jset_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = .true.
      GL11Ext_jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = 34974
    end if
    jresult = GL11Ext_jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = .true.
    GL11Ext_jcell_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_WEIGHT_ARRAY_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_WEIGHT_ARRAY_OES) then
      GL11Ext_jset_GL_WEIGHT_ARRAY_OES = .true.
      GL11Ext_jcell_GL_WEIGHT_ARRAY_OES = 34477
    end if
    jresult = GL11Ext_jcell_GL_WEIGHT_ARRAY_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_WEIGHT_ARRAY_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_WEIGHT_ARRAY_OES = .true.
    GL11Ext_jcell_GL_WEIGHT_ARRAY_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_WEIGHT_ARRAY_POINTER_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_WEIGHT_ARRAY_POINTER_OES) then
      GL11Ext_jset_GL_WEIGHT_ARRAY_POINTER_OES = .true.
      GL11Ext_jcell_GL_WEIGHT_ARRAY_POINTER_OES = 34476
    end if
    jresult = GL11Ext_jcell_GL_WEIGHT_ARRAY_POINTER_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_WEIGHT_ARRAY_POINTER_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_WEIGHT_ARRAY_POINTER_OES = .true.
    GL11Ext_jcell_GL_WEIGHT_ARRAY_POINTER_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_WEIGHT_ARRAY_SIZE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_WEIGHT_ARRAY_SIZE_OES) then
      GL11Ext_jset_GL_WEIGHT_ARRAY_SIZE_OES = .true.
      GL11Ext_jcell_GL_WEIGHT_ARRAY_SIZE_OES = 34475
    end if
    jresult = GL11Ext_jcell_GL_WEIGHT_ARRAY_SIZE_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_WEIGHT_ARRAY_SIZE_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_WEIGHT_ARRAY_SIZE_OES = .true.
    GL11Ext_jcell_GL_WEIGHT_ARRAY_SIZE_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_WEIGHT_ARRAY_STRIDE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_WEIGHT_ARRAY_STRIDE_OES) then
      GL11Ext_jset_GL_WEIGHT_ARRAY_STRIDE_OES = .true.
      GL11Ext_jcell_GL_WEIGHT_ARRAY_STRIDE_OES = 34474
    end if
    jresult = GL11Ext_jcell_GL_WEIGHT_ARRAY_STRIDE_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_WEIGHT_ARRAY_STRIDE_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_WEIGHT_ARRAY_STRIDE_OES = .true.
    GL11Ext_jcell_GL_WEIGHT_ARRAY_STRIDE_OES = jvalue
  end subroutine

  function GL11Ext_jstatic_GL_WEIGHT_ARRAY_TYPE_OES() result(jresult)
    integer(4) :: jresult
    if (.not. GL11Ext_jset_GL_WEIGHT_ARRAY_TYPE_OES) then
      GL11Ext_jset_GL_WEIGHT_ARRAY_TYPE_OES = .true.
      GL11Ext_jcell_GL_WEIGHT_ARRAY_TYPE_OES = 34473
    end if
    jresult = GL11Ext_jcell_GL_WEIGHT_ARRAY_TYPE_OES
  end function

  subroutine GL11Ext_jsetstatic_GL_WEIGHT_ARRAY_TYPE_OES(jvalue)
    integer(4), value :: jvalue
    GL11Ext_jset_GL_WEIGHT_ARRAY_TYPE_OES = .true.
    GL11Ext_jcell_GL_WEIGHT_ARRAY_TYPE_OES = jvalue
  end subroutine

  function GL11Ext_jnew_0() result(this)
    class(GL11Ext), pointer :: this
    allocate(this)
    this%jclass = 'GL11Ext'
  end function

  recursive subroutine GL11Ext_jm_glTexParameterfv_4(this, j_target, j_pname, j_param, j_offset)
    class(GL11Ext), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4) :: j_param(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11Ext.glTexParameterfv'
  end subroutine

  recursive subroutine GL11Ext_jm_glCurrentPaletteMatrixOES_1(this, j_matrixpaletteindex)
    class(GL11Ext), target :: this
    integer(4), value :: j_matrixpaletteindex
    error stop 'AbstractMethodError: GL11Ext.glCurrentPaletteMatrixOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexfOES_5(this, j_x, j_y, j_z, j_width, j_height)
    class(GL11Ext), target :: this
    real(4), value :: j_x
    real(4), value :: j_y
    real(4), value :: j_z
    real(4), value :: j_width
    real(4), value :: j_height
    error stop 'AbstractMethodError: GL11Ext.glDrawTexfOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexfvOES_2(this, j_coords, j_offset)
    class(GL11Ext), target :: this
    real(4) :: j_coords(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11Ext.glDrawTexfvOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexfvOES_1(this, j_coords)
    class(GL11Ext), target :: this
    class(FloatBuffer), target, optional :: j_coords
    error stop 'AbstractMethodError: GL11Ext.glDrawTexfvOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexiOES_5(this, j_x, j_y, j_z, j_width, j_height)
    class(GL11Ext), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    integer(4), value :: j_width
    integer(4), value :: j_height
    error stop 'AbstractMethodError: GL11Ext.glDrawTexiOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexivOES_2(this, j_coords, j_offset)
    class(GL11Ext), target :: this
    integer(4) :: j_coords(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11Ext.glDrawTexivOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexivOES_1(this, j_coords)
    class(GL11Ext), target :: this
    class(IntBuffer), target, optional :: j_coords
    error stop 'AbstractMethodError: GL11Ext.glDrawTexivOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexsOES_5(this, j_x, j_y, j_z, j_width, j_height)
    class(GL11Ext), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    integer(4), value :: j_width
    integer(4), value :: j_height
    error stop 'AbstractMethodError: GL11Ext.glDrawTexsOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexsvOES_2(this, j_coords, j_offset)
    class(GL11Ext), target :: this
    integer(4) :: j_coords(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11Ext.glDrawTexsvOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexsvOES_1(this, j_coords)
    class(GL11Ext), target :: this
    class(ShortBuffer), target, optional :: j_coords
    error stop 'AbstractMethodError: GL11Ext.glDrawTexsvOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexxOES_5(this, j_x, j_y, j_z, j_width, j_height)
    class(GL11Ext), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    integer(4), value :: j_width
    integer(4), value :: j_height
    error stop 'AbstractMethodError: GL11Ext.glDrawTexxOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexxvOES_2(this, j_coords, j_offset)
    class(GL11Ext), target :: this
    integer(4) :: j_coords(:)
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11Ext.glDrawTexxvOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glDrawTexxvOES_1(this, j_coords)
    class(GL11Ext), target :: this
    class(IntBuffer), target, optional :: j_coords
    error stop 'AbstractMethodError: GL11Ext.glDrawTexxvOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glEnable_1(this, j_cap)
    class(GL11Ext), target :: this
    integer(4), value :: j_cap
    error stop 'AbstractMethodError: GL11Ext.glEnable'
  end subroutine

  recursive subroutine GL11Ext_jm_glEnableClientState_1(this, j_array)
    class(GL11Ext), target :: this
    integer(4), value :: j_array
    error stop 'AbstractMethodError: GL11Ext.glEnableClientState'
  end subroutine

  recursive subroutine GL11Ext_jm_glLoadPaletteFromModelViewMatrixOES_0(this)
    class(GL11Ext), target :: this
    error stop 'AbstractMethodError: GL11Ext.glLoadPaletteFromModelViewMatrixOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glMatrixIndexPointerOES_4(this, j_size, j_type, j_stride, j_pointer)
    class(GL11Ext), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
    error stop 'AbstractMethodError: GL11Ext.glMatrixIndexPointerOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glMatrixIndexPointerOES_4b(this, j_size, j_type, j_stride, j_offset)
    class(GL11Ext), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11Ext.glMatrixIndexPointerOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glWeightPointerOES_4(this, j_size, j_type, j_stride, j_pointer)
    class(GL11Ext), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
    error stop 'AbstractMethodError: GL11Ext.glWeightPointerOES'
  end subroutine

  recursive subroutine GL11Ext_jm_glWeightPointerOES_4b(this, j_size, j_type, j_stride, j_offset)
    class(GL11Ext), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    integer(4), value :: j_offset
    error stop 'AbstractMethodError: GL11Ext.glWeightPointerOES'
  end subroutine
end module GL11Ext_m

