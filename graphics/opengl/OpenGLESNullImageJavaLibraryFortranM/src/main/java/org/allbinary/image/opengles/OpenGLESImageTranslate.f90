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
module OpenGLESImageTranslate_m
  use JR_m
  use GL10_m
  use OpenGLESImage_m
  implicit none

  type, extends(JObject) :: OpenGLESImageTranslate
  contains
    procedure :: jm_translate_4 => OpenGLESImageTranslate_jm_translate_4
    procedure :: jm_translate2_2 => OpenGLESImageTranslate_jm_translate2_2
  end type

  class(OpenGLESImageTranslate), pointer, save :: OpenGLESImageTranslate_jcell_instance => null()
  logical, save :: OpenGLESImageTranslate_jset_instance = .false.

contains

  function OpenGLESImageTranslate_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESImageTranslate), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESImageTranslate)
      jresult => object
    end select
  end function

  function OpenGLESImageTranslate_jstatic_instance() result(jresult)
    class(OpenGLESImageTranslate), pointer :: jresult
    if (.not. OpenGLESImageTranslate_jset_instance) then
      OpenGLESImageTranslate_jset_instance = .true.
      OpenGLESImageTranslate_jcell_instance => OpenGLESImageTranslate_jnew_0()
    end if
    jresult => OpenGLESImageTranslate_jcell_instance
  end function

  subroutine OpenGLESImageTranslate_jsetstatic_instance(jvalue)
    class(OpenGLESImageTranslate), target, optional :: jvalue
    OpenGLESImageTranslate_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLESImageTranslate_jcell_instance => jvalue
    else
      OpenGLESImageTranslate_jcell_instance => null()
    end if
  end subroutine

  function OpenGLESImageTranslate_jnew_0() result(this)
    class(OpenGLESImageTranslate), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESImageTranslate'
  end function

  recursive function OpenGLESImageTranslate_jm_getInstance_0() result(jresult)
    class(OpenGLESImageTranslate), pointer :: jresult
        jresult => OpenGLESImageTranslate_jstatic_instance()
        return
  end function

  recursive subroutine OpenGLESImageTranslate_jm_translate_4(this, j_gl, j_openGLESImage, j_x, j_y)
    class(OpenGLESImageTranslate), target :: this
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
        call j_openGLESImage%f_imageProcessor%jm_translate_3(j_gl, j_x, j_y)
  end subroutine

  recursive subroutine OpenGLESImageTranslate_jm_translate2_2(this, j_gl, j_openGLESImage)
    class(OpenGLESImageTranslate), target :: this
    class(GL10), target, optional :: j_gl
    class(OpenGLESImage), target, optional :: j_openGLESImage
    continue
  end subroutine
end module OpenGLESImageTranslate_m

