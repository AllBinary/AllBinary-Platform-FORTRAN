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
! package org.allbinary.game.displayable.canvas
module DemoCanvasBasicStartInputProcessor_m
  use JR_m
  use NullCanvas_m
  use RunnableCanvas_m
  use GameCommandsFactory_m
  use GameInputStrings_m
  use GameKeyEvent_m
  use StringMaker_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicMenuInputProcessor_m
  implicit none

  type, extends(BasicMenuInputProcessor) :: DemoCanvasBasicStartInputProcessor
  contains
    procedure :: jm_processInputList_0 => DemoCanvasBasicStartInputProcessor_jm_processInputList_0
  end type


contains

  function DemoCanvasBasicStartInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoCanvasBasicStartInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoCanvasBasicStartInputProcessor)
      jresult => object
    end select
  end function

  recursive function DemoCanvasBasicStartInputProcessor_jnew_2(j_gameKeyEventList, j_gameCanvas) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    class(RunnableCanvas), target, optional :: j_gameCanvas
    class(DemoCanvasBasicStartInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'DemoCanvasBasicStartInputProcessor'
        continue ! super()
  end function

  recursive function DemoCanvasBasicStartInputProcessor_jm_processInputList_0(this) result(jresult)
    class(DemoCanvasBasicStartInputProcessor), target :: this
    integer(4) :: jresult
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(GameInputStrings), pointer :: jtemp5
    class(CommandListener), pointer :: jtemp6
    class(MyCanvas), pointer :: jtemp7
    class(GameCommandsFactory), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%jm_getGameKeyEventList_0()
        j_size = j_list%jm_size_0()
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_gameKeyEvent => GameKeyEvent_jcast(j_list%f_objectArray((j_index) + 1)%v)
            jtemp4 => StringUtil_jm_getInstance_0()
            jtemp3 => StringMaker_jnew_0()
            jtemp2 => jtemp3%jm_append_1('Start GameKey: ')
            jtemp1 => jtemp2%jm_append_1(jtemp4%jm_toString_1(j_gameKeyEvent))
            jtemp5 => GameInputStrings_jm_getInstance_0()
            call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, jtemp5%f_PROCESS_INPUT)
            j_index = j_index + 1
        end do
        jtemp8 => GameCommandsFactory_jm_getInstance_0()
        jtemp7 => this%jm_getCanvas_0()
        jtemp6 => jtemp7%jm_getCustomCommandListener_0()
        call jtemp6%jm_commandAction_2(jtemp8%f_START_COMMAND, NullCanvas_jstatic_NULL_CANVAS())
        jresult = j_size
        return
  end function
end module DemoCanvasBasicStartInputProcessor_m

