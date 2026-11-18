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
! package org.allbinary.game.combat.destroy.event
module DestroyedEventHandler_m
  use JR_m
  use CollidableDestroyableDamageableLayer_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use DestroyedEvent_m
  use DestroyedEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: DestroyedEventHandler
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => DestroyedEventHandler_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => DestroyedEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => DestroyedEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => DestroyedEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => DestroyedEventHandler_jm_process_2
  end type

  class(DestroyedEventHandler), pointer, save :: DestroyedEventHandler_jcell_instance => null()
  logical, save :: DestroyedEventHandler_jset_instance = .false.

contains

  function DestroyedEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyedEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyedEventHandler)
      jresult => object
    end select
  end function

  function DestroyedEventHandler_jstatic_instance() result(jresult)
    class(DestroyedEventHandler), pointer :: jresult
    if (.not. DestroyedEventHandler_jset_instance) then
      DestroyedEventHandler_jset_instance = .true.
      DestroyedEventHandler_jcell_instance => DestroyedEventHandler_jnew_0()
    end if
    jresult => DestroyedEventHandler_jcell_instance
  end function

  subroutine DestroyedEventHandler_jsetstatic_instance(jvalue)
    class(DestroyedEventHandler), target, optional :: jvalue
    DestroyedEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      DestroyedEventHandler_jcell_instance => jvalue
    else
      DestroyedEventHandler_jcell_instance => null()
    end if
  end subroutine

  recursive function DestroyedEventHandler_jnew_0() result(this)
    class(DestroyedEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'DestroyedEventHandler'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function DestroyedEventHandler_jm_getInstance_0() result(jresult)
    class(DestroyedEventHandler), pointer :: jresult
        jresult => DestroyedEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine DestroyedEventHandler_jm_addListener_1(this, j_collidableDestroyableDamageableLayer)
    class(DestroyedEventHandler), target :: this
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_collidableDestroyableDamageableLayer))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_collidableDestroyableDamageableLayer)
        end if
  end subroutine

  recursive subroutine DestroyedEventHandler_jm_removeAllListeners_0(this)
    class(DestroyedEventHandler), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
        call this%BasicEventHandler%jm_removeAllListeners_0()
  end subroutine

  recursive subroutine DestroyedEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(DestroyedEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_remove_1(j_eventListenerInterface)
        call this%BasicEventHandler%jm_removeListener_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine DestroyedEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(DestroyedEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    integer(4) :: j_index
    class(EventStrings), pointer :: jtemp1
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = this%f_list%jm_size_0()
        do while ((jtemp2 >= 0))
            continue ! try
                j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_collidableDestroyableDamageableLayer%jm_onDestroyed_1(DestroyedEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine DestroyedEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(DestroyedEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(DestroyedEventListenerInterface), pointer :: j_destroyedEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_destroyedEventListenerInterface => DestroyedEventListenerInterface_jcast(j_eventListenerInterface)
        call j_destroyedEventListenerInterface%jm_onDestroyed_1(DestroyedEvent_jcast(j_eventObject))
  end subroutine
end module DestroyedEventHandler_m

function DestroyedEventHandler_jnew_0_jext() result(this)
  use DestroyedEventHandler_m, only: JObject, DestroyedEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DestroyedEventHandler_jnew_0()
end function

