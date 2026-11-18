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
! package org.allbinary.graphics.form.item.validation
module NumberTextFieldItemValidator_m
  use JR_m
  use ABTextFieldItem_m
  use ValidatorBase_m
  use BooleanFactory_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Integer_m
  use Boolean_m
  implicit none

  type, extends(ValidatorBase) :: NumberTextFieldItemValidator
    class(ABTextFieldItem), pointer :: f_textFieldItem => null()
    integer(4) :: f_min = 0
    integer(4) :: f_max = 0
    integer(4) :: f_maxChars = 0
  contains
    procedure :: jm_isNumberValid_1 => NumberTextFieldItemValidator_jm_isNumberValid_1
    procedure :: jm_toNumberVector_1 => NumberTextFieldItemValidator_jm_toNumberVector_1
    procedure :: jm_isValid_0 => NumberTextFieldItemValidator_jm_isValid_0
    procedure :: jm_toList_0 => NumberTextFieldItemValidator_jm_toList_0
  end type


contains

  function NumberTextFieldItemValidator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberTextFieldItemValidator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberTextFieldItemValidator)
      jresult => object
    end select
  end function

  recursive function NumberTextFieldItemValidator_jnew_4(j_textFieldItem, j_maxChars, j_min, j_max) result(this)
    class(ABTextFieldItem), target, optional :: j_textFieldItem
    integer(4), value :: j_maxChars
    integer(4), value :: j_min
    integer(4), value :: j_max
    class(NumberTextFieldItemValidator), pointer :: this
    allocate(this)
    this%jclass = 'NumberTextFieldItemValidator'
    
    
    
    
        this%f_textFieldItem => j_textFieldItem
        this%f_min = j_min
        this%f_max = j_max
        this%f_maxChars = j_maxChars
  end function

  recursive function NumberTextFieldItemValidator_jm_isNumberValid_1(this, j_value) result(jresult)
    class(NumberTextFieldItemValidator), target :: this
    integer(4), value :: j_value
    logical :: jresult
    class(BooleanFactory), pointer :: jtemp1
        jtemp1 => BooleanFactory_jm_getInstance_0()
        jresult = jtemp1%f_TRUE
        return
  end function

  recursive function NumberTextFieldItemValidator_jm_toNumberVector_1(this, j_value) result(jresult)
    class(NumberTextFieldItemValidator), target :: this
    integer(4), value :: j_value
    class(BasicArrayList), pointer :: jresult
        jresult => BasicArrayListD_jnew_0()
        return
  end function

  recursive function NumberTextFieldItemValidator_jm_isValid_0(this) result(jresult)
    class(NumberTextFieldItemValidator), target :: this
    logical :: jresult
    logical :: j_result
    character(len=:), allocatable :: j_string
    integer(4) :: j_textLength
    class(BooleanFactory), pointer :: jtemp2
    class(BooleanFactory), pointer :: jtemp3
    class(BooleanFactory), pointer :: jtemp4
    class(BooleanFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => BooleanFactory_jm_getInstance_0()
        j_result = jtemp2%f_TRUE
        j_string = this%f_textFieldItem%jm_getString_0()
        j_textLength = len(j_string)
        if (((j_textLength > 0) .and. (j_textLength < this%f_maxChars))) then
            continue ! try
                jdiscardInt = Integer_jm_parseInt_1(this%f_textFieldItem%jm_getString_0())
        else
            if ((j_textLength < 1)) then
                jtemp4 => BooleanFactory_jm_getInstance_0()
                j_result = jtemp4%f_FALSE
            else if ((j_textLength > this%f_maxChars)) then
                jtemp3 => BooleanFactory_jm_getInstance_0()
                j_result = jtemp3%f_FALSE
            end if
        end if
        jresult = j_result
        return
  end function

  recursive function NumberTextFieldItemValidator_jm_toList_0(this) result(jresult)
    class(NumberTextFieldItemValidator), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    character(len=:), allocatable :: j_string
    integer(4) :: j_textLength
    character(len=:), allocatable :: j_label
    character(len=:), allocatable :: j_name
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_number
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => BasicArrayListD_jnew_0()
        j_string = this%f_textFieldItem%jm_getString_0()
        j_textLength = len(j_string)
        j_label = this%f_textFieldItem%jm_getLabel_0()
        j_name = JR_substring(j_label, 0, (len(j_label) - 2))
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        j_stringMaker => StringMaker_jnew_0()
        if (((j_textLength > 0) .and. (j_textLength < this%f_maxChars))) then
            continue ! try
                j_number = j_smallIntegerSingletonFactory%jm_createInstance_1(Integer_jm_parseInt_1(this%f_textFieldItem%jm_getString_0()))
                if ((int(j_number, 4) > this%f_min)) then
                    jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                    jtemp13 => j_stringMaker%jm_append_1(j_name)
                    jtemp12 => jtemp13%jm_append_1(' is to small')
                    jdiscardBoolean = j_list%jm_add_1(JR_boxString(jtemp12%jm_toString_0()))
                else if ((int(j_number, 4) > this%f_max)) then
                    jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                    jtemp11 => j_stringMaker%jm_append_1(j_name)
                    jtemp10 => jtemp11%jm_append_1(' is to large')
                    jdiscardBoolean = j_list%jm_add_1(JR_boxString(jtemp10%jm_toString_0()))
                end if
        else
            if ((j_textLength < 1)) then
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                jtemp9 => j_stringMaker%jm_append_1(j_name)
                jtemp8 => jtemp9%jm_append_1(' is to short')
                jdiscardBoolean = j_list%jm_add_1(JR_boxString(jtemp8%jm_toString_0()))
            else if ((j_textLength > this%f_maxChars)) then
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                jtemp7 => j_stringMaker%jm_append_1(j_name)
                jtemp6 => jtemp7%jm_append_1(' is to long')
                jdiscardBoolean = j_list%jm_add_1(JR_boxString(jtemp6%jm_toString_0()))
            end if
        end if
        jresult => j_list
        return
  end function
end module NumberTextFieldItemValidator_m

