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
! package org.allbinary.game
module GameMode_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: GameMode
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_setName_1 => GameMode_jm_setName_1
    procedure :: jm_getName_0 => GameMode_jm_getName_0
    procedure :: jm_toString_0 => GameMode_jm_toString_0
  end type

  class(GameMode), pointer, save :: GameMode_jcell_NONE => null()
  logical, save :: GameMode_jset_NONE = .false.
  class(GameMode), pointer, save :: GameMode_jcell_SERVER => null()
  logical, save :: GameMode_jset_SERVER = .false.
  class(GameMode), pointer, save :: GameMode_jcell_CLIENT => null()
  logical, save :: GameMode_jset_CLIENT = .false.

contains

  function GameMode_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameMode), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameMode)
      jresult => object
    end select
  end function

  function GameMode_jstatic_NONE() result(jresult)
    class(GameMode), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. GameMode_jset_NONE) then
      GameMode_jset_NONE = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    GameMode_jcell_NONE => GameMode_jnew_1(jtemp1%f_NULL_STRING)
    end if
    jresult => GameMode_jcell_NONE
  end function

  subroutine GameMode_jsetstatic_NONE(jvalue)
    class(GameMode), target, optional :: jvalue
    GameMode_jset_NONE = .true.
    if (present(jvalue)) then
      GameMode_jcell_NONE => jvalue
    else
      GameMode_jcell_NONE => null()
    end if
  end subroutine

  function GameMode_jstatic_SERVER() result(jresult)
    class(GameMode), pointer :: jresult
    if (.not. GameMode_jset_SERVER) then
      GameMode_jset_SERVER = .true.
      GameMode_jcell_SERVER => GameMode_jnew_1('Server')
    end if
    jresult => GameMode_jcell_SERVER
  end function

  subroutine GameMode_jsetstatic_SERVER(jvalue)
    class(GameMode), target, optional :: jvalue
    GameMode_jset_SERVER = .true.
    if (present(jvalue)) then
      GameMode_jcell_SERVER => jvalue
    else
      GameMode_jcell_SERVER => null()
    end if
  end subroutine

  function GameMode_jstatic_CLIENT() result(jresult)
    class(GameMode), pointer :: jresult
    if (.not. GameMode_jset_CLIENT) then
      GameMode_jset_CLIENT = .true.
      GameMode_jcell_CLIENT => GameMode_jnew_1('Client')
    end if
    jresult => GameMode_jcell_CLIENT
  end function

  subroutine GameMode_jsetstatic_CLIENT(jvalue)
    class(GameMode), target, optional :: jvalue
    GameMode_jset_CLIENT = .true.
    if (present(jvalue)) then
      GameMode_jcell_CLIENT => jvalue
    else
      GameMode_jcell_CLIENT => null()
    end if
  end subroutine

  recursive function GameMode_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(GameMode), pointer :: this
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameMode'
    this%f_name = ''
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp2%f_EMPTY_STRING
        call this%jm_setName_1(j_name)
  end function

  recursive subroutine GameMode_jm_setName_1(this, j_name)
    class(GameMode), target :: this
    character(len=*), intent(in) :: j_name
        this%f_name = j_name
  end subroutine

  recursive function GameMode_jm_getName_0(this) result(jresult)
    class(GameMode), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function GameMode_jm_toString_0(this) result(jresult)
    class(GameMode), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%jm_getName_0()
        return
  end function
end module GameMode_m

