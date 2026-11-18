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
! package org.allbinary.bounds.event
module BoundsChangeEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use BoundsChangeEventListener_m
  use BoundsChangeEvent_m
  implicit none

  type, extends(BasicEventHandler) :: BoundsChangeEventHandler
  contains
    procedure :: jm_process_2 => BoundsChangeEventHandler_jm_process_2
  end type

  class(BasicEventHandler), pointer, save :: BoundsChangeEventHandler_jcell_SINGLETON => null()
  logical, save :: BoundsChangeEventHandler_jset_SINGLETON = .false.

contains

  function BoundsChangeEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BoundsChangeEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BoundsChangeEventHandler)
      jresult => object
    end select
  end function

  function BoundsChangeEventHandler_jstatic_SINGLETON() result(jresult)
    class(BasicEventHandler), pointer :: jresult
    if (.not. BoundsChangeEventHandler_jset_SINGLETON) then
      BoundsChangeEventHandler_jset_SINGLETON = .true.
      BoundsChangeEventHandler_jcell_SINGLETON => BoundsChangeEventHandler_jnew_0()
    end if
    jresult => BoundsChangeEventHandler_jcell_SINGLETON
  end function

  subroutine BoundsChangeEventHandler_jsetstatic_SINGLETON(jvalue)
    class(BasicEventHandler), target, optional :: jvalue
    BoundsChangeEventHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      BoundsChangeEventHandler_jcell_SINGLETON => jvalue
    else
      BoundsChangeEventHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function BoundsChangeEventHandler_jnew_0() result(this)
    class(BoundsChangeEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'BoundsChangeEventHandler'
        continue
  end function

  recursive function BoundsChangeEventHandler_jm_getInstance_0() result(jresult)
    class(BasicEventHandler), pointer :: jresult
        jresult => BoundsChangeEventHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine BoundsChangeEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(BoundsChangeEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(BoundsChangeEventListener), pointer :: j_boundsChangeEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_boundsChangeEventListener => BoundsChangeEventListener_jcast(j_eventListenerInterface)
        call j_boundsChangeEventListener%jm_onBoundsChangeEvent_1(BoundsChangeEvent_jcast(j_eventObject))
  end subroutine
end module BoundsChangeEventHandler_m

function BoundsChangeEventHandler_jnew_0_jext() result(this)
  use BoundsChangeEventHandler_m, only: JObject, BoundsChangeEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BoundsChangeEventHandler_jnew_0()
end function

