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
! package org.allbinary.graphics
module ScreenListenerInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: ScreenListenerInterface
  contains
    procedure :: jm_onFullScreen_1 => ScreenListenerInterface_jm_onFullScreen_1
    procedure :: jm_onFullScreenDisplay_0 => ScreenListenerInterface_jm_onFullScreenDisplay_0
  end type


contains

  function ScreenListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenListenerInterface)
      jresult => object
    end select
  end function

  function ScreenListenerInterface_jnew_0() result(this)
    class(ScreenListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'ScreenListenerInterface'
  end function

  recursive subroutine ScreenListenerInterface_jm_onFullScreen_1(this, j_isFullScreen)
    class(ScreenListenerInterface), target :: this
    logical, value :: j_isFullScreen
    error stop 'AbstractMethodError: ScreenListenerInterface.onFullScreen'
  end subroutine

  recursive subroutine ScreenListenerInterface_jm_onFullScreenDisplay_0(this)
    class(ScreenListenerInterface), target :: this
    error stop 'AbstractMethodError: ScreenListenerInterface.onFullScreenDisplay'
  end subroutine
end module ScreenListenerInterface_m

