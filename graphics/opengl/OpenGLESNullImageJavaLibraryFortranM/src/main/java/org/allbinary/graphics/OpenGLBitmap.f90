! Generated Code Do Not Modify
! package org.allbinary.graphics
module OpenGLBitmap_m
  use JR_m
  use PlatformBitmapBase_m
  implicit none

  type, extends(PlatformBitmapBase) :: OpenGLBitmap
    class(JObject), pointer :: f_bitmap => null()
  contains
    procedure :: jm_getPixels_7 => OpenGLBitmap_jm_getPixels_7
    procedure :: jm_setPixels_7 => OpenGLBitmap_jm_setPixels_7
    procedure :: jm_recycle_0 => OpenGLBitmap_jm_recycle_0
  end type


contains

  function OpenGLBitmap_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLBitmap), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLBitmap)
      jresult => object
    end select
  end function

  recursive function OpenGLBitmap_jnew_1(j_bitmap) result(this)
    class(JObject), target, optional :: j_bitmap
    class(OpenGLBitmap), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLBitmap'
    
        this%f_bitmap => j_bitmap
  end function

  recursive subroutine OpenGLBitmap_jm_getPixels_7(this, j_pixels, j_offset, j_stride, j_x, j_y, j_width, j_height)
    class(OpenGLBitmap), target :: this
    integer(4) :: j_pixels(:)
    integer(4), value :: j_offset
    integer(4), value :: j_stride
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    continue
  end subroutine

  recursive subroutine OpenGLBitmap_jm_setPixels_7(this, j_pixels, j_offset, j_stride, j_x, j_y, j_width, j_height)
    class(OpenGLBitmap), target :: this
    integer(4) :: j_pixels(:)
    integer(4), value :: j_offset
    integer(4), value :: j_stride
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    continue
  end subroutine

  recursive subroutine OpenGLBitmap_jm_recycle_0(this)
    class(OpenGLBitmap), target :: this
    continue
  end subroutine
end module OpenGLBitmap_m

