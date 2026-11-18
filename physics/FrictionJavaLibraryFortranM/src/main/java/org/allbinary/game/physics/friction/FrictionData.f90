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
! package org.allbinary.game.physics.friction
module FrictionData_m
  use JR_m
  implicit none

  type, extends(JObject) :: FrictionData
  end type

  integer(4), save :: FrictionData_jcell_FRICTION_DENOMINATOR
  logical, save :: FrictionData_jset_FRICTION_DENOMINATOR = .false.

contains

  function FrictionData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FrictionData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FrictionData)
      jresult => object
    end select
  end function

  function FrictionData_jstatic_FRICTION_DENOMINATOR() result(jresult)
    integer(4) :: jresult
    if (.not. FrictionData_jset_FRICTION_DENOMINATOR) then
      FrictionData_jset_FRICTION_DENOMINATOR = .true.
      FrictionData_jcell_FRICTION_DENOMINATOR = 100
    end if
    jresult = FrictionData_jcell_FRICTION_DENOMINATOR
  end function

  subroutine FrictionData_jsetstatic_FRICTION_DENOMINATOR(jvalue)
    integer(4), value :: jvalue
    FrictionData_jset_FRICTION_DENOMINATOR = .true.
    FrictionData_jcell_FRICTION_DENOMINATOR = jvalue
  end subroutine

  recursive function FrictionData_jnew_0() result(this)
    class(FrictionData), pointer :: this
    allocate(this)
    this%jclass = 'FrictionData'
        continue
  end function

  recursive function FrictionData_jm_getFrictionDenominator_0() result(jresult)
    integer(4) :: jresult
        jresult = FrictionData_jstatic_FRICTION_DENOMINATOR()
        return
  end function
end module FrictionData_m

