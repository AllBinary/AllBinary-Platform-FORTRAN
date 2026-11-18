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
! package org.allbinary.game.input.event
module GameKeyEventFactory_m
  use JR_m
  use GameKeyEventSourceInterface_m
  use Input_m
  use InputFactory_m
  use NullUtil_m
  use LogUtil_m
  use GameKeyEvent_m
  implicit none

  type, extends(JObject) :: GameKeyEventFactory
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_TOUCH_BUTTON_SOURCE_ID = 0
    integer(4) :: f_MOTION_GESTURE_SOURCE_ID = 0
    integer(4) :: f_MAX_SOURCES = 0
    type(JRef), allocatable :: f_ARRAY(:,:)
  contains
    procedure :: jm_init_0 => GameKeyEventFactory_jm_init_0
    procedure :: jm_getInstanceForKey_2 => GameKeyEventFactory_jm_getInstanceForKey_2
    procedure :: jm_getInstanceForInput_2 => GameKeyEventFactory_jm_getInstanceForInput_2
  end type

  class(JObject), pointer, save :: GameKeyEventFactory_jcell_instance => null()
  logical, save :: GameKeyEventFactory_jset_instance = .false.

contains

  function GameKeyEventFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyEventFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyEventFactory)
      jresult => object
    end select
  end function

  function GameKeyEventFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameKeyEventFactory_jset_instance) then
      GameKeyEventFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameKeyEventFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => GameKeyEventFactory_jcell_instance
  end function

  subroutine GameKeyEventFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    GameKeyEventFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameKeyEventFactory_jcell_instance => jvalue
    else
      GameKeyEventFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GameKeyEventFactory_jnew_0() result(this)
    class(GameKeyEventFactory), pointer :: this
    class(InputFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'GameKeyEventFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_TOUCH_BUTTON_SOURCE_ID = 2
    this%f_MOTION_GESTURE_SOURCE_ID = 3
    this%f_MAX_SOURCES = 4
    jtemp3 => InputFactory_jm_getInstance_0()
    this%f_ARRAY = JR_newRefArray2(this%f_MAX_SOURCES, jtemp3%f_MAX)
        continue
  end function

  recursive function GameKeyEventFactory_jm_getInstance_0() result(jresult)
    class(GameKeyEventFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GameKeyEventFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call GameKeyEventFactory_jsetstatic_instance(GameKeyEventFactory_jnew_0())
        end if
        jresult => GameKeyEventFactory_jcast(GameKeyEventFactory_jstatic_instance())
        return
  end function

  recursive subroutine GameKeyEventFactory_jm_init_0(this)
    class(GameKeyEventFactory), target :: this
    class(NullUtil), pointer :: j_nullUtil
    integer(4) :: j_size
    integer(4) :: j_index2
    integer(4) :: j_index
    class(InputFactory), pointer :: jtemp4
    integer(4) :: jtemp5
    integer(4) :: jtemp6
        j_nullUtil => NullUtil_jm_getInstance_0()
        jtemp4 => InputFactory_jm_getInstance_0()
        j_size = jtemp4%f_MAX
        j_index = j_index - 1
        jtemp6 = j_index
        j_index = this%f_MAX_SOURCES
        do while ((jtemp6 >= 0))
            j_index2 = j_index2 - 1
            jtemp5 = j_index2
            j_index2 = j_size
            do while ((jtemp5 >= 0))
                this%f_ARRAY((j_index) + 1, (j_index2) + 1)%v = GameKeyEvent_jm_createEvent_3(j_nullUtil%f_NULL_OBJECT, j_index, j_index2)
            end do
        end do
  end subroutine

  recursive function GameKeyEventFactory_jm_getInstanceForKey_2(this, j_anyType, j_key) result(jresult)
    class(GameKeyEventFactory), target :: this
    class(GameKeyEventSourceInterface), target, optional :: j_anyType
    integer(4), value :: j_key
    class(GameKeyEvent), pointer :: jresult
    class(GameKeyEvent), pointer :: j_gameKeyEvent
        j_gameKeyEvent => this%f_ARRAY((j_anyType%jm_getSourceId_0()) + 1, (j_key) + 1)%v
        jresult => j_gameKeyEvent
        return
  end function

  recursive function GameKeyEventFactory_jm_getInstanceForInput_2(this, j_anyType, j_input) result(jresult)
    class(GameKeyEventFactory), target :: this
    class(GameKeyEventSourceInterface), target, optional :: j_anyType
    class(Input), target, optional :: j_input
    class(GameKeyEvent), pointer :: jresult
    class(GameKeyEvent), pointer :: j_gameKeyEvent
        j_gameKeyEvent => this%f_ARRAY((j_anyType%jm_getSourceId_0()) + 1, (j_input%jm_getId_0()) + 1)%v
        jresult => j_gameKeyEvent
        return
  end function
end module GameKeyEventFactory_m

