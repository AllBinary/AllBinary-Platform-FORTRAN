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
! package org.allbinary.game.ag.layer.hud.basic.time
module HudTimer_m
  use JR_m
  use PrimitiveLongSingleton_m
  use PrimitiveLongUtil_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  implicit none

  type, extends(JObject) :: HudTimer
    integer(8) :: f_startTime = 0_8
    integer(8) :: f_hundredthTime = 0_8
    integer(8) :: f_maxTime = 0_8
    integer(8) :: f_modifier = 0_8
    integer(4), allocatable :: f_hundrethsString(:)
    integer(4) :: f_totalDigits = 0
    class(PrimitiveLongUtil), pointer :: f_primitiveLongUtil => null()
    integer(4), allocatable :: f_MAX(:)
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
  contains
    procedure :: jm_start_0 => HudTimer_jm_start_0
    procedure :: jm_get_0 => HudTimer_jm_get_0
    procedure :: jm_update_0 => HudTimer_jm_update_0
    procedure :: jm_reduce_1 => HudTimer_jm_reduce_1
    procedure :: jm_add_1 => HudTimer_jm_add_1
    procedure :: jm_getTimeChars_0 => HudTimer_jm_getTimeChars_0
    procedure :: jm_getCurrentTotalDigits_0 => HudTimer_jm_getCurrentTotalDigits_0
  end type


contains

  function HudTimer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HudTimer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HudTimer)
      jresult => object
    end select
  end function

  recursive function HudTimer_jnew_1(j_maxTime) result(this)
    integer(4), value :: j_maxTime
    class(HudTimer), pointer :: this
    class(PrimitiveLongSingleton), pointer :: jtemp1
    allocate(this)
    this%jclass = 'HudTimer'
    this%f_startTime = int((-1), 8)
    
    
    
    jtemp1 => PrimitiveLongSingleton_jm_getInstance_0()
    this%f_hundrethsString = jtemp1%f_ZERO
    this%f_totalDigits = 1
    
    this%f_MAX = [integer(4) :: iachar('L'), iachar('O'), iachar('L')]
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        this%f_primitiveLongUtil => PrimitiveLongUtil_jm_createPowerOfTen_1(j_maxTime)
        this%f_maxTime = int(j_maxTime, 8)
  end function

  recursive subroutine HudTimer_jm_start_0(this)
    class(HudTimer), target :: this
        this%f_hundredthTime = 0_8
        this%f_startTime = this%f_gameTickTimeDelayHelper%f_startTime
  end subroutine

  recursive function HudTimer_jm_get_0(this) result(jresult)
    class(HudTimer), target :: this
    integer(8) :: jresult
        jresult = this%f_hundredthTime
        return
  end function

  recursive subroutine HudTimer_jm_update_0(this)
    class(HudTimer), target :: this
    integer(8) :: j_lastLowerTime
    integer(8) :: j_currentTime
        j_lastLowerTime = this%f_hundredthTime
        j_currentTime = ((((this%f_modifier + this%f_gameTickTimeDelayHelper%f_startTime)) - this%f_startTime))
        if ((j_currentTime < 0_8)) then
            j_currentTime = 0_8
        end if
        this%f_hundredthTime = (j_currentTime / 100_8)
        if ((this%f_hundredthTime >= this%f_maxTime)) then
            if ((this%f_startTime > 0_8)) then
                this%f_hundrethsString = this%f_MAX
            end if
        else if ((j_lastLowerTime /= this%f_hundredthTime)) then
            this%f_hundrethsString = this%f_primitiveLongUtil%jm_getCharArray_1(JR_l2i(this%f_hundredthTime))
            this%f_totalDigits = this%f_primitiveLongUtil%jm_getCurrentTotalDigits_0()
        end if
  end subroutine

  recursive subroutine HudTimer_jm_reduce_1(this, j_value)
    class(HudTimer), target :: this
    integer(4), value :: j_value
        this%f_modifier = (this%f_modifier - int(j_value, 8))
  end subroutine

  recursive subroutine HudTimer_jm_add_1(this, j_value)
    class(HudTimer), target :: this
    integer(4), value :: j_value
        this%f_modifier = (this%f_modifier + int(j_value, 8))
  end subroutine

  recursive function HudTimer_jm_getTimeChars_0(this) result(jresult)
    class(HudTimer), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_hundrethsString
        return
  end function

  recursive function HudTimer_jm_getCurrentTotalDigits_0(this) result(jresult)
    class(HudTimer), target :: this
    integer(4) :: jresult
        jresult = this%f_totalDigits
        return
  end function
end module HudTimer_m

