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
! package org.allbinary.input.motion.button
module CurrentlyPressedTouchButtonSingletonDebug_m
  use JR_m
  use GPoint_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use CurrentlyPressedTouchButtonSingleton_m
  use TouchButtonInput_m
  implicit none

  type, extends(CurrentlyPressedTouchButtonSingleton) :: CurrentlyPressedTouchButtonSingletonDebug
    character(len=:), allocatable :: f_string
    character(len=:), allocatable :: f_listString
    character(len=:), allocatable :: f_appendText
    character(len=:), allocatable :: f_PRESSED_AND_FIRED
    character(len=:), allocatable :: f_PRESSED_AND_NOT_FIRED
    character(len=:), allocatable :: f_ASSOCIATED_RELEASED_AND_FIRED
    character(len=:), allocatable :: f_RELEASED_AND_FIRED
    character(len=:), allocatable :: f_RELEASED_AND_FIRED_2
    character(len=:), allocatable :: f_RELEASED_AND_NOT_FIRED
  contains
    procedure :: jm_appendTouchButtonInput_2 => CurrentlyPressedTouchButtonSingletonDebug_jm_appendTouchButtonInput_2
    procedure :: jm_append_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_append_1
    procedure :: jm_clearLog_2 => CurrentlyPressedTouchButtonSingletonDebug_jm_clearLog_2
    procedure :: jm_releaseAndNotFired_0 => CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndNotFired_0
    procedure :: jm_releaseAndFired_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndFired_1
    procedure :: jm_releaseAndFired2_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndFired2_1
    procedure :: jm_releaseAndFiredAssociated_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndFiredAssociated_1
    procedure :: jm_pressedAndFired_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_pressedAndFired_1
    procedure :: jm_pressedAndNotFired_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_pressedAndNotFired_1
    procedure :: jm_removeAt_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_removeAt_1
    procedure :: jm_remove_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_remove_1
    procedure :: jm_add_1 => CurrentlyPressedTouchButtonSingletonDebug_jm_add_1
    procedure :: jm_toString_0 => CurrentlyPressedTouchButtonSingletonDebug_jm_toString_0
  end type

  class(CurrentlyPressedTouchButtonSingletonDebug), pointer, save :: CurrentlyPressedTouchButtonSingletonDebug_jcell_instanceC => null()
  logical, save :: CurrentlyPressedTouchButtonSingletonDebug_jset_instanceC = .false.

