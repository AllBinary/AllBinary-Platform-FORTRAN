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
! package org.allbinary.business.advertisement
module GameAdStateBase_m
  use JR_m
  use GameType_m
  use GameState_m
  use ForcedLogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use AdConfiguration_m
  use Advertisements_m
  implicit none

  type, extends(JObject) :: GameAdStateBase
    class(AdConfiguration), pointer :: f_adConfigurationP => null()
    class(Advertisements), pointer :: f_advertisementsP => null()
    logical :: f_okayToShowAdsP = .false.
  contains
    procedure :: jm_initViewArray_1 => GameAdStateBase_jm_initViewArray_1
    procedure :: jm_onStart_1 => GameAdStateBase_jm_onStart_1
    procedure :: jm_init_0 => GameAdStateBase_jm_init_0
    procedure :: jm_isShowingAtLocation_1 => GameAdStateBase_jm_isShowingAtLocation_1
    procedure :: jm_isShowingAt_0 => GameAdStateBase_jm_isShowingAt_0
    procedure :: jm_show_0 => GameAdStateBase_jm_show_0
    procedure :: jm_hide_0 => GameAdStateBase_jm_hide_0
    procedure :: jm_onEvent_1 => GameAdStateBase_jm_onEvent_1
    procedure :: jm_processAdState_2 => GameAdStateBase_jm_processAdState_2
    procedure :: jm_processPageAdState_0 => GameAdStateBase_jm_processPageAdState_0
    procedure :: jm_playingAdState_0 => GameAdStateBase_jm_playingAdState_0
    procedure :: jm_playingAdStateWH_2 => GameAdStateBase_jm_playingAdStateWH_2
    procedure :: jm_notPlayingAdState_0 => GameAdStateBase_jm_notPlayingAdState_0
    procedure :: jm_setGameIsReady_1 => GameAdStateBase_jm_setGameIsReady_1
    procedure :: jm_isGameIsReady_0 => GameAdStateBase_jm_isGameIsReady_0
    procedure :: jm_getAdvertisements_0 => GameAdStateBase_jm_getAdvertisements_0
    procedure :: jm_getAdConfiguration_0 => GameAdStateBase_jm_getAdConfiguration_0
    procedure :: jm_isOkayToShowPageAd_0 => GameAdStateBase_jm_isOkayToShowPageAd_0
    procedure :: jm_setOkayToShowAds_1 => GameAdStateBase_jm_setOkayToShowAds_1
    procedure :: jm_isOkayToShowAds_0 => GameAdStateBase_jm_isOkayToShowAds_0
    procedure :: jm_isEnabled_0 => GameAdStateBase_jm_isEnabled_0
  end type


contains

  function GameAdStateBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameAdStateBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameAdStateBase)
      jresult => object
    end select
  end function

  recursive function GameAdStateBase_jnew_1(j_adConfiguration) result(this)
    class(AdConfiguration), target, optional :: j_adConfiguration
    class(GameAdStateBase), pointer :: this
    allocate(this)
    this%jclass = 'GameAdStateBase'
    
    this%f_advertisementsP => Advertisements_jnew_0()
    
        this%f_adConfigurationP => j_adConfiguration
  end function

  recursive subroutine GameAdStateBase_jm_initViewArray_1(this, j_viewArray)
    class(GameAdStateBase), target :: this
    type(JRef) :: j_viewArray(:)
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_onStart_1(this, j_anyType)
    class(GameAdStateBase), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_init_0()
  end subroutine

  recursive subroutine GameAdStateBase_jm_init_0(this)
    class(GameAdStateBase), target :: this
    continue
  end subroutine

  recursive function GameAdStateBase_jm_isShowingAtLocation_1(this, j_location) result(jresult)
    class(GameAdStateBase), target :: this
    integer(4), value :: j_location
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function GameAdStateBase_jm_isShowingAt_0(this) result(jresult)
    class(GameAdStateBase), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine GameAdStateBase_jm_show_0(this)
    class(GameAdStateBase), target :: this
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_hide_0(this)
    class(GameAdStateBase), target :: this
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_onEvent_1(this, j_eventObject)
    class(GameAdStateBase), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp1%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine GameAdStateBase_jm_processAdState_2(this, j_gameState, j_gameType)
    class(GameAdStateBase), target :: this
    class(GameState), target, optional :: j_gameState
    class(GameType), target, optional :: j_gameType
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_processPageAdState_0(this)
    class(GameAdStateBase), target :: this
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_playingAdState_0(this)
    class(GameAdStateBase), target :: this
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_playingAdStateWH_2(this, j_width, j_height)
    class(GameAdStateBase), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_notPlayingAdState_0(this)
    class(GameAdStateBase), target :: this
    continue
  end subroutine

  recursive subroutine GameAdStateBase_jm_setGameIsReady_1(this, j_gameIsReady)
    class(GameAdStateBase), target :: this
    logical, value :: j_gameIsReady
    continue
  end subroutine

  recursive function GameAdStateBase_jm_isGameIsReady_0(this) result(jresult)
    class(GameAdStateBase), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function GameAdStateBase_jm_getAdvertisements_0(this) result(jresult)
    class(GameAdStateBase), target :: this
    class(Advertisements), pointer :: jresult
        jresult => this%f_advertisementsP
        return
  end function

  recursive function GameAdStateBase_jm_getAdConfiguration_0(this) result(jresult)
    class(GameAdStateBase), target :: this
    class(AdConfiguration), pointer :: jresult
        jresult => this%f_adConfigurationP
        return
  end function

  recursive function GameAdStateBase_jm_isOkayToShowPageAd_0(this) result(jresult)
    class(GameAdStateBase), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine GameAdStateBase_jm_setOkayToShowAds_1(this, j_okayToShowAds)
    class(GameAdStateBase), target :: this
    logical, value :: j_okayToShowAds
        this%f_okayToShowAdsP = j_okayToShowAds
  end subroutine

  recursive function GameAdStateBase_jm_isOkayToShowAds_0(this) result(jresult)
    class(GameAdStateBase), target :: this
    logical :: jresult
        jresult = this%f_okayToShowAdsP
        return
  end function

  recursive function GameAdStateBase_jm_isEnabled_0(this) result(jresult)
    class(GameAdStateBase), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module GameAdStateBase_m

