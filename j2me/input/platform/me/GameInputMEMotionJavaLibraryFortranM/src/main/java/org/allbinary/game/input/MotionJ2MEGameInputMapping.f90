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
module MotionJ2MEGameInputMapping_m
  use JR_m
  use InputToGameKeyMapping_m
  use J2MEGameInputMapping_m
  use MotionJ2MEDefaultGameInputMapping_m
  implicit none

  type, extends(J2MEGameInputMapping) :: MotionJ2MEGameInputMapping
  contains
    procedure :: jm_getDefault_0 => MotionJ2MEGameInputMapping_jm_getDefault_0
  end type


contains

  function MotionJ2MEGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionJ2MEGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionJ2MEGameInputMapping)
      jresult => object
    end select
  end function

  function MotionJ2MEGameInputMapping_jnew_0() result(this)
    class(MotionJ2MEGameInputMapping), pointer :: this
    allocate(this)
    this%jclass = 'MotionJ2MEGameInputMapping'
  end function

  recursive function MotionJ2MEGameInputMapping_jm_getDefault_0(this) result(jresult)
    class(MotionJ2MEGameInputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
    class(MotionJ2MEDefaultGameInputMapping), pointer :: jtemp1
        jtemp1 => MotionJ2MEDefaultGameInputMapping_jnew_0()
        jresult => jtemp1%jm_getInputMapping_0()
        return
  end function
end module MotionJ2MEGameInputMapping_m

function MotionJ2MEGameInputMapping_jnew_0_jext() result(this)
  use MotionJ2MEGameInputMapping_m, only: JObject, MotionJ2MEGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => MotionJ2MEGameInputMapping_jnew_0()
end function

