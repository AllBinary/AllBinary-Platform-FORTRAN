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
! package org.allbinary.logic.math
module BasicDecimal_m
  use JR_m
  use Long_m
  use ScaleFactorFactory_m
  implicit none

  type, extends(JObject) :: BasicDecimal
    integer(8) :: f_units = 0_8
    integer(4) :: f_scaled = 0
    integer(4) :: f_factor = 0
    integer(4) :: f_factorValue = 0
  contains
    procedure :: jm_setint_1 => BasicDecimal_jm_setint_1
    procedure :: jm_setlong_1 => BasicDecimal_jm_setlong_1
    procedure :: jm_set_1 => BasicDecimal_jm_set_1
    procedure :: jm_addint_1 => BasicDecimal_jm_addint_1
    procedure :: jm_addlong_1 => BasicDecimal_jm_addlong_1
    procedure :: jm_add_1 => BasicDecimal_jm_add_1
    procedure :: jm_subtractint_1 => BasicDecimal_jm_subtractint_1
    procedure :: jm_subtractlong_1 => BasicDecimal_jm_subtractlong_1
    procedure :: jm_subtract_1 => BasicDecimal_jm_subtract_1
    procedure :: jm_multiplyint_1 => BasicDecimal_jm_multiplyint_1
    procedure :: jm_multiplylong_1 => BasicDecimal_jm_multiplylong_1
    procedure :: jm_multiply_1 => BasicDecimal_jm_multiply_1
    procedure :: jm_divideint_1 => BasicDecimal_jm_divideint_1
    procedure :: jm_dividelong_1 => BasicDecimal_jm_dividelong_1
    procedure :: jm_divide_1 => BasicDecimal_jm_divide_1
    procedure :: jm_getUnscaled_0 => BasicDecimal_jm_getUnscaled_0
    procedure :: jm_updateScaled_0 => BasicDecimal_jm_updateScaled_0
    procedure :: jm_getScaled_0 => BasicDecimal_jm_getScaled_0
    procedure :: jm_toString_0 => BasicDecimal_jm_toString_0
    procedure :: jm_getScaledFactor_0 => BasicDecimal_jm_getScaledFactor_0
    procedure :: jm_getScaledFactorValue_0 => BasicDecimal_jm_getScaledFactorValue_0
  end type

  class(BasicDecimal), pointer, save :: BasicDecimal_jcell_ZERO_BIGDECIMAL => null()
  logical, save :: BasicDecimal_jset_ZERO_BIGDECIMAL = .false.

