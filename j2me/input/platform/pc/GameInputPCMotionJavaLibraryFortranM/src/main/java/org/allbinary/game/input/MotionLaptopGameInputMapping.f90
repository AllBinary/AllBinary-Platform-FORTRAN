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
module MotionLaptopGameInputMapping_m
  use JR_m
  use InputToGameKeyMapping_m
  use PCGameInputMapping_m
  use MotionLaptopDefaultGameInputMapping_m
  implicit none

  type, extends(PCGameInputMapping) :: MotionLaptopGameInputMapping
  contains
    procedure :: jm_getDefault_0 => MotionLaptopGameInputMapping_jm_getDefault_0
  end type


contains

  function MotionLaptopGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionLaptopGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionLaptopGameInputMapping)
      jresult => object
    end select
  end function

  function MotionLaptopGameInputMapping_jnew_0() result(this)
    class(MotionLaptopGameInputMapping), pointer :: this
    allocate(this)
    this%jclass = 'MotionLaptopGameInputMapping'
  end function

  recursive function MotionLaptopGameInputMapping_jm_getDefault_0(this) result(jresult)
    class(MotionLaptopGameInputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
    class(MotionLaptopDefaultGameInputMapping), pointer :: jtemp1
        jtemp1 => MotionLaptopDefaultGameInputMapping_jnew_0()
        jresult => jtemp1%jm_getInputMapping_0()
        return
  end function
end module MotionLaptopGameInputMapping_m

function MotionLaptopGameInputMapping_jnew_0_jext() result(this)
  use MotionLaptopGameInputMapping_m, only: JObject, MotionLaptopGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => MotionLaptopGameInputMapping_jnew_0()
end function

