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
module BooleanFactory_m
  use JR_m
  use Boolean_m
  implicit none

  type, extends(JObject) :: BooleanFactory
    logical :: f_TRUE = .false.
    logical :: f_FALSE = .false.
    character(len=:), allocatable :: f_TRUE_STRING
    character(len=:), allocatable :: f_FALSE_STRING
    character(len=:), allocatable :: f_YES
    character(len=:), allocatable :: f_NO
  contains
    procedure :: jm_toStringb_1 => BooleanFactory_jm_toStringb_1
  end type

  class(BooleanFactory), pointer, save :: BooleanFactory_jcell_instance => null()
  logical, save :: BooleanFactory_jset_instance = .false.

contains

  function BooleanFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BooleanFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BooleanFactory)
      jresult => object
    end select
  end function

  function BooleanFactory_jstatic_instance() result(jresult)
    class(BooleanFactory), pointer :: jresult
    if (.not. BooleanFactory_jset_instance) then
      BooleanFactory_jset_instance = .true.
      BooleanFactory_jcell_instance => BooleanFactory_jnew_0()
    end if
    jresult => BooleanFactory_jcell_instance
  end function

  subroutine BooleanFactory_jsetstatic_instance(jvalue)
    class(BooleanFactory), target, optional :: jvalue
    BooleanFactory_jset_instance = .true.
    if (present(jvalue)) then
      BooleanFactory_jcell_instance => jvalue
    else
      BooleanFactory_jcell_instance => null()
    end if
  end subroutine

  function BooleanFactory_jnew_0() result(this)
    class(BooleanFactory), pointer :: this
    allocate(this)
    this%jclass = 'BooleanFactory'
    this%f_TRUE_STRING = ''
    this%f_FALSE_STRING = ''
    this%f_YES = ''
    this%f_NO = ''
    this%f_TRUE = .true.
    this%f_FALSE = .false.
    this%f_TRUE_STRING = JR_toString(this%f_TRUE)
    this%f_FALSE_STRING = JR_toString(this%f_FALSE)
    this%f_YES = 'yes'
    this%f_NO = 'no'
  end function

  recursive function BooleanFactory_jm_getInstance_0() result(jresult)
    class(BooleanFactory), pointer :: jresult
        jresult => BooleanFactory_jstatic_instance()
        return
  end function

  recursive function BooleanFactory_jm_toStringb_1(this, j_bool) result(jresult)
    class(BooleanFactory), target :: this
    logical, value :: j_bool
    character(len=:), allocatable :: jresult
        if (j_bool) then
            jresult = this%f_TRUE_STRING
            return
        else
            jresult = this%f_FALSE_STRING
            return
        end if
  end function
end module BooleanFactory_m

