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
! package org.allbinary.canvas
module GameGlobalsFactory_m
  use JR_m
  use GPoint_m
  use PointFactory_m
  use Integer_m
  implicit none

  type, extends(JObject) :: GameGlobalsFactory
    logical :: f_newCanvas = .false.
    integer(8) :: f_newDisplaybleTime = 0_8
    class(GPoint), pointer :: f_point => null()
  end type

  class(GameGlobalsFactory), pointer, save :: GameGlobalsFactory_jcell_instance => null()
  logical, save :: GameGlobalsFactory_jset_instance = .false.

contains

  function GameGlobalsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameGlobalsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameGlobalsFactory)
      jresult => object
    end select
  end function

  function GameGlobalsFactory_jstatic_instance() result(jresult)
    class(GameGlobalsFactory), pointer :: jresult
    if (.not. GameGlobalsFactory_jset_instance) then
      GameGlobalsFactory_jset_instance = .true.
      GameGlobalsFactory_jcell_instance => GameGlobalsFactory_jnew_0()
    end if
    jresult => GameGlobalsFactory_jcell_instance
  end function

  subroutine GameGlobalsFactory_jsetstatic_instance(jvalue)
    class(GameGlobalsFactory), target, optional :: jvalue
    GameGlobalsFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameGlobalsFactory_jcell_instance => jvalue
    else
      GameGlobalsFactory_jcell_instance => null()
    end if
  end subroutine

  function GameGlobalsFactory_jnew_0() result(this)
    class(GameGlobalsFactory), pointer :: this
    class(PointFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GameGlobalsFactory'
    this%f_newCanvas = .true.
    this%f_newDisplaybleTime = int(Integer_jstatic_MIN_VALUE(), 8)
    jtemp1 => PointFactory_jm_getInstance_0()
    this%f_point => jtemp1%f_ZERO_ZERO
  end function

  recursive function GameGlobalsFactory_jm_getInstance_0() result(jresult)
    class(GameGlobalsFactory), pointer :: jresult
        jresult => GameGlobalsFactory_jstatic_instance()
        return
  end function
end module GameGlobalsFactory_m

