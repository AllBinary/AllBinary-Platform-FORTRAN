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
! package org.allbinary.game.displayable
module GameLevelDisplayChangeEventListenersFactory_m
  use JR_m
  use DisplayChangeEventHandler_m
  use DisplayChangeEventListener_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: GameLevelDisplayChangeEventListenersFactory
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_add_1 => GameLevelDisplayChangeEventListenersFactory_jm_add_1
    procedure :: jm_clear_0 => GameLevelDisplayChangeEventListenersFactory_jm_clear_0
  end type

  class(GameLevelDisplayChangeEventListenersFactory), pointer, save :: GameLevelDisplayChangeEventListenersFactory_jcell_instance => null()
  logical, save :: GameLevelDisplayChangeEventListenersFactory_jset_instance = .false.

contains

  function GameLevelDisplayChangeEventListenersFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameLevelDisplayChangeEventListenersFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameLevelDisplayChangeEventListenersFactory)
      jresult => object
    end select
  end function

  function GameLevelDisplayChangeEventListenersFactory_jstatic_instance() result(jresult)
    class(GameLevelDisplayChangeEventListenersFactory), pointer :: jresult
    if (.not. GameLevelDisplayChangeEventListenersFactory_jset_instance) then
      GameLevelDisplayChangeEventListenersFactory_jset_instance = .true.
      GameLevelDisplayChangeEventListenersFactory_jcell_instance => GameLevelDisplayChangeEventListenersFactory_jnew_0()
    end if
    jresult => GameLevelDisplayChangeEventListenersFactory_jcell_instance
  end function

  subroutine GameLevelDisplayChangeEventListenersFactory_jsetstatic_instance(jvalue)
    class(GameLevelDisplayChangeEventListenersFactory), target, optional :: jvalue
    GameLevelDisplayChangeEventListenersFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameLevelDisplayChangeEventListenersFactory_jcell_instance => jvalue
    else
      GameLevelDisplayChangeEventListenersFactory_jcell_instance => null()
    end if
  end subroutine

  function GameLevelDisplayChangeEventListenersFactory_jnew_0() result(this)
    class(GameLevelDisplayChangeEventListenersFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameLevelDisplayChangeEventListenersFactory'
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive function GameLevelDisplayChangeEventListenersFactory_jm_getInstance_0() result(jresult)
    class(GameLevelDisplayChangeEventListenersFactory), pointer :: jresult
        jresult => GameLevelDisplayChangeEventListenersFactory_jstatic_instance()
        return
  end function

  recursive subroutine GameLevelDisplayChangeEventListenersFactory_jm_add_1(this, j_displayChangeEventListener)
    class(GameLevelDisplayChangeEventListenersFactory), target :: this
    class(DisplayChangeEventListener), target, optional :: j_displayChangeEventListener
    class(DisplayChangeEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_displayChangeEventListener)
        jtemp1 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListenerInterface_1(j_displayChangeEventListener)
  end subroutine

  recursive subroutine GameLevelDisplayChangeEventListenersFactory_jm_clear_0(this)
    class(GameLevelDisplayChangeEventListenersFactory), target :: this
    class(BasicEventHandler), pointer :: j_displayChangeEventHandler
    class(DisplayChangeEventListener), pointer :: j_displayChangeEventListener
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_displayChangeEventHandler => DisplayChangeEventHandler_jm_getInstance_0()
        continue
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = this%f_list%jm_size_0()
        do while ((jtemp2 >= 0))
            j_displayChangeEventListener => DisplayChangeEventListener_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
            call j_displayChangeEventHandler%jm_removeListener_1(j_displayChangeEventListener)
        end do
        call this%f_list%jm_clear_0()
  end subroutine
end module GameLevelDisplayChangeEventListenersFactory_m

