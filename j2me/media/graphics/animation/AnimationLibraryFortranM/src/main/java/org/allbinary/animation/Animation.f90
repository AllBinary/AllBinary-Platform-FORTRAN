!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
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
! package org.allbinary.animation
module Animation_m
  use JR_m
  use GL_m
  use BasicColor_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use OpenGLSurfaceChangedInterface_m
  use AnimationInterface_m
  implicit none

  type, extends(AnimationInterface) :: Animation
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(BasicColor), pointer :: f_basicColor => null()
    integer(4) :: f_colorP = 0
    class(BasicColor), pointer :: f_changeBasicColorP => null()
    integer(4) :: f_changeColorP = 0
    integer(4) :: f_alphaP = 0
  contains
    procedure :: jm_setAlpha_1 => Animation_jm_setAlpha_1
    procedure :: jm_nextFrame_0 => Animation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => Animation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => Animation_jm_paintThreedXYZ_4
    procedure :: jm_isThreed_0 => Animation_jm_isThreed_0
    procedure :: jm_getBasicColorP_0 => Animation_jm_getBasicColorP_0
    procedure :: jm_setBasicColorP_1 => Animation_jm_setBasicColorP_1
    procedure :: jm_setBackgroundBasicColorP_1 => Animation_jm_setBackgroundBasicColorP_1
    procedure :: jm_getChangeBasicColor_0 => Animation_jm_getChangeBasicColor_0
    procedure :: jm_changeBasicColor_1 => Animation_jm_changeBasicColor_1
    procedure :: jm_getChangeColor_0 => Animation_jm_getChangeColor_0
    procedure :: jm_getColor_0 => Animation_jm_getColor_0
    procedure :: jm_setScale_2 => Animation_jm_setScale_2
    procedure :: jm_setMaxScale_2 => Animation_jm_setMaxScale_2
    procedure :: jm_set_1 => Animation_jm_set_1
    procedure :: jm_setDx_1 => Animation_jm_setDx_1
    procedure :: jm_getDx_0 => Animation_jm_getDx_0
    procedure :: jm_setDy_1 => Animation_jm_setDy_1
    procedure :: jm_getDy_0 => Animation_jm_getDy_0
  end type

  ! Animation used as a OpenGLSurfaceChangedInterface
  type, extends(OpenGLSurfaceChangedInterface) :: Animation_jas_OpenGLSurfaceChangedInterface
    class(Animation), pointer :: jtarget => null()
  contains
    procedure :: jm_set_1 => Animation_jas_OpenGLSurfaceChangedInterface_jm_set_1
  end type


contains

  function Animation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Animation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Animation)
      jresult => object
    end select
  end function

  function Animation_jas_OpenGLSurfaceChangedInterface_jnew(object) result(jresult)
    class(Animation), target :: object
    class(Animation_jas_OpenGLSurfaceChangedInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'Animation'
    jresult%jtarget => object
  end function

  recursive subroutine Animation_jas_OpenGLSurfaceChangedInterface_jm_set_1(this, j_gl)
    class(Animation_jas_OpenGLSurfaceChangedInterface), target :: this
    class(GL), target, optional :: j_gl
    call this%jtarget%jm_set_1(j_gl)
  end subroutine

  recursive function Animation_jnew_0() result(this)
    class(Animation), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'Animation'
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_WHITE
    
    jtemp2 => BasicColorFactory_jm_getInstance_0()
    this%f_changeBasicColorP => jtemp2%f_NULL_COLOR
    
    
        continue
  end function

  recursive subroutine Animation_jm_setAlpha_1(this, j_alpha)
    class(Animation), target :: this
    integer(4), value :: j_alpha
        this%f_alphaP = j_alpha
  end subroutine

  recursive subroutine Animation_jm_nextFrame_0(this)
    class(Animation), target :: this
    continue
  end subroutine

  recursive subroutine Animation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(Animation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicSetColorUtil%jm_setBasicColorP3_3(j_graphics, this%jm_getBasicColorP_0(), this%jm_getColor_0())
  end subroutine

  recursive subroutine Animation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(Animation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    continue
  end subroutine

  recursive function Animation_jm_isThreed_0(this) result(jresult)
    class(Animation), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function Animation_jm_getBasicColorP_0(this) result(jresult)
    class(Animation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive subroutine Animation_jm_setBasicColorP_1(this, j_basicColor)
    class(Animation), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
        this%f_colorP = this%f_basicColor%jm_intValue_0()
  end subroutine

  recursive subroutine Animation_jm_setBackgroundBasicColorP_1(this, j_basicColor)
    class(Animation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    continue
  end subroutine

  recursive function Animation_jm_getChangeBasicColor_0(this) result(jresult)
    class(Animation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_changeBasicColorP
        return
  end function

  recursive subroutine Animation_jm_changeBasicColor_1(this, j_basicColor)
    class(Animation), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_changeBasicColorP => j_basicColor
        this%f_changeColorP = this%f_changeBasicColorP%jm_intValue_0()
  end subroutine

  recursive function Animation_jm_getChangeColor_0(this) result(jresult)
    class(Animation), target :: this
    integer(4) :: jresult
        jresult = this%f_changeColorP
        return
  end function

  recursive function Animation_jm_getColor_0(this) result(jresult)
    class(Animation), target :: this
    integer(4) :: jresult
        jresult = this%f_colorP
        return
  end function

  recursive subroutine Animation_jm_setScale_2(this, j_scaleX, j_scaleY)
    class(Animation), target :: this
    real(4), value :: j_scaleX
    real(4), value :: j_scaleY
    continue
  end subroutine

  recursive subroutine Animation_jm_setMaxScale_2(this, j_maxScaleX, j_maxScaleY)
    class(Animation), target :: this
    real(4), value :: j_maxScaleX
    real(4), value :: j_maxScaleY
    continue
  end subroutine

  recursive subroutine Animation_jm_set_1(this, j_gl)
    class(Animation), target :: this
    class(GL), target, optional :: j_gl
    continue
  end subroutine

  recursive subroutine Animation_jm_setDx_1(this, j_dx)
    class(Animation), target :: this
    integer(4), value :: j_dx
    continue
  end subroutine

  recursive function Animation_jm_getDx_0(this) result(jresult)
    class(Animation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine Animation_jm_setDy_1(this, j_dy)
    class(Animation), target :: this
    integer(4), value :: j_dy
    continue
  end subroutine

  recursive function Animation_jm_getDy_0(this) result(jresult)
    class(Animation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module Animation_m

