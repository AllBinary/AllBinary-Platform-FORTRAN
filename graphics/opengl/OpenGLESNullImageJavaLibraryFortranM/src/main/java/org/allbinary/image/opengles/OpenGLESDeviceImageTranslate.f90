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
module OpenGLESDeviceImageTranslate_m
  use JR_m
  use GL10_m
  use OpenGLESImageTranslate_m
  use OpenGLESImage_m
  implicit none

  type, extends(OpenGLESImageTranslate) :: OpenGLESDeviceImageTranslate
    real(4) :: f_translateX = 0.0
    real(4) :: f_translateY = 0.0
    real(4) :: f_translateX2 = 0.0
    real(4) :: f_translateY2 = 0.0
  contains
    procedure :: jm_translate_4 => OpenGLESDeviceImageTranslate_jm_translate_4
    procedure :: jm_translate2_2 => OpenGLESDeviceImageTranslate_jm_translate2_2
  end type


contains

  function OpenGLESDeviceImageTranslate_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESDeviceImageTranslate), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESDeviceImageTranslate)
      jresult => object
    end select
  end function

  function OpenGLESDeviceImageTranslate_jnew_0() result(this)
    class(OpenGLESDeviceImageTranslate), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESDeviceImageTranslate'
    this%f_translateX = 0.0
    this%f_translateY = 0.0
    this%f_translateX2 = 0.0
    this%f_translateY2 = 0.0
  end function

  recursive subroutine OpenGLESDeviceImageTranslate_jm_translate_4(this, j_gl, j_openGLESImage, j_x, j_y)
    class(OpenGLESDeviceImageTranslate), target :: this
    class(GL10), target, optional :: j_gl
    class(OpenGLESImage), target, optional :: j_openGLESImage
    real(4), value :: j_x
    real(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_openGLESImage%f_imageProcessor%jm_translate_3(j_gl, (this%f_translateX + ((j_openGLESImage%f_openGLESImageProperties%f_scaleX * j_x))), (this%f_translateY + ((j_openGLESImage%f_openGLESImageProperties%f_scaleY * j_y))))
  end subroutine

  recursive subroutine OpenGLESDeviceImageTranslate_jm_translate2_2(this, j_gl, j_openGLESImage)
    class(OpenGLESDeviceImageTranslate), target :: this
    class(GL10), target, optional :: j_gl
    class(OpenGLESImage), target, optional :: j_openGLESImage
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_openGLESImage%f_imageProcessor%jm_translate_3(j_gl, this%f_translateX2, this%f_translateY2)
  end subroutine
end module OpenGLESDeviceImageTranslate_m

function OpenGLESDeviceImageTranslate_jnew_0_jext() result(this)
  use OpenGLESDeviceImageTranslate_m, only: JObject, OpenGLESDeviceImageTranslate_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OpenGLESDeviceImageTranslate_jnew_0()
end function

