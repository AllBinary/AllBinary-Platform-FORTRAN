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
module OpenGLESImageProperties_m
  use JR_m
  implicit none

  type, extends(JObject) :: OpenGLESImageProperties
    integer(4) :: f_textureID = 0
    real(4) :: f_scaleX = 0.0
    real(4) :: f_scaleY = 0.0
    real(4) :: f_scaleX2 = 0.0
    real(4) :: f_scaleY2 = 0.0
    integer(4) :: f_angle = 0
    real(4) :: f_redf = 0.0
    real(4) :: f_greenf = 0.0
    real(4) :: f_bluef = 0.0
    real(4) :: f_alphaf = 0.0
  end type


contains

  function OpenGLESImageProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESImageProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESImageProperties)
      jresult => object
    end select
  end function

  function OpenGLESImageProperties_jnew_0() result(this)
    class(OpenGLESImageProperties), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESImageProperties'
    this%f_textureID = (-1)
    this%f_scaleX = 1.0
    this%f_scaleY = 1.0
    this%f_scaleX2 = 1.0
    this%f_scaleY2 = 1.0
    
    this%f_redf = 1.0
    this%f_greenf = 1.0
    this%f_bluef = 1.0
    this%f_alphaf = 1.0
  end function
end module OpenGLESImageProperties_m

