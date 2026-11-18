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
! package org.allbinary.animation.caption
module CaptionIndexedAnimation_m
  use JR_m
  use Animation_m
  use AnimationBehavior_m
  use AnimationEventHandler_m
  use IndexedAnimation_m
  use PrimitiveIntUtil_m
  use AllBinaryEventObject_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  implicit none

  type, extends(IndexedAnimation) :: CaptionIndexedAnimation
    class(Animation), pointer :: f_animationInterface => null()
    class(IndexedAnimation), pointer :: f_movieIndexedAnimationInterface => null()
    integer(4) :: f_captionDx = 0
    integer(4) :: f_captionDy = 0
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
    integer(4) :: f_time = 0
    class(AllBinaryEventObject), pointer :: f_END_EVENT => null()
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(Player), pointer :: f_player => null()
  contains
    procedure :: jm_nextFrame_0 => CaptionIndexedAnimation_jm_nextFrame_0
    procedure :: jm_isLastFrame_0 => CaptionIndexedAnimation_jm_isLastFrame_0
    procedure :: jm_previousFrame_0 => CaptionIndexedAnimation_jm_previousFrame_0
    procedure :: jm_setFrame_1 => CaptionIndexedAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => CaptionIndexedAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => CaptionIndexedAnimation_jm_getSize_0
    procedure :: jm_setSequence_1 => CaptionIndexedAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => CaptionIndexedAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => CaptionIndexedAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => CaptionIndexedAnimation_jm_paintThreedXYZ_4
  end type


contains

  function CaptionIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CaptionIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CaptionIndexedAnimation)
      jresult => object
    end select
  end function

  recursive function CaptionIndexedAnimation_jnew_9(j_animationInterface, j_movieIndexedAnimationInterface, j_player, j_captionDx, j_captionDy, j_dx, j_dy, j_time, j_animationBehavior) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(IndexedAnimation), target, optional :: j_movieIndexedAnimationInterface
    class(Player), target, optional :: j_player
    integer(4), value :: j_captionDx
    integer(4), value :: j_captionDy
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_time
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(CaptionIndexedAnimation), pointer :: this
    integer(4) :: j_timePerFrame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CaptionIndexedAnimation'
    
    
    
    
    
    
    
    
    
    
        continue ! super()
        this%f_animationInterface => j_animationInterface
        this%f_movieIndexedAnimationInterface => j_movieIndexedAnimationInterface
        this%f_captionDx = j_captionDx
        this%f_captionDy = j_captionDy
        this%f_dx = j_dx
        this%f_dy = j_dy
        this%f_time = j_time
        this%f_END_EVENT => AllBinaryEventObject_jnew_1(this)
        j_timePerFrame = (this%f_time / this%jm_getSize_0())
        this%f_timeDelayHelper => TimeDelayHelper_jnew_1(j_timePerFrame)
        this%f_player => j_player
        call this%f_player%jm_start_0()
  end function

  recursive subroutine CaptionIndexedAnimation_jm_nextFrame_0(this)
    class(CaptionIndexedAnimation), target :: this
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp1
    class(AnimationEventHandler), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        if (this%f_timeDelayHelper%jm_isTime_1(jtemp1%f_startTime)) then
            call this%f_movieIndexedAnimationInterface%jm_nextFrame_0()
        end if
        if (this%jm_isLastFrame_0()) then
            jtemp2 => AnimationEventHandler_jm_getInstance_0()
            call jtemp2%jm_fireEvent_1(this%f_END_EVENT)
        end if
  end subroutine

  recursive function CaptionIndexedAnimation_jm_isLastFrame_0(this) result(jresult)
    class(CaptionIndexedAnimation), target :: this
    logical :: jresult
        if ((this%f_movieIndexedAnimationInterface%jm_getFrame_0() == (this%jm_getSize_0() - 1))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine CaptionIndexedAnimation_jm_previousFrame_0(this)
    class(CaptionIndexedAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_movieIndexedAnimationInterface%jm_previousFrame_0()
  end subroutine

  recursive subroutine CaptionIndexedAnimation_jm_setFrame_1(this, j_index)
    class(CaptionIndexedAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_movieIndexedAnimationInterface%jm_setFrame_1(j_index)
  end subroutine

  recursive function CaptionIndexedAnimation_jm_getFrame_0(this) result(jresult)
    class(CaptionIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_movieIndexedAnimationInterface%jm_getFrame_0()
        return
  end function

  recursive function CaptionIndexedAnimation_jm_getSize_0(this) result(jresult)
    class(CaptionIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_movieIndexedAnimationInterface%jm_getSize_0()
        return
  end function

  recursive subroutine CaptionIndexedAnimation_jm_setSequence_1(this, j_sequence)
    class(CaptionIndexedAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function CaptionIndexedAnimation_jm_getSequence_0(this) result(jresult)
    class(CaptionIndexedAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine CaptionIndexedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CaptionIndexedAnimation), target :: this
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
        call this%f_animationInterface%jm_paintXY_3(j_graphics, (j_x + this%f_captionDx), (j_y + this%f_captionDy))
        call this%f_movieIndexedAnimationInterface%jm_paintXY_3(j_graphics, ((j_x + this%f_captionDx) + this%f_dx), ((j_y + this%f_captionDy) + this%f_dy))
  end subroutine

  recursive subroutine CaptionIndexedAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(CaptionIndexedAnimation), target :: this
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
        call this%f_animationInterface%jm_paintThreedXYZ_4(j_graphics, (j_x + this%f_captionDx), (j_y + this%f_captionDy), j_z)
        call this%f_movieIndexedAnimationInterface%jm_paintThreedXYZ_4(j_graphics, ((j_x + this%f_captionDx) + this%f_dx), ((j_y + this%f_captionDy) + this%f_dy), j_z)
  end subroutine
end module CaptionIndexedAnimation_m

