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
module IndexedAnimation_m
  use JR_m
  use LogUtil_m
  use PrimitiveIntUtil_m
  use CommonStrings_m
  use Animation_m
  use IndexedAnimationInterface_m
  use AnimationBehavior_m
  implicit none

  type, extends(Animation) :: IndexedAnimation
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(AnimationBehavior), pointer :: f_animationBehaviorP => null()
  contains
    procedure :: jm_getAnimationBehavior_0 => IndexedAnimation_jm_getAnimationBehavior_0
    procedure :: jm_reset_0 => IndexedAnimation_jm_reset_0
    procedure :: jm_setFrame_1 => IndexedAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => IndexedAnimation_jm_getFrame_0
    procedure :: jm_getAnimationSize_0 => IndexedAnimation_jm_getAnimationSize_0
    procedure :: jm_getSize_0 => IndexedAnimation_jm_getSize_0
    procedure :: jm_previousFrame_0 => IndexedAnimation_jm_previousFrame_0
    procedure :: jm_isLastFrame_0 => IndexedAnimation_jm_isLastFrame_0
    procedure :: jm_setSequence_1 => IndexedAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => IndexedAnimation_jm_getSequence_0
    procedure :: jm_setState_1 => IndexedAnimation_jm_setState_1
    procedure :: jm_getWidth_0 => IndexedAnimation_jm_getWidth_0
    procedure :: jm_getHeight_0 => IndexedAnimation_jm_getHeight_0
  end type

  ! IndexedAnimation used as a IndexedAnimationInterface
  type, extends(IndexedAnimationInterface) :: IndexedAnimation_jas_IndexedAnimationInterface
    class(IndexedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_reset_0 => IndexedAnimation_jas_IndexedAnimationInterface_jm_reset_0
    procedure :: jm_setFrame_1 => IndexedAnimation_jas_IndexedAnimationInterface_jm_setFrame_1
    procedure :: jm_getFrame_0 => IndexedAnimation_jas_IndexedAnimationInterface_jm_getFrame_0
  end type


contains

  function IndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IndexedAnimation)
      jresult => object
    end select
  end function

  function IndexedAnimation_jas_IndexedAnimationInterface_jnew(object) result(jresult)
    class(IndexedAnimation), target :: object
    class(IndexedAnimation_jas_IndexedAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'IndexedAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine IndexedAnimation_jas_IndexedAnimationInterface_jm_reset_0(this)
    class(IndexedAnimation_jas_IndexedAnimationInterface), target :: this
    call this%jtarget%jm_reset_0()
  end subroutine

  recursive subroutine IndexedAnimation_jas_IndexedAnimationInterface_jm_setFrame_1(this, j_index)
    class(IndexedAnimation_jas_IndexedAnimationInterface), target :: this
    integer(4), value :: j_index
    call this%jtarget%jm_setFrame_1(j_index)
  end subroutine

  recursive function IndexedAnimation_jas_IndexedAnimationInterface_jm_getFrame_0(this) result(jresult)
    class(IndexedAnimation_jas_IndexedAnimationInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getFrame_0()
  end function

  recursive function IndexedAnimation_jnew_1(j_animationBehavior) result(this)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(IndexedAnimation), pointer :: this
    allocate(this)
    this%jclass = 'IndexedAnimation'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
        this%f_animationBehaviorP => j_animationBehavior
  end function

  recursive function IndexedAnimation_jm_getAnimationBehavior_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    class(AnimationBehavior), pointer :: jresult
        jresult => this%f_animationBehaviorP
        return
  end function

  recursive subroutine IndexedAnimation_jm_reset_0(this)
    class(IndexedAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationBehaviorP%jm_reset_0()
        call this%jm_setFrame_1(0)
  end subroutine

  recursive subroutine IndexedAnimation_jm_setFrame_1(this, j_index)
    class(IndexedAnimation), target :: this
    integer(4), value :: j_index
    continue
  end subroutine

  recursive function IndexedAnimation_jm_getFrame_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function IndexedAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function IndexedAnimation_jm_getSize_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine IndexedAnimation_jm_previousFrame_0(this)
    class(IndexedAnimation), target :: this
    continue
  end subroutine

  recursive function IndexedAnimation_jm_isLastFrame_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    logical :: jresult
        if ((this%jm_getFrame_0() == (this%jm_getSize_0() - 1))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine IndexedAnimation_jm_setSequence_1(this, j_sequence)
    class(IndexedAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function IndexedAnimation_jm_getSequence_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine IndexedAnimation_jm_setState_1(this, j_indexedAnimation)
    class(IndexedAnimation), target :: this
    class(IndexedAnimation), target, optional :: j_indexedAnimation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setFrame_1(j_indexedAnimation%jm_getFrame_0())
        call this%jm_setDx_1(j_indexedAnimation%jm_getDx_0())
        call this%jm_setDy_1(j_indexedAnimation%jm_getDy_0())
  end subroutine

  recursive function IndexedAnimation_jm_getWidth_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function IndexedAnimation_jm_getHeight_0(this) result(jresult)
    class(IndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module IndexedAnimation_m

