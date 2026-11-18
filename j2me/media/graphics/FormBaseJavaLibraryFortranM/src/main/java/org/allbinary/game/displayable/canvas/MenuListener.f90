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
module MenuListener_m
  use JR_m
  use GameKeyEventSourceInterface_m
  implicit none

  type, extends(GameKeyEventSourceInterface) :: MenuListener
  contains
    procedure :: jm_open_0 => MenuListener_jm_open_0
    procedure :: jm_close_0 => MenuListener_jm_close_0
  end type


contains

  function MenuListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MenuListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MenuListener)
      jresult => object
    end select
  end function

  function MenuListener_jnew_0() result(this)
    class(MenuListener), pointer :: this
    allocate(this)
    this%jclass = 'MenuListener'
  end function

  recursive subroutine MenuListener_jm_open_0(this)
    class(MenuListener), target :: this
    error stop 'AbstractMethodError: MenuListener.open'
  end subroutine

  recursive subroutine MenuListener_jm_close_0(this)
    class(MenuListener), target :: this
    error stop 'AbstractMethodError: MenuListener.close'
  end subroutine
end module MenuListener_m

