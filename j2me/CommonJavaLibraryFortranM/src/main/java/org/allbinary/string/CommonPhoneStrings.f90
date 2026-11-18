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
! package org.allbinary.string
module CommonPhoneStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: CommonPhoneStrings
    character(len=:), allocatable :: f_UP
    character(len=:), allocatable :: f_DOWN
    character(len=:), allocatable :: f_LEFT
    character(len=:), allocatable :: f_RIGHT
    character(len=:), allocatable :: f_ZERO
    character(len=:), allocatable :: f_ONE
    character(len=:), allocatable :: f_TWO
    character(len=:), allocatable :: f_THREE
    character(len=:), allocatable :: f_FOUR
    character(len=:), allocatable :: f_FIVE
    character(len=:), allocatable :: f_SIX
    character(len=:), allocatable :: f_SEVEN
    character(len=:), allocatable :: f_EIGHT
    character(len=:), allocatable :: f_NINE
    character(len=:), allocatable :: f_POUND
    character(len=:), allocatable :: f_STAR
    character(len=:), allocatable :: f_FIRE
  end type

  class(CommonPhoneStrings), pointer, save :: CommonPhoneStrings_jcell_instance => null()
  logical, save :: CommonPhoneStrings_jset_instance = .false.

contains

  function CommonPhoneStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommonPhoneStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommonPhoneStrings)
      jresult => object
    end select
  end function

  function CommonPhoneStrings_jstatic_instance() result(jresult)
    class(CommonPhoneStrings), pointer :: jresult
    if (.not. CommonPhoneStrings_jset_instance) then
      CommonPhoneStrings_jset_instance = .true.
      CommonPhoneStrings_jcell_instance => CommonPhoneStrings_jnew_0()
    end if
    jresult => CommonPhoneStrings_jcell_instance
  end function

  subroutine CommonPhoneStrings_jsetstatic_instance(jvalue)
    class(CommonPhoneStrings), target, optional :: jvalue
    CommonPhoneStrings_jset_instance = .true.
    if (present(jvalue)) then
      CommonPhoneStrings_jcell_instance => jvalue
    else
      CommonPhoneStrings_jcell_instance => null()
    end if
  end subroutine

  function CommonPhoneStrings_jnew_0() result(this)
    class(CommonPhoneStrings), pointer :: this
    allocate(this)
    this%jclass = 'CommonPhoneStrings'
    this%f_UP = ''
    this%f_DOWN = ''
    this%f_LEFT = ''
    this%f_RIGHT = ''
    this%f_ZERO = ''
    this%f_ONE = ''
    this%f_TWO = ''
    this%f_THREE = ''
    this%f_FOUR = ''
    this%f_FIVE = ''
    this%f_SIX = ''
    this%f_SEVEN = ''
    this%f_EIGHT = ''
    this%f_NINE = ''
    this%f_POUND = ''
    this%f_STAR = ''
    this%f_FIRE = ''
    this%f_UP = 'UP'
    this%f_DOWN = 'DOWN'
    this%f_LEFT = 'LEFT'
    this%f_RIGHT = 'RIGHT'
    this%f_ZERO = '0'
    this%f_ONE = '1'
    this%f_TWO = '2'
    this%f_THREE = '3'
    this%f_FOUR = '4'
    this%f_FIVE = '5'
    this%f_SIX = '6'
    this%f_SEVEN = '7'
    this%f_EIGHT = '8'
    this%f_NINE = '9'
    this%f_POUND = '#'
    this%f_STAR = '*'
    this%f_FIRE = 'FIRE'
  end function

  recursive function CommonPhoneStrings_jm_getInstance_0() result(jresult)
    class(CommonPhoneStrings), pointer :: jresult
        jresult => CommonPhoneStrings_jstatic_instance()
        return
  end function
end module CommonPhoneStrings_m

