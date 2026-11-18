! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module OpenGLESImageProcessor_m
  use JR_m
  use GL10_m
  implicit none

  type, extends(JObject) :: OpenGLESImageProcessor
  contains
    procedure :: jm_translate_3 => OpenGLESImageProcessor_jm_translate_3
    procedure :: jm_rotate_2 => OpenGLESImageProcessor_jm_rotate_2
    procedure :: jm_scale_3 => OpenGLESImageProcessor_jm_scale_3
    procedure :: jm_colorMask_5 => OpenGLESImageProcessor_jm_colorMask_5
  end type

  class(OpenGLESImageProcessor), pointer, save :: OpenGLESImageProcessor_jcell_instance => null()
  logical, save :: OpenGLESImageProcessor_jset_instance = .false.

contains

  function OpenGLESImageProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESImageProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESImageProcessor)
      jresult => object
    end select
  end function

  function OpenGLESImageProcessor_jstatic_instance() result(jresult)
    class(OpenGLESImageProcessor), pointer :: jresult
    if (.not. OpenGLESImageProcessor_jset_instance) then
      OpenGLESImageProcessor_jset_instance = .true.
      OpenGLESImageProcessor_jcell_instance => OpenGLESImageProcessor_jnew_0()
    end if
    jresult => OpenGLESImageProcessor_jcell_instance
  end function

  subroutine OpenGLESImageProcessor_jsetstatic_instance(jvalue)
    class(OpenGLESImageProcessor), target, optional :: jvalue
    OpenGLESImageProcessor_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLESImageProcessor_jcell_instance => jvalue
    else
      OpenGLESImageProcessor_jcell_instance => null()
    end if
  end subroutine

  function OpenGLESImageProcessor_jnew_0() result(this)
    class(OpenGLESImageProcessor), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESImageProcessor'
  end function

  recursive function OpenGLESImageProcessor_jm_getInstance_0() result(jresult)
    class(OpenGLESImageProcessor), pointer :: jresult
        jresult => OpenGLESImageProcessor_jstatic_instance()
        return
  end function

  recursive subroutine OpenGLESImageProcessor_jm_translate_3(this, j_gl, j_translateX, j_translateY)
    class(OpenGLESImageProcessor), target :: this
    class(GL10), target, optional :: j_gl
    real(4), value :: j_translateX
    real(4), value :: j_translateY
    continue
  end subroutine

  recursive subroutine OpenGLESImageProcessor_jm_rotate_2(this, j_gl, j_angle)
    class(OpenGLESImageProcessor), target :: this
    class(GL10), target, optional :: j_gl
    real(4), value :: j_angle
    continue
  end subroutine

  recursive subroutine OpenGLESImageProcessor_jm_scale_3(this, j_gl, j_scaleX, j_scaleY)
    class(OpenGLESImageProcessor), target :: this
    class(GL10), target, optional :: j_gl
    real(4), value :: j_scaleX
    real(4), value :: j_scaleY
    continue
  end subroutine

  recursive subroutine OpenGLESImageProcessor_jm_colorMask_5(this, j_gl, j_red, j_green, j_blue, j_alpha)
    class(OpenGLESImageProcessor), target :: this
    class(GL10), target, optional :: j_gl
    real(4), value :: j_red
    real(4), value :: j_green
    real(4), value :: j_blue
    real(4), value :: j_alpha
    continue
  end subroutine
end module OpenGLESImageProcessor_m

