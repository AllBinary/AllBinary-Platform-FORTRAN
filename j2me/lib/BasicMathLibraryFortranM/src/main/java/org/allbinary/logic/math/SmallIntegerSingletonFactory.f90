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
module SmallIntegerSingletonFactory_m
  use JR_m
  use AndroidUtil_m
  use J2MEUtil_m
  use LogUtil_m
  use StringMaker_m
  use Integer_m
  implicit none

  type, extends(JObject) :: SmallIntegerSingletonFactory
    integer(4) :: f_NEGATIVE_MAX = 0
    integer(4) :: f_POSITIVE_MAX = 0
    integer(4), allocatable :: f_INTEGER_ARRAY(:)
    type(JString), allocatable :: f_STRING_ARRAY(:)
    integer(4) :: f_MIN = 0
    integer(4) :: f_lastMin = 0
    integer(4) :: f_lastNegativeMin = 0
  contains
    procedure :: jm_getMin_0 => SmallIntegerSingletonFactory_jm_getMin_0
    procedure :: jm_getMinAllowed_0 => SmallIntegerSingletonFactory_jm_getMinAllowed_0
    procedure :: jm_initWithRange_2 => SmallIntegerSingletonFactory_jm_initWithRange_2
    procedure :: jm_init_0 => SmallIntegerSingletonFactory_jm_init_0
    procedure :: jm_getAt_1 => SmallIntegerSingletonFactory_jm_getAt_1
    procedure :: jm_getAtNoThrow_1 => SmallIntegerSingletonFactory_jm_getAtNoThrow_1
    procedure :: jm_createInstance_1 => SmallIntegerSingletonFactory_jm_createInstance_1
    procedure :: jm_getString_1 => SmallIntegerSingletonFactory_jm_getString_1
  end type

  class(SmallIntegerSingletonFactory), pointer, save :: SmallIntegerSingletonFactory_jcell_instance => null()
  logical, save :: SmallIntegerSingletonFactory_jset_instance = .false.

