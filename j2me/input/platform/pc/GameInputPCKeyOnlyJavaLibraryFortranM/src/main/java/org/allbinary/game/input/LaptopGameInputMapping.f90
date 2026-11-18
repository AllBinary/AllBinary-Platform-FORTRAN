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
module LaptopGameInputMapping_m
  use JR_m
  use InputToGameKeyMapping_m
  use PCGameInputMapping_m
  use LaptopDefaultGameInputMapping_m
  implicit none

  type, extends(PCGameInputMapping) :: LaptopGameInputMapping
  contains
    procedure :: jm_getDefault_0 => LaptopGameInputMapping_jm_getDefault_0
  end type


contains

  function LaptopGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LaptopGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LaptopGameInputMapping)
      jresult => object
    end select
  end function

  function LaptopGameInputMapping_jnew_0() result(this)
    class(LaptopGameInputMapping), pointer :: this
    allocate(this)
    this%jclass = 'LaptopGameInputMapping'
  end function

  recursive function LaptopGameInputMapping_jm_getDefault_0(this) result(jresult)
    class(LaptopGameInputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
    class(LaptopDefaultGameInputMapping), pointer :: jtemp1
        jtemp1 => LaptopDefaultGameInputMapping_jnew_0()
        jresult => jtemp1%jm_getInputMapping_0()
        return
  end function
end module LaptopGameInputMapping_m

function LaptopGameInputMapping_jnew_0_jext() result(this)
  use LaptopGameInputMapping_m, only: JObject, LaptopGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LaptopGameInputMapping_jnew_0()
end function

