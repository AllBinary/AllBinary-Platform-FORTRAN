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
! package org.allbinary.animation.compound
module SimultaneousCompoundRotationAnimation_m
  use JR_m
  use GL_m
  use AnimationBehavior_m
  use RotationAnimation_m
  use Direction_m
  use PrimitiveIntUtil_m
  use Angle_m
  use AngleFactory_m
  use AngleInfo_m
  use CircularIndexUtil_m
  implicit none

  type, extends(RotationAnimation) :: SimultaneousCompoundRotationAnimation
    type(JRef), allocatable :: f_animationInterfaceArray(:)
  contains
    procedure :: jm_setFrame_1 => SimultaneousCompoundRotationAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => SimultaneousCompoundRotationAnimation_jm_getFrame_0
    procedure :: jm_getAnimationSize_0 => SimultaneousCompoundRotationAnimation_jm_getAnimationSize_0
    procedure :: jm_getSize_0 => SimultaneousCompoundRotationAnimation_jm_getSize_0
    procedure :: jm_previousFrame_0 => SimultaneousCompoundRotationAnimation_jm_previousFrame_0
    procedure :: jm_nextFrame_0 => SimultaneousCompoundRotationAnimation_jm_nextFrame_0
    procedure :: jm_previousRotation_0 => SimultaneousCompoundRotationAnimation_jm_previousRotation_0
    procedure :: jm_nextRotation_0 => SimultaneousCompoundRotationAnimation_jm_nextRotation_0
    procedure :: jm_setSequence_1 => SimultaneousCompoundRotationAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => SimultaneousCompoundRotationAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => SimultaneousCompoundRotationAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => SimultaneousCompoundRotationAnimation_jm_paintThreedXYZ_4
    procedure :: jm_setFrameByDirection_1 => SimultaneousCompoundRotationAnimation_jm_setFrameByDirection_1
    procedure :: jm_setFrameToAngle_1 => SimultaneousCompoundRotationAnimation_jm_setFrameToAngle_1
    procedure :: jm_adjustFrameToAngle_1 => SimultaneousCompoundRotationAnimation_jm_adjustFrameToAngle_1
    procedure :: jm_adjustFrame_1 => SimultaneousCompoundRotationAnimation_jm_adjustFrame_1
    procedure :: jm_getAngleInfoP_0 => SimultaneousCompoundRotationAnimation_jm_getAngleInfoP_0
    procedure :: jm_getAnimationInterfaceArray_0 => SimultaneousCompoundRotationAnimation_jm_getAnimationInterfaceArray_0
    procedure :: jm_setAnimationInterfaceArray_1 => SimultaneousCompoundRotationAnimation_jm_setAnimationInterfaceArray_1
    procedure :: jm_set_1 => SimultaneousCompoundRotationAnimation_jm_set_1
  end type