contains

  function BasicDecimal_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicDecimal), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicDecimal)
      jresult => object
    end select
  end function

  function BasicDecimal_jstatic_ZERO_BIGDECIMAL() result(jresult)
    class(BasicDecimal), pointer :: jresult
    if (.not. BasicDecimal_jset_ZERO_BIGDECIMAL) then
      BasicDecimal_jset_ZERO_BIGDECIMAL = .true.
      BasicDecimal_jcell_ZERO_BIGDECIMAL => BasicDecimal_jnew_1(int(0, 8))
    end if
    jresult => BasicDecimal_jcell_ZERO_BIGDECIMAL
  end function

  subroutine BasicDecimal_jsetstatic_ZERO_BIGDECIMAL(jvalue)
    class(BasicDecimal), target, optional :: jvalue
    BasicDecimal_jset_ZERO_BIGDECIMAL = .true.
    if (present(jvalue)) then
      BasicDecimal_jcell_ZERO_BIGDECIMAL => jvalue
    else
      BasicDecimal_jcell_ZERO_BIGDECIMAL => null()
    end if
  end subroutine

  recursive function BasicDecimal_jnew_1(j_units) result(this)
    integer(8), value :: j_units
    class(BasicDecimal), pointer :: this
    class(ScaleFactorFactory), pointer :: jtemp1
    class(ScaleFactorFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicDecimal'
    
    
    jtemp1 => ScaleFactorFactory_jm_getInstance_0()
    this%f_factor = jtemp1%f_DEFAULT_SCALE_FACTOR
    jtemp2 => ScaleFactorFactory_jm_getInstance_0()
    this%f_factorValue = jtemp2%f_DEFAULT_SCALE_VALUE
        this%f_units = j_units
        call this%jm_updateScaled_0()
  end function

  recursive function BasicDecimal_jm_createBigDecimal_1(j_bigDecimal) result(jresult)
    class(BasicDecimal), target, optional :: j_bigDecimal
    class(BasicDecimal), pointer :: jresult
        jresult => BasicDecimal_jnew_1(j_bigDecimal%jm_getUnscaled_0())
        return
  end function

  recursive subroutine BasicDecimal_jm_setint_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = int(j_value, 8)
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_setlong_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(8), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = j_value
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_set_1(this, j_bigDecimal)
    class(BasicDecimal), target :: this
    class(BasicDecimal), target, optional :: j_bigDecimal
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = j_bigDecimal%jm_getUnscaled_0()
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_addint_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units + int(j_value, 8))
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_addlong_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(8), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units + j_value)
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_add_1(this, j_bigDecimal)
    class(BasicDecimal), target :: this
    class(BasicDecimal), target, optional :: j_bigDecimal
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units + j_bigDecimal%jm_getUnscaled_0())
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_subtractint_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units - int(j_value, 8))
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_subtractlong_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(8), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units - j_value)
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_subtract_1(this, j_bigDecimal)
    class(BasicDecimal), target :: this
    class(BasicDecimal), target, optional :: j_bigDecimal
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units - j_bigDecimal%jm_getUnscaled_0())
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_multiplyint_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units * int(j_value, 8))
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_multiplylong_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(8), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units * j_value)
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_multiply_1(this, j_bigDecimal)
    class(BasicDecimal), target :: this
    class(BasicDecimal), target, optional :: j_bigDecimal
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units * j_bigDecimal%jm_getUnscaled_0())
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_divideint_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units / int(j_value, 8))
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_dividelong_1(this, j_value)
    class(BasicDecimal), target :: this
    integer(8), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units / j_value)
        call this%jm_updateScaled_0()
  end subroutine

  recursive subroutine BasicDecimal_jm_divide_1(this, j_bigDecimal)
    class(BasicDecimal), target :: this
    class(BasicDecimal), target, optional :: j_bigDecimal
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_units = (this%f_units / j_bigDecimal%jm_getUnscaled_0())
        call this%jm_updateScaled_0()
  end subroutine

  recursive function BasicDecimal_jm_getUnscaled_0(this) result(jresult)
    class(BasicDecimal), target :: this
    integer(8) :: jresult
        jresult = this%f_units
        return
  end function

  recursive subroutine BasicDecimal_jm_updateScaled_0(this)
    class(BasicDecimal), target :: this
        this%f_scaled = JR_l2i(((this%f_units / int(this%f_factorValue, 8))))
  end subroutine

  recursive function BasicDecimal_jm_getScaled_0(this) result(jresult)
    class(BasicDecimal), target :: this
    integer(4) :: jresult
        jresult = this%f_scaled
        return
  end function

  recursive function BasicDecimal_jm_toString_0(this) result(jresult)
    class(BasicDecimal), target :: this
    character(len=:), allocatable :: jresult
        jresult = JR_longString(this%f_units)
        return
  end function

  recursive function BasicDecimal_jm_getScaledFactor_0(this) result(jresult)
    class(BasicDecimal), target :: this
    integer(4) :: jresult
        jresult = this%f_factor
        return
  end function

  recursive function BasicDecimal_jm_getScaledFactorValue_0(this) result(jresult)
    class(BasicDecimal), target :: this
    integer(4) :: jresult
        jresult = this%f_factorValue
        return
  end function
end module BasicDecimal_m

