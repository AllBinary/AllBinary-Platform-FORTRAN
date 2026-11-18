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
module NormalJ2MEGameInputMapping_m
  use JR_m
  use InputToGameKeyMapping_m
  use J2MEGameInputMapping_m
  use NormalJ2MEDefaultGameInputMapping_m
  implicit none

  type, extends(J2MEGameInputMapping) :: NormalJ2MEGameInputMapping
  contains
    procedure :: jm_getDefault_0 => NormalJ2MEGameInputMapping_jm_getDefault_0
  end type


contains

  function NormalJ2MEGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NormalJ2MEGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NormalJ2MEGameInputMapping)
      jresult => object
    end select
  end function

  function NormalJ2MEGameInputMapping_jnew_0() result(this)
    class(NormalJ2MEGameInputMapping), pointer :: this
    allocate(this)
    this%jclass = 'NormalJ2MEGameInputMapping'
  end function

  recursive function NormalJ2MEGameInputMapping_jm_getDefault_0(this) result(jresult)
    class(NormalJ2MEGameInputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
    class(NormalJ2MEDefaultGameInputMapping), pointer :: jtemp1
        jtemp1 => NormalJ2MEDefaultGameInputMapping_jnew_0()
        jresult => jtemp1%jm_getInputMapping_0()
        return
  end function
end module NormalJ2MEGameInputMapping_m

function NormalJ2MEGameInputMapping_jnew_0_jext() result(this)
  use NormalJ2MEGameInputMapping_m, only: JObject, NormalJ2MEGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NormalJ2MEGameInputMapping_jnew_0()
end function

