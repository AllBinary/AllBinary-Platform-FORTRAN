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
! package org.allbinary.logic.system.security.licensing
module LockedFeatureNotificationUtil_m
  use JR_m
  use GameNotificationEvent_m
  use GameNotificationEventHandler_m
  use BasicColor_m
  use BasicColorFactory_m
  use BooleanFactory_m
  use SmallIntegerSingletonFactory_m
  use ErrorSound_m
  use PrimaryPlayerQueueFactory_m
  use LicenseStrings_m
  implicit none

  type, extends(JObject) :: LockedFeatureNotificationUtil
    class(GameNotificationEvent), pointer :: f_gameNotificationEvent => null()
  contains
    procedure :: jm_fire_0 => LockedFeatureNotificationUtil_jm_fire_0
    procedure :: jm_fireWithColor_1 => LockedFeatureNotificationUtil_jm_fireWithColor_1
  end type

  class(LockedFeatureNotificationUtil), pointer, save :: LockedFeatureNotificationUtil_jcell_instance => null()
  logical, save :: LockedFeatureNotificationUtil_jset_instance = .false.

contains

  function LockedFeatureNotificationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockedFeatureNotificationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockedFeatureNotificationUtil)
      jresult => object
    end select
  end function

  function LockedFeatureNotificationUtil_jstatic_instance() result(jresult)
    class(LockedFeatureNotificationUtil), pointer :: jresult
    if (.not. LockedFeatureNotificationUtil_jset_instance) then
      LockedFeatureNotificationUtil_jset_instance = .true.
      LockedFeatureNotificationUtil_jcell_instance => LockedFeatureNotificationUtil_jnew_0()
    end if
    jresult => LockedFeatureNotificationUtil_jcell_instance
  end function

  subroutine LockedFeatureNotificationUtil_jsetstatic_instance(jvalue)
    class(LockedFeatureNotificationUtil), target, optional :: jvalue
    LockedFeatureNotificationUtil_jset_instance = .true.
    if (present(jvalue)) then
      LockedFeatureNotificationUtil_jcell_instance => jvalue
    else
      LockedFeatureNotificationUtil_jcell_instance => null()
    end if
  end subroutine

  function LockedFeatureNotificationUtil_jnew_0() result(this)
    class(LockedFeatureNotificationUtil), pointer :: this
    class(LicenseStrings), pointer :: jtemp1
    class(SmallIntegerSingletonFactory), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    class(BooleanFactory), pointer :: jtemp4
    allocate(this)
    this%jclass = 'LockedFeatureNotificationUtil'
    jtemp1 => LicenseStrings_jm_getInstance_0()
    jtemp2 => SmallIntegerSingletonFactory_jm_getInstance_0()
    jtemp3 => BasicColorFactory_jm_getInstance_0()
    jtemp4 => BooleanFactory_jm_getInstance_0()
    this%f_gameNotificationEvent => GameNotificationEvent_jnew_5(this, jtemp1%f_LOCKED, jtemp2%jm_getAt_1(3), jtemp3%f_RED, jtemp4%f_FALSE)
  end function

  recursive function LockedFeatureNotificationUtil_jm_getInstance_0() result(jresult)
    class(LockedFeatureNotificationUtil), pointer :: jresult
        jresult => LockedFeatureNotificationUtil_jstatic_instance()
        return
  end function

  recursive subroutine LockedFeatureNotificationUtil_jm_fire_0(this)
    class(LockedFeatureNotificationUtil), target :: this
    class(PrimaryPlayerQueueFactory), pointer :: jtemp5
    class(GameNotificationEventHandler), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp5 => PrimaryPlayerQueueFactory_jm_getInstance_0()
        jdiscardBoolean = jtemp5%jm_add_1(ErrorSound_jm_getInstance_0())
        jtemp6 => GameNotificationEventHandler_jm_getInstance_0()
        call jtemp6%jm_fireEvent_1(this%f_gameNotificationEvent)
  end subroutine

  recursive subroutine LockedFeatureNotificationUtil_jm_fireWithColor_1(this, j_basicColor)
    class(LockedFeatureNotificationUtil), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(PrimaryPlayerQueueFactory), pointer :: jtemp7
    class(GameNotificationEventHandler), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp7 => PrimaryPlayerQueueFactory_jm_getInstance_0()
        jdiscardBoolean = jtemp7%jm_add_1(ErrorSound_jm_getInstance_0())
        call this%f_gameNotificationEvent%jm_setBasicColorP_1(j_basicColor)
        jtemp8 => GameNotificationEventHandler_jm_getInstance_0()
        call jtemp8%jm_fireEvent_1(this%f_gameNotificationEvent)
  end subroutine
end module LockedFeatureNotificationUtil_m

