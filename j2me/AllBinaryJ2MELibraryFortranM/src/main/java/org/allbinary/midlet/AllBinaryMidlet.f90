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
! package org.allbinary.midlet
module AllBinaryMidlet_m
  use JR_m
  use Display_m
  use NullCanvas_m
  use StdUtil_m
  use ForcedLogUtil_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use EventStrings_m
  use CommonLabels_m
  use CommonStrings_m
  use Memory_m
  use NullUtil_m
  use ABHashtable_m
  implicit none

  type, extends(MIDlet) :: AllBinaryMidlet
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    character(len=:), allocatable :: f_SET_DISPLAY
    character(len=:), allocatable :: f_SETTING_
    character(len=:), allocatable :: f__DISPLAY_
    character(len=:), allocatable :: f_SETTING_NO_TITLE
    class(ABHashtable), pointer :: f_hashtable => null()
    logical :: f_midletDestroyed = .false.
  contains
    procedure :: jm_setDisplay_1 => AllBinaryMidlet_jm_setDisplay_1
    procedure :: jm_getDisplay_0 => AllBinaryMidlet_jm_getDisplay_0
    procedure :: jm_getCurrentDisplayable_0 => AllBinaryMidlet_jm_getCurrentDisplayable_0
    procedure :: jm_setDestroyed_1 => AllBinaryMidlet_jm_setDestroyed_1
    procedure :: jm_isDestroyed_0 => AllBinaryMidlet_jm_isDestroyed_0
    procedure :: jm_startApp_0 => AllBinaryMidlet_jm_startApp_0
    procedure :: jm_pauseApp_0 => AllBinaryMidlet_jm_pauseApp_0
    procedure :: jm_destroyAppInRunnable_2 => AllBinaryMidlet_jm_destroyAppInRunnable_2
    procedure :: jm_destroyApp_1 => AllBinaryMidlet_jm_destroyApp_1
    procedure :: jm_setStartStateHashtable_1 => AllBinaryMidlet_jm_setStartStateHashtable_1
    procedure :: jm_getStartStateHashtable_0 => AllBinaryMidlet_jm_getStartStateHashtable_0
    procedure :: jm_getCurrentStateHashtable_0 => AllBinaryMidlet_jm_getCurrentStateHashtable_0
    procedure :: jm_commandAction_2 => AllBinaryMidlet_jm_commandAction_2
  end type

  class(JObject), pointer, save :: AllBinaryMidlet_jcell_NULL_ALLBINARY_MIDLET => null()
  logical, save :: AllBinaryMidlet_jset_NULL_ALLBINARY_MIDLET = .false.

