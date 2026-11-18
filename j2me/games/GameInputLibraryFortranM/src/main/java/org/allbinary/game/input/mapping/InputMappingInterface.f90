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
module InputMappingInterface_m
  use JR_m
  use GameKey_m
  use Input_m
  implicit none

  type, extends(JObject) :: InputMappingInterface
  contains
    procedure :: jm_processInputMapping_2 => InputMappingInterface_jm_processInputMapping_2
  end type


contains

  function InputMappingInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputMappingInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputMappingInterface)
      jresult => object
    end select
  end function

  function InputMappingInterface_jnew_0() result(this)
    class(InputMappingInterface), pointer :: this
    allocate(this)
    this%jclass = 'InputMappingInterface'
  end function

  recursive subroutine InputMappingInterface_jm_processInputMapping_2(this, j_gameKey, j_input)
    class(InputMappingInterface), target :: this
    class(GameKey), target, optional :: j_gameKey
    class(Input), target, optional :: j_input
    error stop 'AbstractMethodError: InputMappingInterface.processInputMapping'
  end subroutine
end module InputMappingInterface_m

