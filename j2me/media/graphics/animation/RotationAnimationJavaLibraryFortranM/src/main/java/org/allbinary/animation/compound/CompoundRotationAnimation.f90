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
module CompoundRotationAnimation_m
  use JR_m
  use GL_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use RotationAnimation_m
  use Direction_m
  use PrimitiveIntUtil_m
  use Angle_m
  use AngleFactory_m
  use AngleInfo_m
  use CircularIndexUtil_m
  use CompoundAnimationInterface_m
  implicit none

  type, extends(RotationAnimation) :: CompoundRotationAnimation
    type(JRef), allocatable :: f_animationInterfaceArray(:)
  contains
    procedure :: jm_setFrame_1 => CompoundRotationAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => CompoundRotationAnimation_jm_getFrame_0
    procedure :: jm_getAnimationSize_0 => CompoundRotationAnimation_jm_getAnimationSize_0
    procedure :: jm_getSize_0 => CompoundRotationAnimation_jm_getSize_0
    procedure :: jm_previousFrame_0 => CompoundRotationAnimation_jm_previousFrame_0
    procedure :: jm_nextFrame_0 => CompoundRotationAnimation_jm_nextFrame_0
    procedure :: jm_previousRotation_0 => CompoundRotationAnimation_jm_previousRotation_0
    procedure :: jm_nextRotation_0 => CompoundRotationAnimation_jm_nextRotation_0
    procedure :: jm_setSequence_1 => CompoundRotationAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => CompoundRotationAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => CompoundRotationAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => CompoundRotationAnimation_jm_paintThreedXYZ_4
    procedure :: jm_getCurrentAnimation_0 => CompoundRotationAnimation_jm_getCurrentAnimation_0
    procedure :: jm_nextAnimation_0 => CompoundRotationAnimation_jm_nextAnimation_0
    procedure :: jm_previousAnimation_0 => CompoundRotationAnimation_jm_previousAnimation_0
    procedure :: jm_setAnimation_1 => CompoundRotationAnimation_jm_setAnimation_1
    procedure :: jm_setFrameByDirection_1 => CompoundRotationAnimation_jm_setFrameByDirection_1
    procedure :: jm_setFrameToAngle_1 => CompoundRotationAnimation_jm_setFrameToAngle_1
    procedure :: jm_adjustFrameToAngle_1 => CompoundRotationAnimation_jm_adjustFrameToAngle_1
    procedure :: jm_adjustFrame_1 => CompoundRotationAnimation_jm_adjustFrame_1
    procedure :: jm_getAngleInfoP_0 => CompoundRotationAnimation_jm_getAngleInfoP_0
    procedure :: jm_getAnimationInterfaceArray_0 => CompoundRotationAnimation_jm_getAnimationInterfaceArray_0
    procedure :: jm_setAnimationInterfaceArray_1 => CompoundRotationAnimation_jm_setAnimationInterfaceArray_1
    procedure :: jm_set_1 => CompoundRotationAnimation_jm_set_1
  end type

  ! CompoundRotationAnimation used as a CompoundAnimationInterface
  type, extends(CompoundAnimationInterface) :: CompoundRotationAnimation_jas_CompoundAnimationInterface
    class(CompoundRotationAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getCurrentAnimation_0 => CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_getCurrentAnimation_0
    procedure :: jm_nextAnimation_0 => CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_nextAnimation_0
    procedure :: jm_previousAnimation_0 => CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_previousAnimation_0
    procedure :: jm_setAnimation_1 => CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_setAnimation_1
  end type


contains

  function CompoundRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompoundRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompoundRotationAnimation)
      jresult => object
    end select
  end function

  function CompoundRotationAnimation_jas_CompoundAnimationInterface_jnew(object) result(jresult)
    class(CompoundRotationAnimation), target :: object
    class(CompoundRotationAnimation_jas_CompoundAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CompoundRotationAnimation'
    jresult%jtarget => object
  end function

  recursive function CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_getCurrentAnimation_0(this) result(jresult)
    class(CompoundRotationAnimation_jas_CompoundAnimationInterface), target :: this
    class(IndexedAnimation), pointer :: jresult
    jresult => this%jtarget%jm_getCurrentAnimation_0()
  end function

  recursive subroutine CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_nextAnimation_0(this)
    class(CompoundRotationAnimation_jas_CompoundAnimationInterface), target :: this
    call this%jtarget%jm_nextAnimation_0()
  end subroutine

  recursive subroutine CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_previousAnimation_0(this)
    class(CompoundRotationAnimation_jas_CompoundAnimationInterface), target :: this
    call this%jtarget%jm_previousAnimation_0()
  end subroutine

  recursive subroutine CompoundRotationAnimation_jas_CompoundAnimationInterface_jm_setAnimation_1(this, j_index)
    class(CompoundRotationAnimation_jas_CompoundAnimationInterface), target :: this
    integer(4), value :: j_index
    call this%jtarget%jm_setAnimation_1(j_index)
  end subroutine

  recursive function CompoundRotationAnimation_jnew_2(j_animationInterfaceArray, j_animationBehavior) result(this)
    type(JRef) :: j_animationInterfaceArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(CompoundRotationAnimation), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'CompoundRotationAnimation'
    
        jtemp1 => AngleFactory_jm_getInstance_0()
        continue ! super()
        this%f_animationInterfaceArray = j_animationInterfaceArray
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(size(this%f_animationInterfaceArray, 1))
  end function

  recursive subroutine CompoundRotationAnimation_jm_setFrame_1(this, j_index)
    class(CompoundRotationAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref1 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref1%jm_setFrame_1(j_index)
        end associate
  end subroutine

  recursive function CompoundRotationAnimation_jm_getFrame_0(this) result(jresult)
    class(CompoundRotationAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref2 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        jresult = jstaticref2%jm_getFrame_0()
        end associate
        return
  end function

  recursive function CompoundRotationAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(CompoundRotationAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref3 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        jresult = jstaticref3%jm_getAnimationSize_0()
        end associate
        return
  end function

  recursive function CompoundRotationAnimation_jm_getSize_0(this) result(jresult)
    class(CompoundRotationAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref4 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        jresult = jstaticref4%jm_getSize_0()
        end associate
        return
  end function

  recursive subroutine CompoundRotationAnimation_jm_previousFrame_0(this)
    class(CompoundRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref5 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref5%jm_previousFrame_0()
        end associate
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_nextFrame_0(this)
    class(CompoundRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref6 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref6%jm_nextFrame_0()
        end associate
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_previousRotation_0(this)
    class(CompoundRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref7 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref7%jm_previousRotation_0()
        end associate
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_nextRotation_0(this)
    class(CompoundRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref8 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref8%jm_nextRotation_0()
        end associate
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_setSequence_1(this, j_sequence)
    class(CompoundRotationAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function CompoundRotationAnimation_jm_getSequence_0(this) result(jresult)
    class(CompoundRotationAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine CompoundRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CompoundRotationAnimation), target :: this
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
        associate (jstaticref9 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref9%jm_paintXY_3(j_graphics, j_x, j_y)
        end associate
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(CompoundRotationAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref10 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref10%jm_paintThreedXYZ_4(j_graphics, j_x, j_y, j_z)
        end associate
  end subroutine

  recursive function CompoundRotationAnimation_jm_getCurrentAnimation_0(this) result(jresult)
    class(CompoundRotationAnimation), target :: this
    class(IndexedAnimation), pointer :: jresult
        jresult => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v)
        return
  end function

  recursive subroutine CompoundRotationAnimation_jm_nextAnimation_0(this)
    class(CompoundRotationAnimation), target :: this
    integer(4) :: j_frame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_frame = this%jm_getFrame_0()
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
        call this%jm_setFrame_1(j_frame)
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_previousAnimation_0(this)
    class(CompoundRotationAnimation), target :: this
    integer(4) :: j_frame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_frame = this%jm_getFrame_0()
        jdiscardInt = this%f_circularIndexUtil%jm_previous_0()
        call this%jm_setFrame_1(j_frame)
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_setAnimation_1(this, j_index)
    class(CompoundRotationAnimation), target :: this
    integer(4), value :: j_index
    integer(4) :: j_frame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_frame = this%jm_getFrame_0()
        call this%f_circularIndexUtil%jm_setIndex_1(j_index)
        call this%jm_setFrame_1(j_frame)
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_setFrameByDirection_1(this, j_direction)
    class(CompoundRotationAnimation), target :: this
    class(Direction), target, optional :: j_direction
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref11 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref11%jm_setFrameByDirection_1(j_direction)
        end associate
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_setFrameToAngle_1(this, j_angle)
    class(CompoundRotationAnimation), target :: this
    class(Angle), target, optional :: j_angle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref12 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref12%jm_setFrameToAngle_1(j_angle)
        end associate
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_adjustFrameToAngle_1(this, j_angle)
    class(CompoundRotationAnimation), target :: this
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

  recursive subroutine CompoundRotationAnimation_jm_adjustFrame_1(this, j_angle)
    class(CompoundRotationAnimation), target :: this
    integer(4), value :: j_angle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref13 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref13%jm_adjustFrame_1(j_angle)
        end associate
  end subroutine

  recursive function CompoundRotationAnimation_jm_getAngleInfoP_0(this) result(jresult)
    class(CompoundRotationAnimation), target :: this
    class(AngleInfo), pointer :: jresult
        associate (jstaticref14 => RotationAnimation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        jresult => jstaticref14%jm_getAngleInfoP_0()
        end associate
        return
  end function

  recursive function CompoundRotationAnimation_jm_getAnimationInterfaceArray_0(this) result(jresult)
    class(CompoundRotationAnimation), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_animationInterfaceArray
        return
  end function

  recursive subroutine CompoundRotationAnimation_jm_setAnimationInterfaceArray_1(this, j_animationInterfaceArray)
    class(CompoundRotationAnimation), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end subroutine

  recursive subroutine CompoundRotationAnimation_jm_set_1(this, j_gl)
    class(CompoundRotationAnimation), target :: this
    class(GL), target, optional :: j_gl
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
            associate (jstaticref15 => RotationAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref15%jm_set_1(j_gl)
            end associate
        end do
  end subroutine
end module CompoundRotationAnimation_m