contains

  function AllBinaryMidlet_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryMidlet), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryMidlet)
      jresult => object
    end select
  end function

  function AllBinaryMidlet_jstatic_NULL_ALLBINARY_MIDLET() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. AllBinaryMidlet_jset_NULL_ALLBINARY_MIDLET) then
      AllBinaryMidlet_jset_NULL_ALLBINARY_MIDLET = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    AllBinaryMidlet_jcell_NULL_ALLBINARY_MIDLET => jtemp1%f_NULL_OBJECT
    end if
    jresult => AllBinaryMidlet_jcell_NULL_ALLBINARY_MIDLET
  end function

  subroutine AllBinaryMidlet_jsetstatic_NULL_ALLBINARY_MIDLET(jvalue)
    class(JObject), target, optional :: jvalue
    AllBinaryMidlet_jset_NULL_ALLBINARY_MIDLET = .true.
    if (present(jvalue)) then
      AllBinaryMidlet_jcell_NULL_ALLBINARY_MIDLET => jvalue
    else
      AllBinaryMidlet_jcell_NULL_ALLBINARY_MIDLET => null()
    end if
  end subroutine

  recursive function AllBinaryMidlet_jnew_0() result(this)
    class(AllBinaryMidlet), pointer :: this
    class(StdUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AllBinaryMidlet'
    this%f_SET_DISPLAY = ''
    this%f_SETTING_ = ''
    this%f__DISPLAY_ = ''
    this%f_SETTING_NO_TITLE = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_SET_DISPLAY = 'setDisplay'
    this%f_SETTING_ = 'Setting: '
    this%f__DISPLAY_ = ' Display: '
    this%f_SETTING_NO_TITLE = 'Setting: No Title, Display: '
    jtemp3 => StdUtil_jm_getInstance_0()
    this%f_hashtable => jtemp3%jm_createHashtable_0()
    
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_CONSTRUCTOR, this, 'AllBinaryMidlet::AllBinaryMidlet')
  end function

  recursive function AllBinaryMidlet_jm_getNullInstance_0() result(jresult)
    class(AllBinaryMidlet), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(AllBinaryMidlet_jstatic_NULL_ALLBINARY_MIDLET(), jtemp2%f_NULL_OBJECT)) then
            call AllBinaryMidlet_jsetstatic_NULL_ALLBINARY_MIDLET(AllBinaryMidlet_jnew_0())
        end if
        jresult => AllBinaryMidlet_jcast(AllBinaryMidlet_jstatic_NULL_ALLBINARY_MIDLET())
        return
  end function

  recursive subroutine AllBinaryMidlet_jm_setDisplay_1(this, j_newDisplay)
    class(AllBinaryMidlet), target :: this
    class(Displayable), target, optional :: j_newDisplay
    character(len=:), allocatable :: j_title
    class(Display), pointer :: j_display
    class(StringUtil), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringUtil), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => StringUtil_jm_getInstance_0()
        j_title = jtemp4%f_EMPTY_STRING
        if ((.not. JR_same(j_newDisplay, NullCanvas_jstatic_NULL_CANVAS()))) then
            j_title = j_newDisplay%jm_getTitle_0()
            jtemp9 => StringMaker_jnew_0()
            jtemp8 => jtemp9%jm_append_1(this%f_SETTING_)
            jtemp10 => StringUtil_jm_getInstance_0()
            jtemp7 => jtemp8%jm_append_1(j_title)
            jtemp6 => jtemp7%jm_append_1(this%f__DISPLAY_)
            jtemp5 => jtemp6%jm_append_1(jtemp10%jm_toString_1(j_newDisplay))
            call this%f_logUtil%jm_putF_3(jtemp5%jm_toString_0(), this, this%f_SET_DISPLAY)
        end if
        j_display => this%jm_getDisplay_0()
        call j_display%jm_setCurrent_1(j_newDisplay)
  end subroutine

  recursive function AllBinaryMidlet_jm_getDisplay_0(this) result(jresult)
    class(AllBinaryMidlet), target :: this
    class(Display), pointer :: jresult
        jresult => Display_jm_getDisplay_1(this)
        return
  end function

  recursive function AllBinaryMidlet_jm_getCurrentDisplayable_0(this) result(jresult)
    class(AllBinaryMidlet), target :: this
    class(Displayable), pointer :: jresult
    class(JObject), pointer :: jtemp11
        jtemp11 => Display_jm_getDisplay_1(this)
        jresult => jtemp11%jm_getCurrent_0()
        return
  end function

  recursive subroutine AllBinaryMidlet_jm_setDestroyed_1(this, j_destroyed)
    class(AllBinaryMidlet), target :: this
    logical, value :: j_destroyed
        this%f_midletDestroyed = j_destroyed
  end subroutine

  recursive function AllBinaryMidlet_jm_isDestroyed_0(this) result(jresult)
    class(AllBinaryMidlet), target :: this
    logical :: jresult
        jresult = this%f_midletDestroyed
        return
  end function

  recursive subroutine AllBinaryMidlet_jm_startApp_0(this)
    class(AllBinaryMidlet), target :: this
    class(EventStrings), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp12 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp12%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine AllBinaryMidlet_jm_pauseApp_0(this)
    class(AllBinaryMidlet), target :: this
    class(EventStrings), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp13 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp13%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine AllBinaryMidlet_jm_destroyAppInRunnable_2(this, j_unconditional, j_isProgress)
    class(AllBinaryMidlet), target :: this
    logical, value :: j_unconditional
    logical, value :: j_isProgress
    continue
  end subroutine

  recursive subroutine AllBinaryMidlet_jm_destroyApp_1(this, j_unconditional)
    class(AllBinaryMidlet), target :: this
    logical, value :: j_unconditional
    character(len=:), allocatable :: j_METHOD_NAME
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'AllBinaryMidlet::destroyApp'
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, j_METHOD_NAME)
            call PreLogUtil_jm_put_3(Memory_jm_getInfo_0(), this, j_METHOD_NAME)
            call this%jm_setDestroyed_1(.true.)
  end subroutine

  recursive subroutine AllBinaryMidlet_jm_setStartStateHashtable_1(this, j_hashtable)
    class(AllBinaryMidlet), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(CommonLabels), pointer :: jtemp17
    class(StringUtil), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp17 => CommonLabels_jm_getInstance_0()
        jtemp18 => StringUtil_jm_getInstance_0()
        jtemp16 => StringMaker_jnew_0()
        jtemp15 => jtemp16%jm_append_1(jtemp17%f_START_LABEL)
        jtemp14 => jtemp15%jm_append_1(jtemp18%jm_toString_1(j_hashtable))
        call this%f_logUtil%jm_putF_3(jtemp14%jm_toString_0(), this, 'setStartStateHashtable')
        this%f_hashtable => j_hashtable
  end subroutine

  recursive function AllBinaryMidlet_jm_getStartStateHashtable_0(this) result(jresult)
    class(AllBinaryMidlet), target :: this
    class(ABHashtable), pointer :: jresult
    class(StringMaker), pointer :: jtemp19
    class(StringMaker), pointer :: jtemp20
    class(StringMaker), pointer :: jtemp21
    class(CommonLabels), pointer :: jtemp22
    class(StringUtil), pointer :: jtemp23
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp22 => CommonLabels_jm_getInstance_0()
        jtemp23 => StringUtil_jm_getInstance_0()
        jtemp21 => StringMaker_jnew_0()
        jtemp20 => jtemp21%jm_append_1(jtemp22%f_START_LABEL)
        jtemp19 => jtemp20%jm_append_1(jtemp23%jm_toString_1(this%f_hashtable))
        call this%f_logUtil%jm_putF_3(jtemp19%jm_toString_0(), this, 'getStartStateHashtable')
        jresult => this%f_hashtable
        return
  end function

  recursive function AllBinaryMidlet_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(AllBinaryMidlet), target :: this
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp24
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'getStateHashtable')
        jtemp24 => StdUtil_jm_getInstance_0()
        jresult => jtemp24%f_NULL_TABLE
        return
  end function

  recursive subroutine AllBinaryMidlet_jm_commandAction_2(this, j_command, j_displayable)
    class(AllBinaryMidlet), target :: this
    class(Command), target, optional :: j_command
    class(Displayable), target, optional :: j_displayable
    continue
  end subroutine
end module AllBinaryMidlet_m

function AllBinaryMidlet_jnew_0_jext() result(this)
  use AllBinaryMidlet_m, only: JObject, AllBinaryMidlet_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryMidlet_jnew_0()
end function