contains

  function CurrentlyPressedTouchButtonSingletonDebug_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CurrentlyPressedTouchButtonSingletonDebug), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CurrentlyPressedTouchButtonSingletonDebug)
      jresult => object
    end select
  end function

  function CurrentlyPressedTouchButtonSingletonDebug_jstatic_instanceC() result(jresult)
    class(CurrentlyPressedTouchButtonSingletonDebug), pointer :: jresult
    if (.not. CurrentlyPressedTouchButtonSingletonDebug_jset_instanceC) then
      CurrentlyPressedTouchButtonSingletonDebug_jset_instanceC = .true.
      CurrentlyPressedTouchButtonSingletonDebug_jcell_instanceC => CurrentlyPressedTouchButtonSingletonDebug_jnew_0()
    end if
    jresult => CurrentlyPressedTouchButtonSingletonDebug_jcell_instanceC
  end function

  subroutine CurrentlyPressedTouchButtonSingletonDebug_jsetstatic_instanceC(jvalue)
    class(CurrentlyPressedTouchButtonSingletonDebug), target, optional :: jvalue
    CurrentlyPressedTouchButtonSingletonDebug_jset_instanceC = .true.
    if (present(jvalue)) then
      CurrentlyPressedTouchButtonSingletonDebug_jcell_instanceC => jvalue
    else
      CurrentlyPressedTouchButtonSingletonDebug_jcell_instanceC => null()
    end if
  end subroutine

  function CurrentlyPressedTouchButtonSingletonDebug_jnew_0() result(this)
    class(CurrentlyPressedTouchButtonSingletonDebug), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    allocate(this)
    this%jclass = 'CurrentlyPressedTouchButtonSingletonDebug'
    this%f_string = ''
    this%f_listString = ''
    this%f_appendText = ''
    this%f_PRESSED_AND_FIRED = ''
    this%f_PRESSED_AND_NOT_FIRED = ''
    this%f_ASSOCIATED_RELEASED_AND_FIRED = ''
    this%f_RELEASED_AND_FIRED = ''
    this%f_RELEASED_AND_FIRED_2 = ''
    this%f_RELEASED_AND_NOT_FIRED = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_string = jtemp1%f_EMPTY_STRING
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_listString = jtemp2%f_EMPTY_STRING
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_appendText = jtemp3%f_EMPTY_STRING
    this%f_PRESSED_AND_FIRED = 'pressed & fired'
    this%f_PRESSED_AND_NOT_FIRED = 'pressed in button but not fired'
    this%f_ASSOCIATED_RELEASED_AND_FIRED = 'assoc. rel & fired'
    this%f_RELEASED_AND_FIRED = 'rel & fired 1'
    this%f_RELEASED_AND_FIRED_2 = 'rel & fired 2'
    this%f_RELEASED_AND_NOT_FIRED = 'rel & not fired'
  end function

  recursive function CurrentlyPressedTouchButtonSingletonDebug_jm_getInstance_0() result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), pointer :: jresult
        jresult => CurrentlyPressedTouchButtonSingletonDebug_jstatic_instanceC()
        return
  end function

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_appendTouchButtonInput_2(this, j_append, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    character(len=*), intent(in) :: j_append
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_touchButtonInput%jm_toString_0())
        jtemp4 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp4%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_append)
        this%f_appendText = j_stringBuffer%jm_toString_0()
        jtemp7 => StringMaker_jnew_0()
        jtemp6 => jtemp7%jm_append_1(this%f_listString)
        jtemp5 => jtemp6%jm_append_1(this%f_appendText)
        this%f_string = jtemp5%jm_toString_0()
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_append_1(this, j_append)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    character(len=*), intent(in) :: j_append
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
        jtemp10 => StringMaker_jnew_0()
        jtemp9 => jtemp10%jm_append_1(this%f_appendText)
        jtemp8 => jtemp9%jm_append_1(j_append)
        this%f_appendText = jtemp8%jm_toString_0()
        jtemp13 => StringMaker_jnew_0()
        jtemp12 => jtemp13%jm_append_1(this%f_listString)
        jtemp11 => jtemp12%jm_append_1(this%f_appendText)
        this%f_string = jtemp11%jm_toString_0()
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_clearLog_2(this, j_x, j_y)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(CommonSeps), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(StringMaker), pointer :: jtemp19
    class(StringMaker), pointer :: jtemp20
        jtemp17 => CommonSeps_jm_getInstance_0()
        jtemp16 => StringMaker_jnew_0()
        jtemp15 => jtemp16%jm_append_1(GPoint_jm_toStringStatic_3(j_x, j_y, 0))
        jtemp14 => jtemp15%jm_append_1(jtemp17%f_SPACE)
        this%f_appendText = jtemp14%jm_toString_0()
        jtemp20 => StringMaker_jnew_0()
        jtemp19 => jtemp20%jm_append_1(this%f_listString)
        jtemp18 => jtemp19%jm_append_1(this%f_appendText)
        this%f_string = jtemp18%jm_toString_0()
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndNotFired_0(this)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_append_1(this%f_RELEASED_AND_NOT_FIRED)
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndFired_1(this, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_appendTouchButtonInput_2(this%f_RELEASED_AND_FIRED, j_touchButtonInput)
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndFired2_1(this, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_appendTouchButtonInput_2(this%f_RELEASED_AND_FIRED_2, j_touchButtonInput)
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_releaseAndFiredAssociated_1(this, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_appendTouchButtonInput_2(this%f_ASSOCIATED_RELEASED_AND_FIRED, j_touchButtonInput)
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_pressedAndFired_1(this, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_appendTouchButtonInput_2(this%f_PRESSED_AND_FIRED, j_touchButtonInput)
  end subroutine

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_pressedAndNotFired_1(this, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_appendTouchButtonInput_2(this%f_PRESSED_AND_NOT_FIRED, j_touchButtonInput)
  end subroutine

  recursive function CurrentlyPressedTouchButtonSingletonDebug_jm_removeAt_1(this, j_index) result(jresult)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    integer(4), value :: j_index
    class(TouchButtonInput), pointer :: jresult
    class(TouchButtonInput), pointer :: j_touchButtonInput
    class(StringMaker), pointer :: jtemp21
    class(StringMaker), pointer :: jtemp22
    class(StringMaker), pointer :: jtemp23
        j_touchButtonInput => this%CurrentlyPressedTouchButtonSingleton%jm_removeAt_1(j_index)
        this%f_listString = JR_toString(this%f_list)
        jtemp23 => StringMaker_jnew_0()
        jtemp22 => jtemp23%jm_append_1(this%f_listString)
        jtemp21 => jtemp22%jm_append_1(this%f_appendText)
        this%f_string = jtemp21%jm_toString_0()
        jresult => j_touchButtonInput
        return
  end function

  recursive function CurrentlyPressedTouchButtonSingletonDebug_jm_remove_1(this, j_touchButtonInput) result(jresult)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    logical :: jresult
    logical :: j_isRemoved
    class(StringMaker), pointer :: jtemp24
    class(StringMaker), pointer :: jtemp25
    class(StringMaker), pointer :: jtemp26
        j_isRemoved = this%CurrentlyPressedTouchButtonSingleton%jm_remove_1(j_touchButtonInput)
        this%f_listString = JR_toString(this%f_list)
        jtemp26 => StringMaker_jnew_0()
        jtemp25 => jtemp26%jm_append_1(this%f_listString)
        jtemp24 => jtemp25%jm_append_1(this%f_appendText)
        this%f_string = jtemp24%jm_toString_0()
        jresult = j_isRemoved
        return
  end function

  recursive subroutine CurrentlyPressedTouchButtonSingletonDebug_jm_add_1(this, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(StringMaker), pointer :: jtemp27
    class(StringMaker), pointer :: jtemp28
    class(StringMaker), pointer :: jtemp29
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%CurrentlyPressedTouchButtonSingleton%jm_add_1(j_touchButtonInput)
        this%f_listString = JR_toString(this%f_list)
        jtemp29 => StringMaker_jnew_0()
        jtemp28 => jtemp29%jm_append_1(this%f_listString)
        jtemp27 => jtemp28%jm_append_1(this%f_appendText)
        this%f_string = jtemp27%jm_toString_0()
  end subroutine

  recursive function CurrentlyPressedTouchButtonSingletonDebug_jm_toString_0(this) result(jresult)
    class(CurrentlyPressedTouchButtonSingletonDebug), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_string
        return
  end function
end module CurrentlyPressedTouchButtonSingletonDebug_m

function CurrentlyPressedTouchButtonSingletonDebug_jnew_0_jext() result(this)
  use CurrentlyPressedTouchButtonSingletonDebug_m, only: JObject, CurrentlyPressedTouchButtonSingletonDebug_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CurrentlyPressedTouchButtonSingletonDebug_jnew_0()
end function

