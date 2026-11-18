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
! package org.allbinary.game.input.mapping
module GameInputMapping_m
  use JR_m
  use GameKey_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: GameInputMapping
    character(len=:), allocatable :: f_name
    class(GameKey), pointer :: f_gameKey => null()
  contains
    procedure :: jm_setGameKey_1 => GameInputMapping_jm_setGameKey_1
    procedure :: jm_getGameKey_0 => GameInputMapping_jm_getGameKey_0
    procedure :: jm_setName_1 => GameInputMapping_jm_setName_1
    procedure :: jm_getName_0 => GameInputMapping_jm_getName_0
  end type


contains

  function GameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputMapping)
      jresult => object
    end select
  end function

  recursive function GameInputMapping_jnew_2(j_name, j_gameKey) result(this)
    character(len=*), intent(in) :: j_name
    class(GameKey), target, optional :: j_gameKey
    class(GameInputMapping), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameInputMapping'
    this%f_name = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
    this%f_gameKey => GameKey_jstatic_NULL_GAME_KEY()
        call this%jm_setName_1(j_name)
        call this%jm_setGameKey_1(j_gameKey)
  end function

  recursive subroutine GameInputMapping_jm_setGameKey_1(this, j_gameKey)
    class(GameInputMapping), target :: this
    class(GameKey), target, optional :: j_gameKey
        this%f_gameKey => j_gameKey
  end subroutine

  recursive function GameInputMapping_jm_getGameKey_0(this) result(jresult)
    class(GameInputMapping), target :: this
    class(GameKey), pointer :: jresult
        jresult => this%f_gameKey
        return
  end function

  recursive subroutine GameInputMapping_jm_setName_1(this, j_name)
    class(GameInputMapping), target :: this
    character(len=*), intent(in) :: j_name
        this%f_name = j_name
  end subroutine

  recursive function GameInputMapping_jm_getName_0(this) result(jresult)
    class(GameInputMapping), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module GameInputMapping_m

