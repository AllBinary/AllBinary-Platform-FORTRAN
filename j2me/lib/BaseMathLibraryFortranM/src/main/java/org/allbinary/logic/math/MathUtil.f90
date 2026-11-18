! Generated Code Do Not Modify
! package org.allbinary.logic.math
module MathUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: MathUtil
    integer(4) :: f_ACCURACY = 0
  contains
    procedure :: jm_getTotalDigits_1 => MathUtil_jm_getTotalDigits_1
    procedure :: jm_sqrt_1 => MathUtil_jm_sqrt_1
    procedure :: jm_sqrtd_1 => MathUtil_jm_sqrtd_1
    procedure :: jm_abs_1 => MathUtil_jm_abs_1
    procedure :: jm_abslong_1 => MathUtil_jm_abslong_1
    procedure :: jm_min_2 => MathUtil_jm_min_2
    procedure :: jm_max_2 => MathUtil_jm_max_2
  end type

  class(MathUtil), pointer, save :: MathUtil_jcell_instance => null()
  logical, save :: MathUtil_jset_instance = .false.

contains

  function MathUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MathUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MathUtil)
      jresult => object
    end select
  end function

  function MathUtil_jstatic_instance() result(jresult)
    class(MathUtil), pointer :: jresult
    if (.not. MathUtil_jset_instance) then
      MathUtil_jset_instance = .true.
      MathUtil_jcell_instance => MathUtil_jnew_0()
    end if
    jresult => MathUtil_jcell_instance
  end function

  subroutine MathUtil_jsetstatic_instance(jvalue)
    class(MathUtil), target, optional :: jvalue
    MathUtil_jset_instance = .true.
    if (present(jvalue)) then
      MathUtil_jcell_instance => jvalue
    else
      MathUtil_jcell_instance => null()
    end if
  end subroutine

  function MathUtil_jnew_0() result(this)
    class(MathUtil), pointer :: this
    allocate(this)
    this%jclass = 'MathUtil'
    this%f_ACCURACY = 100
  end function

  recursive function MathUtil_jm_getInstance_0() result(jresult)
    class(MathUtil), pointer :: jresult
        jresult => MathUtil_jstatic_instance()
        return
  end function

  recursive function MathUtil_jm_getTotalDigits_1(this, j_digits) result(jresult)
    class(MathUtil), target :: this
    integer(4), value :: j_digits
    integer(4) :: jresult
    integer(4) :: j_total
        j_total = 0
        do while ((j_digits > 0))
            j_digits = (j_digits / 10)
            j_total = j_total + 1
        end do
        jresult = j_total
        return
  end function

  recursive function MathUtil_jm_sqrt_1(this, j_value) result(jresult)
    class(MathUtil), target :: this
    integer(4), value :: j_value
    integer(4) :: jresult
    integer(4) :: j_accumulated
    integer(4) :: j_result
        if ((j_value <= 1)) then
            jresult = j_value
            return
        end if
        j_accumulated = shifta(j_value, iand(1, 31))
        j_result = shifta(((j_accumulated + ((j_value / j_accumulated)))), iand(1, 31))
        do
            j_accumulated = j_result
            j_result = shifta(((j_accumulated + ((j_value / j_accumulated)))), iand(1, 31))
            if (.not. ((j_accumulated > j_result))) exit
        end do
        jresult = j_accumulated
        return
  end function

  recursive function MathUtil_jm_sqrtd_1(this, j_x) result(jresult)
    class(MathUtil), target :: this
    integer(4), value :: j_x
    real(8) :: jresult
    real(8) :: j_result
    integer(4) :: j_index
        if ((j_x == 0)) then
            jresult = real(0.0, 8)
            return
        end if
        if ((j_x < 0)) then
            jresult = real((-1.0), 8)
            return
        end if
        j_result = real(j_x, 8)
        j_index = 0
        do while ((j_index < this%f_ACCURACY))
            j_result = (((j_result + ((real(j_x, 8) / j_result)))) / 2.0d0)
            j_index = j_index + 1
        end do
        jresult = j_result
        return
  end function

  recursive function MathUtil_jm_abs_1(this, j_value) result(jresult)
    class(MathUtil), target :: this
    integer(4), value :: j_value
    integer(4) :: jresult
        jresult = merge((-j_value), j_value, ((j_value < 0)))
        return
  end function

  recursive function MathUtil_jm_abslong_1(this, j_value) result(jresult)
    class(MathUtil), target :: this
    integer(8), value :: j_value
    integer(8) :: jresult
        jresult = merge((-j_value), j_value, ((j_value < 0_8)))
        return
  end function

  recursive function MathUtil_jm_min_2(this, j_value, j_value2) result(jresult)
    class(MathUtil), target :: this
    integer(4), value :: j_value
    integer(4), value :: j_value2
    integer(4) :: jresult
        jresult = merge(j_value, j_value2, ((j_value <= j_value2)))
        return
  end function

  recursive function MathUtil_jm_max_2(this, j_value, j_value2) result(jresult)
    class(MathUtil), target :: this
    integer(4), value :: j_value
    integer(4), value :: j_value2
    integer(4) :: jresult
        jresult = merge(j_value, j_value2, ((j_value >= j_value2)))
        return
  end function
end module MathUtil_m

