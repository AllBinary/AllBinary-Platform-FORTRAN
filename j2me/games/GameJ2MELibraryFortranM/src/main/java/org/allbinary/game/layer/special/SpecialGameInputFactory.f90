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
! package org.allbinary.game.layer.special
module SpecialGameInputFactory_m
  use JR_m
  use SpecialGameInput_m
  implicit none

  type, extends(JObject) :: SpecialGameInputFactory
  end type

  class(SpecialGameInput), pointer, save :: SpecialGameInputFactory_jcell_NO_SPECIAL_GAME_INPUT => null()
  logical, save :: SpecialGameInputFactory_jset_NO_SPECIAL_GAME_INPUT = .false.

contains

  function SpecialGameInputFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialGameInputFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialGameInputFactory)
      jresult => object
    end select
  end function

  function SpecialGameInputFactory_jstatic_NO_SPECIAL_GAME_INPUT() result(jresult)
    class(SpecialGameInput), pointer :: jresult
    if (.not. SpecialGameInputFactory_jset_NO_SPECIAL_GAME_INPUT) then
      SpecialGameInputFactory_jset_NO_SPECIAL_GAME_INPUT = .true.
      SpecialGameInputFactory_jcell_NO_SPECIAL_GAME_INPUT => SpecialGameInput_jnew_0()
    end if
    jresult => SpecialGameInputFactory_jcell_NO_SPECIAL_GAME_INPUT
  end function

  subroutine SpecialGameInputFactory_jsetstatic_NO_SPECIAL_GAME_INPUT(jvalue)
    class(SpecialGameInput), target, optional :: jvalue
    SpecialGameInputFactory_jset_NO_SPECIAL_GAME_INPUT = .true.
    if (present(jvalue)) then
      SpecialGameInputFactory_jcell_NO_SPECIAL_GAME_INPUT => jvalue
    else
      SpecialGameInputFactory_jcell_NO_SPECIAL_GAME_INPUT => null()
    end if
  end subroutine

  function SpecialGameInputFactory_jnew_0() result(this)
    class(SpecialGameInputFactory), pointer :: this
    allocate(this)
    this%jclass = 'SpecialGameInputFactory'
  end function
end module SpecialGameInputFactory_m

