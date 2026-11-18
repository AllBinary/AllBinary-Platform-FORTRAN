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
! package org.allbinary.game.physics.velocity
module DragVelocityBehavior_m
  use JR_m
  use BasicDecimal_m
  use VelocityBehaviorBase_m
  use BasicVelocityProperties_m
  implicit none

  type, extends(VelocityBehaviorBase) :: DragVelocityBehavior
  contains
    procedure :: jm_reduce_3 => DragVelocityBehavior_jm_reduce_3
    procedure :: jm_reduceX_3 => DragVelocityBehavior_jm_reduceX_3
    procedure :: jm_reduceY_3 => DragVelocityBehavior_jm_reduceY_3
  end type

  class(DragVelocityBehavior), pointer, save :: DragVelocityBehavior_jcell_instance => null()
  logical, save :: DragVelocityBehavior_jset_instance = .false.

contains

  function DragVelocityBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DragVelocityBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DragVelocityBehavior)
      jresult => object
    end select
  end function

  function DragVelocityBehavior_jstatic_instance() result(jresult)
    class(DragVelocityBehavior), pointer :: jresult
    if (.not. DragVelocityBehavior_jset_instance) then
      DragVelocityBehavior_jset_instance = .true.
      DragVelocityBehavior_jcell_instance => DragVelocityBehavior_jnew_0()
    end if
    jresult => DragVelocityBehavior_jcell_instance
  end function

  subroutine DragVelocityBehavior_jsetstatic_instance(jvalue)
    class(DragVelocityBehavior), target, optional :: jvalue
    DragVelocityBehavior_jset_instance = .true.
    if (present(jvalue)) then
      DragVelocityBehavior_jcell_instance => jvalue
    else
      DragVelocityBehavior_jcell_instance => null()
    end if
  end subroutine

  function DragVelocityBehavior_jnew_0() result(this)
    class(DragVelocityBehavior), pointer :: this
    allocate(this)
    this%jclass = 'DragVelocityBehavior'
  end function

  recursive subroutine DragVelocityBehavior_jm_reduce_3(this, j_velocityProperties, j_nominator, j_denominator)
    class(DragVelocityBehavior), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_nominator
    integer(4), value :: j_denominator
    class(BasicDecimal), pointer :: j_basicDecimal
    class(BasicDecimal), pointer :: jtemp1
    class(BasicDecimal), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
        if ((jtemp1%jm_getUnscaled_0() /= 0_8)) then
            j_basicDecimal => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
            call j_basicDecimal%jm_multiplyint_1(j_nominator)
            call j_basicDecimal%jm_divideint_1(j_denominator)
        end if
        jtemp2 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
        if ((jtemp2%jm_getUnscaled_0() /= 0_8)) then
            j_basicDecimal => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
            call j_basicDecimal%jm_multiplyint_1(j_nominator)
            call j_basicDecimal%jm_divideint_1(j_denominator)
        end if
  end subroutine

  recursive subroutine DragVelocityBehavior_jm_reduceX_3(this, j_velocityProperties, j_nominator, j_denominator)
    class(DragVelocityBehavior), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_nominator
    integer(4), value :: j_denominator
    class(BasicDecimal), pointer :: j_basicDecimal
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_basicDecimal => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
        if ((j_basicDecimal%jm_getUnscaled_0() /= 0_8)) then
            call j_basicDecimal%jm_multiplyint_1(j_nominator)
            call j_basicDecimal%jm_divideint_1(j_denominator)
        end if
  end subroutine

  recursive subroutine DragVelocityBehavior_jm_reduceY_3(this, j_velocityProperties, j_nominator, j_denominator)
    class(DragVelocityBehavior), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_nominator
    integer(4), value :: j_denominator
    class(BasicDecimal), pointer :: j_basicDecimal
    class(BasicDecimal), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
        if ((jtemp3%jm_getUnscaled_0() /= 0_8)) then
            j_basicDecimal => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
            call j_basicDecimal%jm_multiplyint_1(j_nominator)
            call j_basicDecimal%jm_divideint_1(j_denominator)
        end if
  end subroutine
end module DragVelocityBehavior_m

function DragVelocityBehavior_jnew_0_jext() result(this)
  use DragVelocityBehavior_m, only: JObject, DragVelocityBehavior_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DragVelocityBehavior_jnew_0()
end function

