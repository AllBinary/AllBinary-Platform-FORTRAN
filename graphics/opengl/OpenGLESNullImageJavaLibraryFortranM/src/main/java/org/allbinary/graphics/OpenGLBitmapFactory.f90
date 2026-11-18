! Generated Code Do Not Modify
! package org.allbinary.graphics
module OpenGLBitmapFactory_m
  use JR_m
  use IOException_m
  use InputStream_m
  use NullUtil_m
  use PlatformBitmapBase_m
  use PlatformBitmapBaseFactory_m
  use OpenGLBitmapConfig_m
  use OpenGLBitmap_m
  implicit none

  type, extends(PlatformBitmapBaseFactory) :: OpenGLBitmapFactory
    class(OpenGLBitmapConfig), pointer :: f_ARGB_8888 => null()
  contains
    procedure :: jm_createBitmap_3 => OpenGLBitmapFactory_jm_createBitmap_3
    procedure :: jm_decodeStream_1 => OpenGLBitmapFactory_jm_decodeStream_1
    procedure :: jm_createBitmap_1 => OpenGLBitmapFactory_jm_createBitmap_1
  end type

  class(OpenGLBitmapFactory), pointer, save :: OpenGLBitmapFactory_jcell_instance => null()
  logical, save :: OpenGLBitmapFactory_jset_instance = .false.

contains

  function OpenGLBitmapFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLBitmapFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLBitmapFactory)
      jresult => object
    end select
  end function

  function OpenGLBitmapFactory_jstatic_instance() result(jresult)
    class(OpenGLBitmapFactory), pointer :: jresult
    if (.not. OpenGLBitmapFactory_jset_instance) then
      OpenGLBitmapFactory_jset_instance = .true.
      OpenGLBitmapFactory_jcell_instance => OpenGLBitmapFactory_jnew_0()
    end if
    jresult => OpenGLBitmapFactory_jcell_instance
  end function

  subroutine OpenGLBitmapFactory_jsetstatic_instance(jvalue)
    class(OpenGLBitmapFactory), target, optional :: jvalue
    OpenGLBitmapFactory_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLBitmapFactory_jcell_instance => jvalue
    else
      OpenGLBitmapFactory_jcell_instance => null()
    end if
  end subroutine

  function OpenGLBitmapFactory_jnew_0() result(this)
    class(OpenGLBitmapFactory), pointer :: this
    class(NullUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'OpenGLBitmapFactory'
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_ARGB_8888 => OpenGLBitmapConfig_jnew_1(jtemp1%f_NULL_OBJECT)
  end function

  recursive function OpenGLBitmapFactory_jm_getInstance_0() result(jresult)
    class(OpenGLBitmapFactory), pointer :: jresult
        jresult => OpenGLBitmapFactory_jstatic_instance()
        return
  end function

  recursive function OpenGLBitmapFactory_jm_createBitmap_3(this, j_width, j_height, j_config) result(jresult)
    class(OpenGLBitmapFactory), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(OpenGLBitmapConfig), target, optional :: j_config
    class(OpenGLBitmap), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        jresult => OpenGLBitmap_jnew_1(jtemp2%f_NULL_OBJECT)
        return
  end function

  recursive function OpenGLBitmapFactory_jm_decodeStream_1(this, j_inputStream) result(jresult)
    class(OpenGLBitmapFactory), target :: this
    class(InputStream), target, optional :: j_inputStream
    class(OpenGLBitmap), pointer :: jresult
    class(NullUtil), pointer :: jtemp3
        jtemp3 => NullUtil_jm_getInstance_0()
        jresult => OpenGLBitmap_jnew_1(jtemp3%f_NULL_OBJECT)
        return
  end function

  recursive function OpenGLBitmapFactory_jm_createBitmap_1(this, j_image) result(jresult)
    class(OpenGLBitmapFactory), target :: this
    class(Image), target, optional :: j_image
    class(PlatformBitmapBase), pointer :: jresult
    class(NullUtil), pointer :: jtemp4
        jtemp4 => NullUtil_jm_getInstance_0()
        jresult => OpenGLBitmap_jnew_1(jtemp4%f_NULL_OBJECT)
        return
  end function
end module OpenGLBitmapFactory_m

function OpenGLBitmapFactory_jnew_0_jext() result(this)
  use OpenGLBitmapFactory_m, only: JObject, OpenGLBitmapFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OpenGLBitmapFactory_jnew_0()
end function