contains

  function SimultaneousCompoundRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimultaneousCompoundRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimultaneousCompoundRotationAnimation)
      jresult => object
    end select
  end function

  recursive function SimultaneousCompoundRotationAnimation_jnew_2(j_animationInterfaceArray, j_animationBehavior) result(this)
    type(JRef) :: j_animationInterfaceArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(SimultaneousCompoundRotationAnimation), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'SimultaneousCompoundRotationAnimation'
    
        jtemp1 => AngleFactory_jm_getInstance_0()
        continue ! super()
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end function

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_setFrame_1(this, j_index)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4), value :: j_index
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp2 >= 0))
            associate (jstaticref1 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref1%jm_setFrame_1(j_index)
            end associate
        end do
  end subroutine

  recursive function SimultaneousCompoundRotationAnimation_jm_getFrame_0(this) result(jresult)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref2 => RotationAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref2%jm_getFrame_0()
        end associate
        return
  end function

  recursive function SimultaneousCompoundRotationAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref3 => RotationAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref3%jm_getAnimationSize_0()
        end associate
        return
  end function

  recursive function SimultaneousCompoundRotationAnimation_jm_getSize_0(this) result(jresult)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref4 => RotationAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref4%jm_getSize_0()
        end associate
        return
  end function

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_previousFrame_0(this)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: j_index
    integer(4) :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp3 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp3 >= 0))
            associate (jstaticref5 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref5%jm_previousFrame_0()
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_nextFrame_0(this)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: j_index
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp4 >= 0))
            associate (jstaticref6 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref6%jm_nextFrame_0()
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_previousRotation_0(this)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: j_index
    integer(4) :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp5 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp5 >= 0))
            associate (jstaticref7 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref7%jm_previousRotation_0()
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_nextRotation_0(this)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: j_index
    integer(4) :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp6 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp6 >= 0))
            associate (jstaticref8 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref8%jm_nextRotation_0()
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_setSequence_1(this, j_sequence)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function SimultaneousCompoundRotationAnimation_jm_getSequence_0(this) result(jresult)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(SimultaneousCompoundRotationAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_index
    integer(4) :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp7 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp7 >= 0))
            associate (jstaticref9 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref9%jm_paintXY_3(j_graphics, j_x, j_y)
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(SimultaneousCompoundRotationAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    integer(4) :: j_index
    integer(4) :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp8 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp8 >= 0))
            associate (jstaticref10 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref10%jm_paintThreedXYZ_4(j_graphics, j_x, j_y, j_z)
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_setFrameByDirection_1(this, j_direction)
    class(SimultaneousCompoundRotationAnimation), target :: this
    class(Direction), target, optional :: j_direction
    integer(4) :: j_index
    integer(4) :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp9 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp9 >= 0))
            associate (jstaticref11 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref11%jm_setFrameByDirection_1(j_direction)
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_setFrameToAngle_1(this, j_angle)
    class(SimultaneousCompoundRotationAnimation), target :: this
    class(Angle), target, optional :: j_angle
    integer(4) :: j_index
    integer(4) :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp10 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp10 >= 0))
            associate (jstaticref12 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref12%jm_setFrameToAngle_1(j_angle)
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_adjustFrameToAngle_1(this, j_angle)
    class(SimultaneousCompoundRotationAnimation), target :: this
    class(Angle), target, optional :: j_angle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_adjustFrame_1(j_angle%jm_getValue_0())
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_adjustFrame_1(this, j_angle)
    class(SimultaneousCompoundRotationAnimation), target :: this
    integer(4), value :: j_angle
    integer(4) :: j_index
    integer(4) :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp11 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp11 >= 0))
            associate (jstaticref13 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref13%jm_adjustFrame_1(j_angle)
            end associate
        end do
  end subroutine

  recursive function SimultaneousCompoundRotationAnimation_jm_getAngleInfoP_0(this) result(jresult)
    class(SimultaneousCompoundRotationAnimation), target :: this
    class(AngleInfo), pointer :: jresult
        associate (jstaticref14 => RotationAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult => jstaticref14%jm_getAngleInfoP_0()
        end associate
        return
  end function

  recursive function SimultaneousCompoundRotationAnimation_jm_getAnimationInterfaceArray_0(this) result(jresult)
    class(SimultaneousCompoundRotationAnimation), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_animationInterfaceArray
        return
  end function

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_setAnimationInterfaceArray_1(this, j_animationInterfaceArray)
    class(SimultaneousCompoundRotationAnimation), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end subroutine

  recursive subroutine SimultaneousCompoundRotationAnimation_jm_set_1(this, j_gl)
    class(SimultaneousCompoundRotationAnimation), target :: this
    class(GL), target, optional :: j_gl
    integer(4) :: j_index
    integer(4) :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp12 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp12 >= 0))
            associate (jstaticref15 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref15%jm_set_1(j_gl)
            end associate
        end do
  end subroutine
end module SimultaneousCompoundRotationAnimation_m

