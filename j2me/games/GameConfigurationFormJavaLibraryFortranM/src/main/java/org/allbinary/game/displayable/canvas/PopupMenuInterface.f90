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
module PopupMenuInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: PopupMenuInterface
  contains
    procedure :: jm_popupMenu_0 => PopupMenuInterface_jm_popupMenu_0
    procedure :: jm_closeMenu_0 => PopupMenuInterface_jm_closeMenu_0
    procedure :: jm_toggleMenu_0 => PopupMenuInterface_jm_toggleMenu_0
  end type


contains

  function PopupMenuInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PopupMenuInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PopupMenuInterface)
      jresult => object
    end select
  end function

  function PopupMenuInterface_jnew_0() result(this)
    class(PopupMenuInterface), pointer :: this
    allocate(this)
    this%jclass = 'PopupMenuInterface'
  end function

  recursive subroutine PopupMenuInterface_jm_popupMenu_0(this)
    class(PopupMenuInterface), target :: this
    error stop 'AbstractMethodError: PopupMenuInterface.popupMenu'
  end subroutine

  recursive subroutine PopupMenuInterface_jm_closeMenu_0(this)
    class(PopupMenuInterface), target :: this
    error stop 'AbstractMethodError: PopupMenuInterface.closeMenu'
  end subroutine

  recursive subroutine PopupMenuInterface_jm_toggleMenu_0(this)
    class(PopupMenuInterface), target :: this
    error stop 'AbstractMethodError: PopupMenuInterface.toggleMenu'
  end subroutine
end module PopupMenuInterface_m

