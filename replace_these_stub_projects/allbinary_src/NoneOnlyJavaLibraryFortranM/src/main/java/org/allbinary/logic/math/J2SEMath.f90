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
! package org.allbinary.logic.math
module J2SEMath_m
  use JR_m
  implicit none

  type, extends(JObject) :: J2SEMath
  contains
    procedure :: jm_round_1 => J2SEMath_jm_round_1
    procedure :: jm_abs_1 => J2SEMath_jm_abs_1
    procedure :: jm_absdouble_1 => J2SEMath_jm_absdouble_1
  end type

  class(J2SEMath), pointer, save :: J2SEMath_jcell_instance => null()
  logical, save :: J2SEMath_jset_instance = .false.

contains

  function J2SEMath_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(J2SEMath), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (J2SEMath)
      jresult => object
    end select
  end function

  function J2SEMath_jstatic_instance() result(jresult)
    class(J2SEMath), pointer :: jresult
    if (.not. J2SEMath_jset_instance) then
      J2SEMath_jset_instance = .true.
      J2SEMath_jcell_instance => J2SEMath_jnew_0()
    end if
    jresult => J2SEMath_jcell_instance
  end function

  function J2SEMath_jnew_0() result(this)
    class(J2SEMath), pointer :: this
    allocate(this)
    this%jclass = 'J2SEMath'
  end function

  recursive function J2SEMath_jm_getInstance_0() result(jresult)
    class(J2SEMath), pointer :: jresult
        jresult => J2SEMath_jstatic_instance()
        return
  end function

  recursive function J2SEMath_jm_round_1(this, j_value) result(jresult)
    class(J2SEMath), target :: this
    real(4), value :: j_value
    integer(4) :: jresult
        jresult = JR_round(j_value)
        return
  end function

  recursive function J2SEMath_jm_abs_1(this, j_value) result(jresult)
    class(J2SEMath), target :: this
    real(4), value :: j_value
    real(4) :: jresult
        jresult = merge((-j_value), j_value, ((j_value < 0.0)))
        return
  end function

  recursive function J2SEMath_jm_absdouble_1(this, j_value) result(jresult)
    class(J2SEMath), target :: this
    real(8), value :: j_value
    real(8) :: jresult
        jresult = merge((-j_value), j_value, ((j_value < 0.0d0)))
        return
  end function
end module J2SEMath_m

