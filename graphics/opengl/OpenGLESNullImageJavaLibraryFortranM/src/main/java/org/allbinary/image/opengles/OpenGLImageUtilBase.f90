! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
!  
! By agreeing to this license you and any business entity you represent are 
! legally bound to the AllBinary Open License Version 1 legal agreement. 
!  
! You may obtain the AllBinary Open License Version 1 legal agreement from 
! AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
!  
! Created By: Travis Berthelot 
!   
! Generated Code Do Not Modify
! package org.allbinary.image.opengles
module OpenGLImageUtilBase_m
  use JR_m
  use IOException_m
  use InputStream_m
  use OpenGLBitmap_m
  use BasicColor_m
  implicit none

  type, extends(JObject) :: OpenGLImageUtilBase
  contains
    procedure :: jm_paint_3 => OpenGLImageUtilBase_jm_paint_3
    procedure :: jm_paint_4 => OpenGLImageUtilBase_jm_paint_4
    procedure :: jm_createImage_1 => OpenGLImageUtilBase_jm_createImage_1
    procedure :: jm_createImageFromInputStream_1 => OpenGLImageUtilBase_jm_createImageFromInputStream_1
  end type


contains

  function OpenGLImageUtilBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLImageUtilBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLImageUtilBase)
      jresult => object
    end select
  end function

  function OpenGLImageUtilBase_jnew_0() result(this)
    class(OpenGLImageUtilBase), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLImageUtilBase'
  end function

  recursive function OpenGLImageUtilBase_jm_paint_3(this, j_alphaBitmap, j_originalBitmap, j_index) result(jresult)
    class(OpenGLImageUtilBase), target :: this
    class(OpenGLBitmap), target, optional :: j_alphaBitmap
    class(OpenGLBitmap), target, optional :: j_originalBitmap
    integer(4), value :: j_index
    class(OpenGLBitmap), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function OpenGLImageUtilBase_jm_paint_4(this, j_colorBitmap, j_originalBitmap, j_alpha, j_basicColor) result(jresult)
    class(OpenGLImageUtilBase), target :: this
    class(OpenGLBitmap), target, optional :: j_colorBitmap
    class(OpenGLBitmap), target, optional :: j_originalBitmap
    integer(4), value :: j_alpha
    class(BasicColor), target, optional :: j_basicColor
    class(OpenGLBitmap), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function OpenGLImageUtilBase_jm_createImage_1(this, j_name) result(jresult)
    class(OpenGLImageUtilBase), target :: this
    character(len=*), intent(in) :: j_name
    class(OpenGLBitmap), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function OpenGLImageUtilBase_jm_createImageFromInputStream_1(this, j_inputStream) result(jresult)
    class(OpenGLImageUtilBase), target :: this
    class(InputStream), target, optional :: j_inputStream
    class(OpenGLBitmap), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module OpenGLImageUtilBase_m

