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
module TextFieldItemValidator_m
  use JR_m
  use ABTextFieldItem_m
  use ValidatorBase_m
  use BooleanFactory_m
  use StringMaker_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Boolean_m
  implicit none

  type, extends(ValidatorBase) :: TextFieldItemValidator
    class(ABTextFieldItem), pointer :: f_textFieldItem => null()
    integer(4) :: f_min = 0
    integer(4) :: f_max = 0
    logical :: f_allowOnEmpty = .false.
  contains
    procedure :: jm_isValid_0 => TextFieldItemValidator_jm_isValid_0
    procedure :: jm_toList_0 => TextFieldItemValidator_jm_toList_0
  end type


contains

  function TextFieldItemValidator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextFieldItemValidator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextFieldItemValidator)
      jresult => object
    end select
  end function

  recursive function TextFieldItemValidator_jnew_4(j_textFieldItem, j_min, j_max, j_allowOnEmpty) result(this)
    class(ABTextFieldItem), target, optional :: j_textFieldItem
    integer(4), value :: j_min
    integer(4), value :: j_max
    logical, value :: j_allowOnEmpty
    class(TextFieldItemValidator), pointer :: this
    allocate(this)
    this%jclass = 'TextFieldItemValidator'
    
    
    
    
        this%f_textFieldItem => j_textFieldItem
        this%f_min = j_min
        this%f_max = j_max
        this%f_allowOnEmpty = j_allowOnEmpty
  end function

  recursive function TextFieldItemValidator_jm_isValid_0(this) result(jresult)
    class(TextFieldItemValidator), target :: this
    logical :: jresult
    class(BooleanFactory), pointer :: j_booleanFactory
    logical :: j_result
    character(len=:), allocatable :: j_string
    integer(4) :: j_textLength
        j_booleanFactory => BooleanFactory_jm_getInstance_0()
        j_result = j_booleanFactory%f_TRUE
        j_string = this%f_textFieldItem%jm_getString_0()
        j_textLength = len(j_string)
        if (((((j_textLength == 0) .and. this%f_allowOnEmpty)) .or. ((j_textLength > this%f_min) .and. (j_textLength < this%f_max)))) then
            continue
        else
            if ((j_textLength < this%f_min)) then
                j_result = j_booleanFactory%f_FALSE
            else if ((j_textLength > this%f_max)) then
                j_result = j_booleanFactory%f_FALSE
            end if
        end if
        jresult = j_result
        return
  end function

  recursive function TextFieldItemValidator_jm_toList_0(this) result(jresult)
    class(TextFieldItemValidator), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    character(len=:), allocatable :: j_string
    integer(4) :: j_textLength
    character(len=:), allocatable :: j_label
    character(len=:), allocatable :: j_name
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
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
        if (((j_textLength > this%f_min) .and. (j_textLength < this%f_max))) then
            continue
        else
            j_label = this%f_textFieldItem%jm_getLabel_0()
            j_name = JR_substring(j_label, 0, (len(j_label) - 2))
            if ((j_textLength < this%f_min)) then
                jtemp6 => StringMaker_jnew_0()
                jtemp5 => jtemp6%jm_append_1(j_name)
                jtemp4 => jtemp5%jm_append_1(' is to short')
                jdiscardBoolean = j_list%jm_add_1(JR_boxString(jtemp4%jm_toString_0()))
            else if ((j_textLength > this%f_max)) then
                jtemp3 => StringMaker_jnew_0()
                jtemp2 => jtemp3%jm_append_1(j_name)
                jtemp1 => jtemp2%jm_append_1(' is to long')
                jdiscardBoolean = j_list%jm_add_1(JR_boxString(jtemp1%jm_toString_0()))
            end if
        end if
        jresult => j_list
        return
  end function
end module TextFieldItemValidator_m

