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
module CaptionAnimationHelper_m
  use JR_m
  use Animation_m
  use AnimationBehavior_m
  use NullAnimationFactory_m
  use TextAnimation_m
  use BasicColor_m
  use StringUtil_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use CaptionAnimationHelperBase_m
  use CaptionAnimation_m
  implicit none

  type, extends(CaptionAnimationHelperBase) :: CaptionAnimationHelper
    class(TimeDelayHelper), pointer :: f_timeHelper => null()
    class(TextAnimation), pointer :: f_textAnimation => null()
    class(Animation), pointer :: f_captionAnimation => null()
    class(Animation), pointer :: f_animation => null()
  contains
    procedure :: jm_isShowing_0 => CaptionAnimationHelper_jm_isShowing_0
    procedure :: jm_tick_0 => CaptionAnimationHelper_jm_tick_0
    procedure :: jm_update_2 => CaptionAnimationHelper_jm_update_2
    procedure :: jm_paintXY_3 => CaptionAnimationHelper_jm_paintXY_3
  end type


contains

  function CaptionAnimationHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CaptionAnimationHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CaptionAnimationHelper)
      jresult => object
    end select
  end function

  recursive function CaptionAnimationHelper_jnew_5(j_captionAnimation, j_captionDx, j_captionDy, j_dx, j_dy) result(this)
    class(Animation), target, optional :: j_captionAnimation
    integer(4), value :: j_captionDx
    integer(4), value :: j_captionDy
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(CaptionAnimationHelper), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(NullAnimationFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'CaptionAnimationHelper'
    this%f_timeHelper => TimeDelayHelper_jnew_1(620)
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_textAnimation => TextAnimation_jnew_2(jtemp1%f_EMPTY_STRING, AnimationBehavior_jm_getInstance_0())
    
    jtemp2 => NullAnimationFactory_jm_getFactoryInstance_0()
    this%f_animation => jtemp2%jm_getInstance_1(0)
        this%f_captionAnimation => CaptionAnimation_jnew_6(j_captionAnimation, this%f_textAnimation, j_captionDx, j_captionDy, j_dx, j_dy)
  end function

  recursive function CaptionAnimationHelper_jm_isShowing_0(this) result(jresult)
    class(CaptionAnimationHelper), target :: this
    logical :: jresult
        if (JR_same(this%f_animation, this%f_captionAnimation)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine CaptionAnimationHelper_jm_tick_0(this)
    class(CaptionAnimationHelper), target :: this
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp3
    class(NullAnimationFactory), pointer :: jtemp4
        jtemp3 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        if (this%f_timeHelper%jm_isTime_1(jtemp3%f_startTime)) then
            jtemp4 => NullAnimationFactory_jm_getFactoryInstance_0()
            this%f_animation => jtemp4%jm_getInstance_1(0)
        end if
  end subroutine

  recursive subroutine CaptionAnimationHelper_jm_update_2(this, j_message, j_basicColor)
    class(CaptionAnimationHelper), target :: this
    character(len=*), intent(in) :: j_message
    class(BasicColor), target, optional :: j_basicColor
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_textAnimation%jm_setBasicColorP_1(j_basicColor)
        call this%f_textAnimation%jm_setText_1(j_message)
        this%f_animation => this%f_captionAnimation
        call this%f_timeHelper%jm_setStartTimeTNT_0()
  end subroutine

  recursive subroutine CaptionAnimationHelper_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CaptionAnimationHelper), target :: this
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
        call this%f_animation%jm_paintXY_3(j_graphics, j_x, j_y)
  end subroutine
end module CaptionAnimationHelper_m