contains

  function SmallIntegerSingletonFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SmallIntegerSingletonFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SmallIntegerSingletonFactory)
      jresult => object
    end select
  end function

  function SmallIntegerSingletonFactory_jstatic_instance() result(jresult)
    class(SmallIntegerSingletonFactory), pointer :: jresult
    if (.not. SmallIntegerSingletonFactory_jset_instance) then
      SmallIntegerSingletonFactory_jset_instance = .true.
      SmallIntegerSingletonFactory_jcell_instance => SmallIntegerSingletonFactory_jnew_0()
    end if
    jresult => SmallIntegerSingletonFactory_jcell_instance
  end function

  subroutine SmallIntegerSingletonFactory_jsetstatic_instance(jvalue)
    class(SmallIntegerSingletonFactory), target, optional :: jvalue
    SmallIntegerSingletonFactory_jset_instance = .true.
    if (present(jvalue)) then
      SmallIntegerSingletonFactory_jcell_instance => jvalue
    else
      SmallIntegerSingletonFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function SmallIntegerSingletonFactory_jnew_0() result(this)
    class(SmallIntegerSingletonFactory), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'SmallIntegerSingletonFactory'
    this%f_NEGATIVE_MAX = 500
    this%f_POSITIVE_MAX = int(z'2D1', 4)
    this%f_INTEGER_ARRAY = JR_newIntArray((this%f_NEGATIVE_MAX + this%f_POSITIVE_MAX))
    this%f_STRING_ARRAY = JR_newStringArray((this%f_NEGATIVE_MAX + this%f_POSITIVE_MAX))
    this%f_MIN = 0
    this%f_lastMin = 0
    this%f_lastNegativeMin = 0
        call this%jm_initWithRange_2(23, 0)
  end function

  recursive function SmallIntegerSingletonFactory_jm_getInstance_0() result(jresult)
    class(SmallIntegerSingletonFactory), pointer :: jresult
        jresult => SmallIntegerSingletonFactory_jstatic_instance()
        return
  end function

  recursive function SmallIntegerSingletonFactory_jm_getMin_0(this) result(jresult)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4) :: jresult
    integer(4) :: j_minAllowed
    class(LogUtil), pointer :: j_logUtil
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
        j_minAllowed = this%jm_getMinAllowed_0()
        if ((this%f_MIN <= j_minAllowed)) then
            if (J2MEUtil_jm_isJ2ME_0()) then
                continue
            else if (AndroidUtil_jm_isAndroid_0()) then
                j_logUtil => LogUtil_jm_getInstance_0()
                jtemp6 => StringMaker_jnew_0()
                jtemp5 => jtemp6%jm_append_1('Android InputFactory was initialized before GameMidlet: ')
                jtemp4 => jtemp5%jm_appendint_1(this%f_MIN)
                call j_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, 'getMin')
                call this%jm_initWithRange_2(int(z'291', 4), 6)
            else
                j_logUtil => LogUtil_jm_getInstance_0()
                jtemp3 => StringMaker_jnew_0()
                jtemp2 => jtemp3%jm_append_1('InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ')
                jtemp1 => jtemp2%jm_appendint_1(this%f_MIN)
                call j_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, 'getMin')
                call this%jm_initWithRange_2(int(z'2D0', 4), 6)
            end if
        end if
        if ((this%f_MIN <= j_minAllowed)) then
            j_logUtil => LogUtil_jm_getInstance_0()
            call j_logUtil%jm_put_4('This means you loaded the InputFactory before determining the platform input size requirements.', this, 'getMin', JR_newJObject('Exception'))
        end if
        jresult = this%f_MIN
        return
  end function

  recursive function SmallIntegerSingletonFactory_jm_getMinAllowed_0(this) result(jresult)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4) :: jresult
        if (J2MEUtil_jm_isJ2ME_0()) then
            jresult = 0
            return
        else
            if (AndroidUtil_jm_isAndroid_0()) then
                jresult = int(z'101', 4)
                return
            else
                jresult = 23
                return
            end if
        end if
  end function

  recursive subroutine SmallIntegerSingletonFactory_jm_initWithRange_2(this, j_value, j_negativeValue)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4), value :: j_value
    integer(4), value :: j_negativeValue
    integer(4) :: j_index
        j_index = (j_value - 1)
        do while ((j_index >= this%f_lastMin))
            this%f_INTEGER_ARRAY(((j_index + this%f_NEGATIVE_MAX)) + 1) = j_index
            j_index = j_index - 1
        end do
        j_index = (j_negativeValue - 1)
        do while ((j_index >= this%f_lastNegativeMin))
            this%f_INTEGER_ARRAY((j_index) + 1) = (-j_index)
            j_index = j_index - 1
        end do
        if ((this%f_lastMin < j_value)) then
            this%f_lastMin = j_value
            this%f_MIN = j_value
        end if
        if ((this%f_lastNegativeMin < j_negativeValue)) then
            this%f_lastNegativeMin = j_negativeValue
        end if
  end subroutine

  recursive subroutine SmallIntegerSingletonFactory_jm_init_0(this)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4) :: j_index
        if (((this%f_lastMin < this%f_POSITIVE_MAX) .or. (this%f_lastNegativeMin < this%f_NEGATIVE_MAX))) then
            j_index = (this%f_POSITIVE_MAX - 1)
            do while ((j_index >= this%f_lastMin))
                this%f_INTEGER_ARRAY(((j_index + this%f_NEGATIVE_MAX)) + 1) = j_index
                j_index = j_index - 1
            end do
            j_index = (this%f_NEGATIVE_MAX - 1)
            do while ((j_index >= this%f_lastNegativeMin))
                this%f_INTEGER_ARRAY((j_index) + 1) = (-j_index)
                j_index = j_index - 1
            end do
            this%f_lastMin = this%f_POSITIVE_MAX
            this%f_MIN = this%f_lastMin
            this%f_lastNegativeMin = this%f_NEGATIVE_MAX
        end if
  end subroutine

  recursive function SmallIntegerSingletonFactory_jm_getAt_1(this, j_index) result(jresult)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4), value :: j_index
    integer(4) :: jresult
        jresult = this%f_INTEGER_ARRAY(((j_index + this%f_NEGATIVE_MAX)) + 1)
        return
  end function

  recursive function SmallIntegerSingletonFactory_jm_getAtNoThrow_1(this, j_index) result(jresult)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4), value :: j_index
    integer(4) :: jresult
        if (((j_index + this%f_NEGATIVE_MAX) > (size(this%f_INTEGER_ARRAY, 1) - 1))) then
            jresult = this%f_INTEGER_ARRAY((((-1) + this%f_NEGATIVE_MAX)) + 1)
            return
        end if
        jresult = this%f_INTEGER_ARRAY(((j_index + this%f_NEGATIVE_MAX)) + 1)
        return
  end function

  recursive function SmallIntegerSingletonFactory_jm_createInstance_1(this, j_index) result(jresult)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4), value :: j_index
    integer(4) :: jresult
    integer(4) :: j_integer
        j_integer = this%jm_getAt_1(j_index)
        if (.false.) then
            j_integer = j_index
        end if
        jresult = j_integer
        return
  end function

  recursive function SmallIntegerSingletonFactory_jm_getString_1(this, j_index) result(jresult)
    class(SmallIntegerSingletonFactory), target :: this
    integer(4), value :: j_index
    character(len=:), allocatable :: jresult
    integer(4) :: j_i
        j_i = (j_index + this%f_NEGATIVE_MAX)
        if ((.not. allocated(this%f_STRING_ARRAY((j_i) + 1)%v))) then
            this%f_STRING_ARRAY((j_i) + 1)%v = JR_toString(this%f_INTEGER_ARRAY((j_i) + 1))
        end if
        jresult = this%f_STRING_ARRAY((j_i) + 1)%v
        return
  end function
end module SmallIntegerSingletonFactory_m

