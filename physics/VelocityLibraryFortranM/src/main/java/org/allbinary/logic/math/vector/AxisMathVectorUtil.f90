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
! package org.allbinary.logic.math.vector
module AxisMathVectorUtil_m
  use JR_m
  use NoDecimalTrigTable_m
  implicit none

  type, extends(JObject) :: AxisMathVectorUtil
    class(NoDecimalTrigTable), pointer :: f_noDecimalTrigTable => null()
  contains
    procedure :: jm_calculateX_2 => AxisMathVectorUtil_jm_calculateX_2
    procedure :: jm_calculateY_2 => AxisMathVectorUtil_jm_calculateY_2
    procedure :: jm_calculateZ_2 => AxisMathVectorUtil_jm_calculateZ_2
  end type

  class(AxisMathVectorUtil), pointer, save :: AxisMathVectorUtil_jcell_instance => null()
  logical, save :: AxisMathVectorUtil_jset_instance = .false.

contains

  function AxisMathVectorUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AxisMathVectorUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AxisMathVectorUtil)
      jresult => object
    end select
  end function

  function AxisMathVectorUtil_jstatic_instance() result(jresult)
    class(AxisMathVectorUtil), pointer :: jresult
    if (.not. AxisMathVectorUtil_jset_instance) then
      AxisMathVectorUtil_jset_instance = .true.
      AxisMathVectorUtil_jcell_instance => AxisMathVectorUtil_jnew_0()
    end if
    jresult => AxisMathVectorUtil_jcell_instance
  end function

  subroutine AxisMathVectorUtil_jsetstatic_instance(jvalue)
    class(AxisMathVectorUtil), target, optional :: jvalue
    AxisMathVectorUtil_jset_instance = .true.
    if (present(jvalue)) then
      AxisMathVectorUtil_jcell_instance => jvalue
    else
      AxisMathVectorUtil_jcell_instance => null()
    end if
  end subroutine

  function AxisMathVectorUtil_jnew_0() result(this)
    class(AxisMathVectorUtil), pointer :: this
    allocate(this)
    this%jclass = 'AxisMathVectorUtil'
    this%f_noDecimalTrigTable => NoDecimalTrigTable_jm_getInstance_0()
  end function

  recursive function AxisMathVectorUtil_jm_getInstance_0() result(jresult)
    class(AxisMathVectorUtil), pointer :: jresult
        jresult => AxisMathVectorUtil_jstatic_instance()
        return
  end function

  recursive function AxisMathVectorUtil_jm_calculateX_2(this, j_magnitude, j_angle) result(jresult)
    class(AxisMathVectorUtil), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_angle
    integer(8) :: jresult
        jresult = ((j_magnitude * this%f_noDecimalTrigTable%jm_cos_1(j_angle)) / 10_8)
        return
  end function

  recursive function AxisMathVectorUtil_jm_calculateY_2(this, j_magnitude, j_angle) result(jresult)
    class(AxisMathVectorUtil), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_angle
    integer(8) :: jresult
        jresult = ((j_magnitude * this%f_noDecimalTrigTable%jm_sin_1(j_angle)) / 10_8)
        return
  end function

  recursive function AxisMathVectorUtil_jm_calculateZ_2(this, j_magnitude, j_otherAngle) result(jresult)
    class(AxisMathVectorUtil), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_otherAngle
    integer(8) :: jresult
        jresult = ((j_magnitude * this%f_noDecimalTrigTable%jm_sin_1(j_otherAngle)) / 10_8)
        return
  end function
end module AxisMathVectorUtil_m

