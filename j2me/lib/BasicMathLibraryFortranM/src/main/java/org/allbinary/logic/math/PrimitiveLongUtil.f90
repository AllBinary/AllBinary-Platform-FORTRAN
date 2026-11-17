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
module PrimitiveLongUtil_m
  use JR_m
  use NullUtil_m
  use LogUtil_m
  use CommonStrings_m
  use PrimitiveLongSingleton_m
  use MathUtil_m
  implicit none

  type, extends(JObject) :: PrimitiveLongUtil
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_powerOfTen = 0
    integer(4) :: f_maxValue = 0
    integer(4) :: f_maxDigits = 0
    integer(4), allocatable :: f_charArray(:)
    integer(4) :: f_currentTotalDigits = 0
    class(PrimitiveLongSingleton), pointer :: f_primitiveLongSingleton => null()
  contains
    procedure :: jm_getCharArray_1 => PrimitiveLongUtil_jm_getCharArray_1
    procedure :: jm_setCurrentTotalDigits_1 => PrimitiveLongUtil_jm_setCurrentTotalDigits_1
    procedure :: jm_getCurrentTotalDigits_0 => PrimitiveLongUtil_jm_getCurrentTotalDigits_0
    procedure :: jm_getMaxDigits_0 => PrimitiveLongUtil_jm_getMaxDigits_0
  end type


contains

  function PrimitiveLongUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PrimitiveLongUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PrimitiveLongUtil)
      jresult => object
    end select
  end function

  recursive function PrimitiveLongUtil_jnew_2(j_powerOfTen, j_unused) result(this)
    integer(4), value :: j_powerOfTen
    class(JObject), target, optional :: j_unused
    class(PrimitiveLongUtil), pointer :: this
    class(MathUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'PrimitiveLongUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
    
    
    
    this%f_primitiveLongSingleton => PrimitiveLongSingleton_jm_getInstance_0()
        jtemp2 => MathUtil_jm_getInstance_0()
        this%f_maxDigits = jtemp2%jm_getTotalDigits_1(j_powerOfTen)
        this%f_powerOfTen = j_powerOfTen
        this%f_maxValue = (((j_powerOfTen * 10)) - 1)
        this%f_charArray = JR_newIntArray(this%f_maxDigits)
  end function

  recursive function PrimitiveLongUtil_jm_createPowerOfTen_1(j_powerOfTen) result(jresult)
    integer(4), value :: j_powerOfTen
    class(PrimitiveLongUtil), pointer :: jresult
    class(PrimitiveLongUtil), pointer :: j_primitiveLongUtil
    class(LogUtil), pointer :: j_logUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => NullUtil_jm_getInstance_0()
        j_primitiveLongUtil => PrimitiveLongUtil_jnew_2(j_powerOfTen, jtemp1%f_NULL_OBJECT)
        if ((mod(j_powerOfTen, 10) /= 0)) then
            j_logUtil => LogUtil_jm_getInstance_0()
            j_commonStrings => CommonStrings_jm_getInstance_0()
            call j_logUtil%jm_put_4(j_commonStrings%f_EXCEPTION, j_primitiveLongUtil, j_commonStrings%f_CONSTRUCTOR, JR_newJObject('Exception'))
        end if
        jresult => j_primitiveLongUtil
        return
  end function

  recursive function PrimitiveLongUtil_jm_getCharArray_1(this, j_value) result(jresult)
    class(PrimitiveLongUtil), target :: this
    integer(4), value :: j_value
    integer(4), allocatable :: jresult(:)
    integer(4) :: j_index
    integer(4) :: j_div
    integer(4) :: j_lastValue
    integer(4) :: j_digit
    integer(4) :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_value < 10)) then
            call this%jm_setCurrentTotalDigits_1(1)
            jresult = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAYS((j_value) + 1, :)
            return
        end if
        if ((j_value > this%f_maxValue)) then
            call this%jm_setCurrentTotalDigits_1(3)
            jresult = this%f_primitiveLongSingleton%f_UNK
            return
        end if
        j_index = 0
        j_div = this%f_powerOfTen
        j_lastValue = 0
        do while ((j_div >= 1))
            j_digit = (((j_value - j_lastValue)) / j_div)
            if (((j_digit >= 0) .and. (j_digit < 10))) then
                if (((j_digit == 0) .and. (j_index == 0))) then
                    continue
                else
                    jtemp3 = j_index
                    j_index = j_index + 1
                    this%f_charArray((jtemp3) + 1) = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAY((j_digit) + 1)
                end if
                j_lastValue = (j_lastValue + (j_digit * j_div))
            end if
            j_div = (j_div / 10)
        end do
        call this%jm_setCurrentTotalDigits_1(j_index)
        jresult = this%f_charArray
        return
  end function

  recursive subroutine PrimitiveLongUtil_jm_setCurrentTotalDigits_1(this, j_currentTotalDigits)
    class(PrimitiveLongUtil), target :: this
    integer(4), value :: j_currentTotalDigits
        this%f_currentTotalDigits = j_currentTotalDigits
  end subroutine

  recursive function PrimitiveLongUtil_jm_getCurrentTotalDigits_0(this) result(jresult)
    class(PrimitiveLongUtil), target :: this
    integer(4) :: jresult
        jresult = this%f_currentTotalDigits
        return
  end function

  recursive function PrimitiveLongUtil_jm_getMaxDigits_0(this) result(jresult)
    class(PrimitiveLongUtil), target :: this
    integer(4) :: jresult
        jresult = this%f_maxDigits
        return
  end function
end module PrimitiveLongUtil_m

