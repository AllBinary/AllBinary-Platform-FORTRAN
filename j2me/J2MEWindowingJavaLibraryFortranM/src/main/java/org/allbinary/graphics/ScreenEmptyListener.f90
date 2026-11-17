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
module ScreenEmptyListener_m
  use JR_m
  use ScreenListenerInterface_m
  implicit none

  type, extends(ScreenListenerInterface) :: ScreenEmptyListener
  contains
    procedure :: jm_onFullScreen_1 => ScreenEmptyListener_jm_onFullScreen_1
    procedure :: jm_onFullScreenDisplay_0 => ScreenEmptyListener_jm_onFullScreenDisplay_0
  end type


contains

  function ScreenEmptyListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenEmptyListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenEmptyListener)
      jresult => object
    end select
  end function

  function ScreenEmptyListener_jnew_0() result(this)
    class(ScreenEmptyListener), pointer :: this
    allocate(this)
    this%jclass = 'ScreenEmptyListener'
  end function

  recursive subroutine ScreenEmptyListener_jm_onFullScreen_1(this, j_isFullScreen)
    class(ScreenEmptyListener), target :: this
    logical, value :: j_isFullScreen
    continue
  end subroutine

  recursive subroutine ScreenEmptyListener_jm_onFullScreenDisplay_0(this)
    class(ScreenEmptyListener), target :: this
    continue
  end subroutine
end module ScreenEmptyListener_m

