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
! package org.allbinary.game.input
module InputProcessor_m
  use JR_m
  use GameInputStrings_m
  implicit none

  type, extends(JObject) :: InputProcessor
    class(GameInputStrings), pointer :: f_gameInputStrings => null()
  contains
    procedure :: jm_keyPressedByDevice_2 => InputProcessor_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_3 => InputProcessor_jm_keyReleasedByDevice_3
  end type


contains

  function InputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputProcessor)
      jresult => object
    end select
  end function

  function InputProcessor_jnew_0() result(this)
    class(InputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'InputProcessor'
    this%f_gameInputStrings => GameInputStrings_jm_getInstance_0()
  end function

  recursive subroutine InputProcessor_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(InputProcessor), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    continue
  end subroutine

  recursive subroutine InputProcessor_jm_keyReleasedByDevice_3(this, j_canvas, j_keyCode, j_deviceId)
    class(InputProcessor), target :: this
    class(Canvas), target, optional :: j_canvas
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    continue
  end subroutine
end module InputProcessor_m

