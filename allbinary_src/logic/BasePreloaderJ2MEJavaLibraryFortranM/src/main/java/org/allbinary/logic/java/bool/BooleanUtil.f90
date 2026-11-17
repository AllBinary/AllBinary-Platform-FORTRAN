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
! package org.allbinary.logic.java.bool
module BooleanUtil_m
  use JR_m
  use TsUtil_m
  use StringMaker_m
  use StringValidationUtil_m
  use BooleanFactory_m
  implicit none

  type, extends(JObject) :: BooleanUtil
    class(TsUtil), pointer :: f_tsUtil => null()
  contains
    procedure :: jm_getFromString_1 => BooleanUtil_jm_getFromString_1
    procedure :: jm_isStringBoolean_1 => BooleanUtil_jm_isStringBoolean_1
    procedure :: jm_toStringFromBooleanArray_1 => BooleanUtil_jm_toStringFromBooleanArray_1
  end type

  class(BooleanUtil), pointer, save :: BooleanUtil_jcell_instance => null()
  logical, save :: BooleanUtil_jset_instance = .false.

contains

  function BooleanUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BooleanUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BooleanUtil)
      jresult => object
    end select
  end function

  function BooleanUtil_jstatic_instance() result(jresult)
    class(BooleanUtil), pointer :: jresult
    if (.not. BooleanUtil_jset_instance) then
      BooleanUtil_jset_instance = .true.
      BooleanUtil_jcell_instance => BooleanUtil_jnew_0()
    end if
    jresult => BooleanUtil_jcell_instance
  end function

  recursive function BooleanUtil_jnew_0() result(this)
    class(BooleanUtil), pointer :: this
    allocate(this)
    this%jclass = 'BooleanUtil'
    this%f_tsUtil => TsUtil_jm_getInstance_0()
        continue
  end function

  recursive function BooleanUtil_jm_getInstance_0() result(jresult)
    class(BooleanUtil), pointer :: jresult
        jresult => BooleanUtil_jstatic_instance()
        return
  end function

  recursive function BooleanUtil_jm_getFromString_1(this, j_booleanString) result(jresult)
    class(BooleanUtil), target :: this
    character(len=*), intent(in) :: j_booleanString
    logical :: jresult
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    class(BooleanFactory), pointer :: j_booleanFactory
    character(len=:), allocatable :: j_booleanStringLowerCase
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        j_booleanFactory => BooleanFactory_jm_getInstance_0()
        if (j_stringValidationUtil%jm_isEmpty_1(j_booleanString)) then
            jresult = .false.
            return
        end if
        j_booleanStringLowerCase = JR_toLowerCase(j_booleanString)
        if ((this%f_tsUtil%jm_compareTo_2(j_booleanStringLowerCase, j_booleanFactory%f_TRUE_STRING) == 0)) then
            jresult = .true.
            return
        else if ((this%f_tsUtil%jm_compareTo_2(j_booleanStringLowerCase, j_booleanFactory%f_FALSE_STRING) == 0)) then
            jresult = .false.
            return
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function

  recursive function BooleanUtil_jm_isStringBoolean_1(this, j_booleanString) result(jresult)
    class(BooleanUtil), target :: this
    character(len=*), intent(in) :: j_booleanString
    logical :: jresult
    class(BooleanFactory), pointer :: j_booleanFactory
    character(len=:), allocatable :: j_booleanStringLowerCase
        j_booleanFactory => BooleanFactory_jm_getInstance_0()
        j_booleanStringLowerCase = JR_toLowerCase(j_booleanString)
        if (((JR_compareTo(j_booleanStringLowerCase, j_booleanFactory%f_TRUE_STRING) == 0) .or. (JR_compareTo(j_booleanStringLowerCase, j_booleanFactory%f_FALSE_STRING) == 0))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function BooleanUtil_jm_toStringFromBooleanArray_1(this, j_booleanArray) result(jresult)
    class(BooleanUtil), target :: this
    logical :: j_booleanArray(:)
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        j_size = size(j_booleanArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            jdiscardRef => j_stringMaker%jm_appendboolean_1(j_booleanArray((j_index) + 1))
            j_index = j_index + 1
        end do
        jresult = j_stringMaker%jm_toString_0()
        return
  end function
end module BooleanUtil_m

