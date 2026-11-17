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
module SmallLongFactory_m
  use JR_m
  use Long_m
  implicit none

  type, extends(JObject) :: SmallLongFactory
    integer(4) :: f_NEGATIVE_MAX = 0
    integer(4) :: f_POSITIVE_MAX = 0
    integer(8), allocatable :: f_INTEGER_ARRAY(:)
    type(JString), allocatable :: f_STRING_ARRAY(:)
    integer(4) :: f_MIN = 0
    integer(4) :: f_lastMin = 0
    integer(4) :: f_lastNegativeMin = 0
  contains
    procedure :: jm_initWithRange_2 => SmallLongFactory_jm_initWithRange_2
    procedure :: jm_init_0 => SmallLongFactory_jm_init_0
    procedure :: jm_getInstanceNoThrow_1 => SmallLongFactory_jm_getInstanceNoThrow_1
    procedure :: jm_getString_1 => SmallLongFactory_jm_getString_1
  end type

  class(SmallLongFactory), pointer, save :: SmallLongFactory_jcell_instance => null()
  logical, save :: SmallLongFactory_jset_instance = .false.

contains

  function SmallLongFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SmallLongFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SmallLongFactory)
      jresult => object
    end select
  end function

  function SmallLongFactory_jstatic_instance() result(jresult)
    class(SmallLongFactory), pointer :: jresult
    if (.not. SmallLongFactory_jset_instance) then
      SmallLongFactory_jset_instance = .true.
      SmallLongFactory_jcell_instance => SmallLongFactory_jnew_0()
    end if
    jresult => SmallLongFactory_jcell_instance
  end function

  recursive function SmallLongFactory_jnew_0() result(this)
    class(SmallLongFactory), pointer :: this
    allocate(this)
    this%jclass = 'SmallLongFactory'
    this%f_NEGATIVE_MAX = 500
    this%f_POSITIVE_MAX = int(z'2D1', 4)
    this%f_INTEGER_ARRAY = JR_newLongArray((this%f_NEGATIVE_MAX + this%f_POSITIVE_MAX))
    this%f_STRING_ARRAY = JR_newStringArray((this%f_NEGATIVE_MAX + this%f_POSITIVE_MAX))
    this%f_MIN = 0
    this%f_lastMin = 0
    this%f_lastNegativeMin = 0
        continue
  end function

  recursive function SmallLongFactory_jm_getInstance_0() result(jresult)
    class(SmallLongFactory), pointer :: jresult
        jresult => SmallLongFactory_jstatic_instance()
        return
  end function

  recursive subroutine SmallLongFactory_jm_initWithRange_2(this, j_value, j_negativeValue)
    class(SmallLongFactory), target :: this
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

  recursive subroutine SmallLongFactory_jm_init_0(this)
    class(SmallLongFactory), target :: this
    integer(4) :: j_index
        if (.false.) then
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
                this%f_lastNegativeMin = this%f_NEGATIVE_MAX
            end if
        end if
  end subroutine

  recursive function SmallLongFactory_jm_getInstanceNoThrow_1(this, j_index) result(jresult)
    class(SmallLongFactory), target :: this
    integer(8), value :: j_index
    integer(8) :: jresult
        if (((j_index + int(this%f_NEGATIVE_MAX, 8)) > int((size(this%f_INTEGER_ARRAY, 1) - 1), 8))) then
            jresult = this%f_INTEGER_ARRAY((((-1) + this%f_NEGATIVE_MAX)) + 1)
            return
        end if
        jresult = this%f_INTEGER_ARRAY((((JR_l2i(j_index)) + this%f_NEGATIVE_MAX)) + 1)
        return
  end function

  recursive function SmallLongFactory_jm_getString_1(this, j_index) result(jresult)
    class(SmallLongFactory), target :: this
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
end module SmallLongFactory_m

