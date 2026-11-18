! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.game.input
module KeyInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: KeyInterface
  contains
    procedure :: jm_keyPressed_1 => KeyInterface_jm_keyPressed_1
    procedure :: jm_keyReleased_1 => KeyInterface_jm_keyReleased_1
    procedure :: jm_keyPressedByDevice_2 => KeyInterface_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_2 => KeyInterface_jm_keyReleasedByDevice_2
  end type


contains

  function KeyInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeyInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeyInterface)
      jresult => object
    end select
  end function

  function KeyInterface_jnew_0() result(this)
    class(KeyInterface), pointer :: this
    allocate(this)
    this%jclass = 'KeyInterface'
  end function

  recursive subroutine KeyInterface_jm_keyPressed_1(this, j_keyCode)
    class(KeyInterface), target :: this
    integer(4), value :: j_keyCode
    error stop 'AbstractMethodError: KeyInterface.keyPressed'
  end subroutine

  recursive subroutine KeyInterface_jm_keyReleased_1(this, j_keyCode)
    class(KeyInterface), target :: this
    integer(4), value :: j_keyCode
    error stop 'AbstractMethodError: KeyInterface.keyReleased'
  end subroutine

  recursive subroutine KeyInterface_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(KeyInterface), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    error stop 'AbstractMethodError: KeyInterface.keyPressedByDevice'
  end subroutine

  recursive subroutine KeyInterface_jm_keyReleasedByDevice_2(this, j_keyCode, j_deviceId)
    class(KeyInterface), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    error stop 'AbstractMethodError: KeyInterface.keyReleasedByDevice'
  end subroutine
end module KeyInterface_m

