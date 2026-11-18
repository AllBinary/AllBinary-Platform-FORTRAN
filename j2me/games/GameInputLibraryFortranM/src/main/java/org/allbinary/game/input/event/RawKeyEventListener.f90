! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module RawKeyEventListener_m
  use JR_m
  implicit none

  type, extends(JObject) :: RawKeyEventListener
  contains
    procedure :: jm_onEventRaw_3 => RawKeyEventListener_jm_onEventRaw_3
  end type


contains

  function RawKeyEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RawKeyEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RawKeyEventListener)
      jresult => object
    end select
  end function

  function RawKeyEventListener_jnew_0() result(this)
    class(RawKeyEventListener), pointer :: this
    allocate(this)
    this%jclass = 'RawKeyEventListener'
  end function

  recursive subroutine RawKeyEventListener_jm_onEventRaw_3(this, j_keyCode, j_deviceId, j_repeated)
    class(RawKeyEventListener), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    error stop 'AbstractMethodError: RawKeyEventListener.onEventRaw'
  end subroutine
end module RawKeyEventListener_m

