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
! package org.allbinary.game.physics
module FrictionProperties_m
  use JR_m
  use FrictionData_m
  use DragVelocityBehavior_m
  use VelocityProperties_m
  implicit none

  type, extends(JObject) :: FrictionProperties
  contains
    procedure :: jm_friction_2 => FrictionProperties_jm_friction_2
  end type


contains

  function FrictionProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FrictionProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FrictionProperties)
      jresult => object
    end select
  end function

  recursive function FrictionProperties_jnew_0() result(this)
    class(FrictionProperties), pointer :: this
    allocate(this)
    this%jclass = 'FrictionProperties'
        continue
  end function

  recursive subroutine FrictionProperties_jm_friction_2(this, j_velocityProperties, j_nominator)
    class(FrictionProperties), target :: this
    class(VelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_nominator
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref1 => DragVelocityBehavior_jstatic_instance())
        call jstaticref1%jm_reduce_3(j_velocityProperties, j_nominator, FrictionData_jm_getFrictionDenominator_0())
        end associate
  end subroutine
end module FrictionProperties_m

