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
! package org.allbinary.game.input
module TextNotificationUtil_m
  use JR_m
  use GameNotificationEvent_m
  use GameNotificationEventHandler_m
  use BasicColorFactory_m
  use BooleanFactory_m
  use SmallIntegerSingletonFactory_m
  use ErrorSound_m
  use PrimaryPlayerQueueFactory_m
  use SelectSound_m
  use Integer_m
  use Boolean_m
  implicit none

  type, extends(JObject) :: TextNotificationUtil
    integer(4) :: f_TWO = 0
    logical :: f_FALSE = .false.
    class(GameNotificationEventHandler), pointer :: f_gameNotificationEventHandler => null()
  contains
    procedure :: jm_fireError_1 => TextNotificationUtil_jm_fireError_1
    procedure :: jm_fireNew_1 => TextNotificationUtil_jm_fireNew_1
    procedure :: jm_fireSuccess_1 => TextNotificationUtil_jm_fireSuccess_1
    procedure :: jm_fire_1 => TextNotificationUtil_jm_fire_1
  end type

  class(TextNotificationUtil), pointer, save :: TextNotificationUtil_jcell_instance => null()
  logical, save :: TextNotificationUtil_jset_instance = .false.

contains

  function TextNotificationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextNotificationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextNotificationUtil)
      jresult => object
    end select
  end function

  function TextNotificationUtil_jstatic_instance() result(jresult)
    class(TextNotificationUtil), pointer :: jresult
    if (.not. TextNotificationUtil_jset_instance) then
      TextNotificationUtil_jset_instance = .true.
      TextNotificationUtil_jcell_instance => TextNotificationUtil_jnew_0()
    end if
    jresult => TextNotificationUtil_jcell_instance
  end function

  subroutine TextNotificationUtil_jsetstatic_instance(jvalue)
    class(TextNotificationUtil), target, optional :: jvalue
    TextNotificationUtil_jset_instance = .true.
    if (present(jvalue)) then
      TextNotificationUtil_jcell_instance => jvalue
    else
      TextNotificationUtil_jcell_instance => null()
    end if
  end subroutine

  function TextNotificationUtil_jnew_0() result(this)
    class(TextNotificationUtil), pointer :: this
    class(SmallIntegerSingletonFactory), pointer :: jtemp4
    class(BooleanFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'TextNotificationUtil'
    jtemp4 => SmallIntegerSingletonFactory_jm_getInstance_0()
    this%f_TWO = jtemp4%jm_getAt_1(2)
    jtemp5 => BooleanFactory_jm_getInstance_0()
    this%f_FALSE = jtemp5%f_FALSE
    this%f_gameNotificationEventHandler => GameNotificationEventHandler_jm_getInstance_0()
  end function

  recursive function TextNotificationUtil_jm_getInstance_0() result(jresult)
    class(TextNotificationUtil), pointer :: jresult
        jresult => TextNotificationUtil_jstatic_instance()
        return
  end function

  recursive subroutine TextNotificationUtil_jm_fireError_1(this, j_message)
    class(TextNotificationUtil), target :: this
    character(len=*), intent(in) :: j_message
    class(PrimaryPlayerQueueFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => PrimaryPlayerQueueFactory_jm_getInstance_0()
        jdiscardBoolean = jtemp1%jm_add_1(ErrorSound_jm_getInstance_0())
        call this%jm_fire_1(j_message)
  end subroutine

  recursive subroutine TextNotificationUtil_jm_fireNew_1(this, j_message)
    class(TextNotificationUtil), target :: this
    character(len=*), intent(in) :: j_message
    class(PrimaryPlayerQueueFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => PrimaryPlayerQueueFactory_jm_getInstance_0()
        jdiscardBoolean = jtemp2%jm_add_1(SelectSound_jm_getInstance_0())
        call this%jm_fire_1(j_message)
  end subroutine

  recursive subroutine TextNotificationUtil_jm_fireSuccess_1(this, j_message)
    class(TextNotificationUtil), target :: this
    character(len=*), intent(in) :: j_message
    class(PrimaryPlayerQueueFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => PrimaryPlayerQueueFactory_jm_getInstance_0()
        jdiscardBoolean = jtemp3%jm_add_1(SelectSound_jm_getInstance_0())
        call this%jm_fire_1(j_message)
  end subroutine

  recursive subroutine TextNotificationUtil_jm_fire_1(this, j_message)
    class(TextNotificationUtil), target :: this
    character(len=*), intent(in) :: j_message
    class(GameNotificationEvent), pointer :: j_gameNotificationEvent
    class(BasicColorFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => BasicColorFactory_jm_getInstance_0()
        j_gameNotificationEvent => GameNotificationEvent_jnew_5(this, j_message, this%f_TWO, jtemp6%f_RED, this%f_FALSE)
        call this%f_gameNotificationEventHandler%jm_fireEvent_1(j_gameNotificationEvent)
  end subroutine
end module TextNotificationUtil_m

