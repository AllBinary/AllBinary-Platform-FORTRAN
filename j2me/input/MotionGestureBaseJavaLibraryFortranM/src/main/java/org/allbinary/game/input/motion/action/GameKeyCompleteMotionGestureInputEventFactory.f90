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
! package org.allbinary.game.input.motion.action
module GameKeyCompleteMotionGestureInputEventFactory_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use CommonLabels_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use GameKeyCompleteMotionGestureInputEvent_m
  implicit none

  type, extends(JObject) :: GameKeyCompleteMotionGestureInputEventFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_eventList => null()
  contains
    procedure :: jm_add_1 => GameKeyCompleteMotionGestureInputEventFactory_jm_add_1
    procedure :: jm_updateAll_0 => GameKeyCompleteMotionGestureInputEventFactory_jm_updateAll_0
  end type

  class(GameKeyCompleteMotionGestureInputEventFactory), pointer, save :: GameKeyCompleteMotionGestureInputEventFactory_jcell_SINGLETON => null()
  logical, save :: GameKeyCompleteMotionGestureInputEventFactory_jset_SINGLETON = .false.

contains

  function GameKeyCompleteMotionGestureInputEventFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyCompleteMotionGestureInputEventFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyCompleteMotionGestureInputEventFactory)
      jresult => object
    end select
  end function

  function GameKeyCompleteMotionGestureInputEventFactory_jstatic_SINGLETON() result(jresult)
    class(GameKeyCompleteMotionGestureInputEventFactory), pointer :: jresult
    if (.not. GameKeyCompleteMotionGestureInputEventFactory_jset_SINGLETON) then
      GameKeyCompleteMotionGestureInputEventFactory_jset_SINGLETON = .true.
      GameKeyCompleteMotionGestureInputEventFactory_jcell_SINGLETON => GameKeyCompleteMotionGestureInputEventFactory_jnew_0()
    end if
    jresult => GameKeyCompleteMotionGestureInputEventFactory_jcell_SINGLETON
  end function

  subroutine GameKeyCompleteMotionGestureInputEventFactory_jsetstatic_SINGLETON(jvalue)
    class(GameKeyCompleteMotionGestureInputEventFactory), target, optional :: jvalue
    GameKeyCompleteMotionGestureInputEventFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      GameKeyCompleteMotionGestureInputEventFactory_jcell_SINGLETON => jvalue
    else
      GameKeyCompleteMotionGestureInputEventFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function GameKeyCompleteMotionGestureInputEventFactory_jnew_0() result(this)
    class(GameKeyCompleteMotionGestureInputEventFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameKeyCompleteMotionGestureInputEventFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_eventList => BasicArrayListD_jnew_0()
  end function

  recursive function GameKeyCompleteMotionGestureInputEventFactory_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEventFactory), pointer :: jresult
        jresult => GameKeyCompleteMotionGestureInputEventFactory_jstatic_SINGLETON()
        return
  end function

  recursive subroutine GameKeyCompleteMotionGestureInputEventFactory_jm_add_1(this, j_gameKeyCompleteMotionGestureInputEvent)
    class(GameKeyCompleteMotionGestureInputEventFactory), target :: this
    class(GameKeyCompleteMotionGestureInputEvent), target, optional :: j_gameKeyCompleteMotionGestureInputEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_eventList%jm_add_1(j_gameKeyCompleteMotionGestureInputEvent)
  end subroutine

  recursive subroutine GameKeyCompleteMotionGestureInputEventFactory_jm_updateAll_0(this)
    class(GameKeyCompleteMotionGestureInputEventFactory), target :: this
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: j_gameKeyCompleteMotionGestureInputEvent
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(CommonLabels), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => CommonLabels_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(jtemp4%f_START_LABEL)
        jtemp1 => jtemp2%jm_appendint_1(this%f_eventList%jm_size_0())
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, 'updateAll')
        j_index = (this%f_eventList%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_gameKeyCompleteMotionGestureInputEvent => GameKeyCompleteMotionGestureInputEvent_jcast(this%f_eventList%f_objectArray((j_index) + 1)%v)
            call j_gameKeyCompleteMotionGestureInputEvent%jm_update_0()
            j_index = j_index - 1
        end do
  end subroutine
end module GameKeyCompleteMotionGestureInputEventFactory_m

