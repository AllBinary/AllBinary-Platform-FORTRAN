! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.graphics
module OpenGLBitmapConfig_m
  use JR_m
  implicit none

  type, extends(JObject) :: OpenGLBitmapConfig
    class(JObject), pointer :: f_bitmapConfig => null()
  end type


contains

  function OpenGLBitmapConfig_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLBitmapConfig), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLBitmapConfig)
      jresult => object
    end select
  end function

  recursive function OpenGLBitmapConfig_jnew_1(j_bitmapConfig) result(this)
    class(JObject), target, optional :: j_bitmapConfig
    class(OpenGLBitmapConfig), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLBitmapConfig'
    
        this%f_bitmapConfig => j_bitmapConfig
  end function
end module OpenGLBitmapConfig_m

