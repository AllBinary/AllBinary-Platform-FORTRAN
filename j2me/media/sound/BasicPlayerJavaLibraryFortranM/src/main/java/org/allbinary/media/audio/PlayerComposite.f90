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
! package org.allbinary.media.audio
module PlayerComposite_m
  use JR_m
  use LogUtil_m
  use CommonStrings_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use Controllable2_m
  implicit none

  type, extends(Controllable) :: PlayerComposite
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(Player), pointer :: f_player => null()
    class(TimeDelayHelper), pointer :: f_timeElapsedHelper => null()
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
  contains
    procedure :: jm_addPlayerListener_1 => PlayerComposite_jm_addPlayerListener_1
    procedure :: jm_removePlayerListener_1 => PlayerComposite_jm_removePlayerListener_1
    procedure :: jm_close_0 => PlayerComposite_jm_close_0
    procedure :: jm_deallocate_0 => PlayerComposite_jm_deallocate_0
    procedure :: jm_getContentType_0 => PlayerComposite_jm_getContentType_0
    procedure :: jm_getDuration_0 => PlayerComposite_jm_getDuration_0
    procedure :: jm_getMediaTime_0 => PlayerComposite_jm_getMediaTime_0
    procedure :: jm_prefetch_0 => PlayerComposite_jm_prefetch_0
    procedure :: jm_realize_0 => PlayerComposite_jm_realize_0
    procedure :: jm_getState_0 => PlayerComposite_jm_getState_0
    procedure :: jm_setLoopCount_1 => PlayerComposite_jm_setLoopCount_1
    procedure :: jm_setMediaTime_1 => PlayerComposite_jm_setMediaTime_1
    procedure :: jm_start_0 => PlayerComposite_jm_start_0
    procedure :: jm_stop_0 => PlayerComposite_jm_stop_0
    procedure :: jm_getControl_1 => PlayerComposite_jm_getControl_1
    procedure :: jm_getControls_0 => PlayerComposite_jm_getControls_0
    procedure :: jm_setVolume_2 => PlayerComposite_jm_setVolume_2
    procedure :: jm_getPlayerP_0 => PlayerComposite_jm_getPlayerP_0
  end type


contains

  function PlayerComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerComposite)
      jresult => object
    end select
  end function

  recursive function PlayerComposite_jnew_2(j_player, j_repeatTime) result(this)
    class(Player), target, optional :: j_player
    integer(4), value :: j_repeatTime
    class(PlayerComposite), pointer :: this
    allocate(this)
    this%jclass = 'PlayerComposite'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    this%f_timeElapsedHelper => TimeDelayHelper_jnew_1(0)
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        this%f_player => j_player
        this%f_timeElapsedHelper%f_delay = j_repeatTime
  end function

  recursive subroutine PlayerComposite_jm_addPlayerListener_1(this, j_playerListener)
    class(PlayerComposite), target :: this
    class(PlayerListener), target, optional :: j_playerListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_player%jm_addPlayerListener_1(j_playerListener)
  end subroutine

  recursive subroutine PlayerComposite_jm_removePlayerListener_1(this, j_playerListener)
    class(PlayerComposite), target :: this
    class(PlayerListener), target, optional :: j_playerListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_player%jm_removePlayerListener_1(j_playerListener)
  end subroutine

  recursive subroutine PlayerComposite_jm_close_0(this)
    class(PlayerComposite), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_player%jm_close_0()
  end subroutine

  recursive subroutine PlayerComposite_jm_deallocate_0(this)
    class(PlayerComposite), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_player%jm_deallocate_0()
  end subroutine

  recursive function PlayerComposite_jm_getContentType_0(this) result(jresult)
    class(PlayerComposite), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_player%jm_getContentType_0()
        return
  end function

  recursive function PlayerComposite_jm_getDuration_0(this) result(jresult)
    class(PlayerComposite), target :: this
    integer(8) :: jresult
        jresult = this%f_player%jm_getDuration_0()
        return
  end function

  recursive function PlayerComposite_jm_getMediaTime_0(this) result(jresult)
    class(PlayerComposite), target :: this
    integer(8) :: jresult
        jresult = this%f_player%jm_getMediaTime_0()
        return
  end function

  recursive subroutine PlayerComposite_jm_prefetch_0(this)
    class(PlayerComposite), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_player%jm_prefetch_0()
  end subroutine

  recursive subroutine PlayerComposite_jm_realize_0(this)
    class(PlayerComposite), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_player%jm_realize_0()
  end subroutine

  recursive function PlayerComposite_jm_getState_0(this) result(jresult)
    class(PlayerComposite), target :: this
    integer(4) :: jresult
        jresult = this%f_player%jm_getState_0()
        return
  end function

  recursive subroutine PlayerComposite_jm_setLoopCount_1(this, j_count)
    class(PlayerComposite), target :: this
    integer(4), value :: j_count
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_player%jm_setLoopCount_1(j_count)
  end subroutine

  recursive function PlayerComposite_jm_setMediaTime_1(this, j_now) result(jresult)
    class(PlayerComposite), target :: this
    integer(8), value :: j_now
    integer(8) :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult = this%f_player%jm_setMediaTime_1(j_now)
            return
  end function

  recursive subroutine PlayerComposite_jm_start_0(this)
    class(PlayerComposite), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (this%f_timeElapsedHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime)) then
                call this%f_player%jm_start_0()
            end if
  end subroutine

  recursive subroutine PlayerComposite_jm_stop_0(this)
    class(PlayerComposite), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_player%jm_stop_0()
  end subroutine

  recursive function PlayerComposite_jm_getControl_1(this, j_controlType) result(jresult)
    class(PlayerComposite), target :: this
    character(len=*), intent(in) :: j_controlType
    class(Control), pointer :: jresult
        jresult => this%f_player%jm_getControl_1(j_controlType)
        return
  end function

  recursive function PlayerComposite_jm_getControls_0(this) result(jresult)
    class(PlayerComposite), target :: this
    type(JRef), allocatable :: jresult(:)
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine PlayerComposite_jm_setVolume_2(this, j_leftVolume, j_rightVolume)
    class(PlayerComposite), target :: this
    integer(4), value :: j_leftVolume
    integer(4), value :: j_rightVolume
    class(Controllable2), pointer :: j_controllable2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_controllable2 => Controllable2_jcast(this%f_player)
        call j_controllable2%jm_setVolume_2(j_leftVolume, j_rightVolume)
  end subroutine

  recursive function PlayerComposite_jm_getPlayerP_0(this) result(jresult)
    class(PlayerComposite), target :: this
    class(Player), pointer :: jresult
        jresult => this%f_player
        return
  end function
end module PlayerComposite_m

