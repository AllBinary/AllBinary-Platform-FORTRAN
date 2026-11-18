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
module BasicTouchInputFactory_m
  use JR_m
  use InputFactory_m
  use InputToGameKeyMapping_m
  use NullUtil_m
  use LogUtil_m
  use StringMaker_m
  use CommonLabels_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use TouchButtonInput_m
  implicit none

  type, extends(JObject) :: BasicTouchInputFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(TouchButtonInput), pointer :: f_SPECIAL_BUTTON_SIX => null()
    class(TouchButtonInput), pointer :: f_SPECIAL_BUTTON_FIVE => null()
    class(TouchButtonInput), pointer :: f_SPECIAL_BUTTON_FOUR => null()
    class(TouchButtonInput), pointer :: f_SPECIAL_BUTTON_THREE => null()
    class(TouchButtonInput), pointer :: f_SPECIAL_BUTTON_TWO => null()
    class(TouchButtonInput), pointer :: f_SPECIAL_BUTTON_ONE => null()
    class(TouchButtonInput), pointer :: f_UP => null()
    class(TouchButtonInput), pointer :: f_LEFT => null()
    class(TouchButtonInput), pointer :: f_RIGHT => null()
    class(TouchButtonInput), pointer :: f_DOWN => null()
    class(TouchButtonInput), pointer :: f_NONE => null()
    logical :: f_initialized = .false.
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_init_1 => BasicTouchInputFactory_jm_init_1
    procedure :: jm_updateAll_1 => BasicTouchInputFactory_jm_updateAll_1
    procedure :: jm_updateAllList_2 => BasicTouchInputFactory_jm_updateAllList_2
    procedure :: jm_getList_0 => BasicTouchInputFactory_jm_getList_0
  end type

  class(JObject), pointer, save :: BasicTouchInputFactory_jcell_instance => null()
  logical, save :: BasicTouchInputFactory_jset_instance = .false.

contains

  function BasicTouchInputFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicTouchInputFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicTouchInputFactory)
      jresult => object
    end select
  end function

  function BasicTouchInputFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. BasicTouchInputFactory_jset_instance) then
      BasicTouchInputFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    BasicTouchInputFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => BasicTouchInputFactory_jcell_instance
  end function

  subroutine BasicTouchInputFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    BasicTouchInputFactory_jset_instance = .true.
    if (present(jvalue)) then
      BasicTouchInputFactory_jcell_instance => jvalue
    else
      BasicTouchInputFactory_jcell_instance => null()
    end if
  end subroutine

  function BasicTouchInputFactory_jnew_0() result(this)
    class(BasicTouchInputFactory), pointer :: this
    class(InputFactory), pointer :: jtemp3
    class(InputFactory), pointer :: jtemp4
    class(InputFactory), pointer :: jtemp5
    class(InputFactory), pointer :: jtemp6
    class(InputFactory), pointer :: jtemp7
    class(InputFactory), pointer :: jtemp8
    class(InputFactory), pointer :: jtemp9
    class(InputFactory), pointer :: jtemp10
    class(InputFactory), pointer :: jtemp11
    class(InputFactory), pointer :: jtemp12
    class(InputFactory), pointer :: jtemp13
    allocate(this)
    this%jclass = 'BasicTouchInputFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp3 => InputFactory_jm_getInstance_0()
    this%f_SPECIAL_BUTTON_SIX => TouchButtonInput_jnew_2((jtemp3%f_MAX - 30), 'Button 6')
    jtemp4 => InputFactory_jm_getInstance_0()
    this%f_SPECIAL_BUTTON_FIVE => TouchButtonInput_jnew_2((jtemp4%f_MAX - 31), 'Button 5')
    jtemp5 => InputFactory_jm_getInstance_0()
    this%f_SPECIAL_BUTTON_FOUR => TouchButtonInput_jnew_2((jtemp5%f_MAX - 32), 'Button 4')
    jtemp6 => InputFactory_jm_getInstance_0()
    this%f_SPECIAL_BUTTON_THREE => TouchButtonInput_jnew_2((jtemp6%f_MAX - 33), 'Button 3')
    jtemp7 => InputFactory_jm_getInstance_0()
    this%f_SPECIAL_BUTTON_TWO => TouchButtonInput_jnew_2((jtemp7%f_MAX - 34), 'Button 2')
    jtemp8 => InputFactory_jm_getInstance_0()
    this%f_SPECIAL_BUTTON_ONE => TouchButtonInput_jnew_2((jtemp8%f_MAX - 35), 'Button 1')
    jtemp9 => InputFactory_jm_getInstance_0()
    this%f_UP => TouchButtonInput_jnew_2((jtemp9%f_MAX - 36), 'Up Button')
    jtemp10 => InputFactory_jm_getInstance_0()
    this%f_LEFT => TouchButtonInput_jnew_2((jtemp10%f_MAX - 37), 'Left Button')
    jtemp11 => InputFactory_jm_getInstance_0()
    this%f_RIGHT => TouchButtonInput_jnew_2((jtemp11%f_MAX - 38), 'Right Button')
    jtemp12 => InputFactory_jm_getInstance_0()
    this%f_DOWN => TouchButtonInput_jnew_2((jtemp12%f_MAX - 39), 'Down Button')
    jtemp13 => InputFactory_jm_getInstance_0()
    this%f_NONE => TouchButtonInput_jnew_2((jtemp13%f_MAX - 40), 'No Button')
    this%f_initialized = .false.
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive function BasicTouchInputFactory_jm_getInstance_0() result(jresult)
    class(BasicTouchInputFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(BasicTouchInputFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call BasicTouchInputFactory_jsetstatic_instance(BasicTouchInputFactory_jnew_0())
        end if
        jresult => BasicTouchInputFactory_jcast(BasicTouchInputFactory_jstatic_instance())
        return
  end function

  recursive subroutine BasicTouchInputFactory_jm_init_1(this, j_inputToGameKeyMapping)
    class(BasicTouchInputFactory), target :: this
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_initialized)) then
            this%f_initialized = .true.
            jdiscardBoolean = this%f_list%jm_add_1(this%f_UP)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_LEFT)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_RIGHT)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_DOWN)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_SPECIAL_BUTTON_TWO)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_SPECIAL_BUTTON_FOUR)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_SPECIAL_BUTTON_THREE)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_SPECIAL_BUTTON_ONE)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_SPECIAL_BUTTON_FIVE)
            jdiscardBoolean = this%f_list%jm_add_1(this%f_SPECIAL_BUTTON_SIX)
            call this%jm_updateAllList_2(this%f_list, j_inputToGameKeyMapping)
        end if
  end subroutine

  recursive subroutine BasicTouchInputFactory_jm_updateAll_1(this, j_inputToGameKeyMapping)
    class(BasicTouchInputFactory), target :: this
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_updateAllList_2(this%jm_getList_0(), j_inputToGameKeyMapping)
  end subroutine

  recursive subroutine BasicTouchInputFactory_jm_updateAllList_2(this, j_list, j_inputToGameKeyMapping)
    class(BasicTouchInputFactory), target :: this
    class(BasicArrayList), target, optional :: j_list
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
    class(TouchButtonInput), pointer :: j_touchButtonInput
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(CommonLabels), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp17 => CommonLabels_jm_getInstance_0()
        jtemp16 => StringMaker_jnew_0()
        jtemp15 => jtemp16%jm_append_1(jtemp17%f_START)
        jtemp14 => jtemp15%jm_appendint_1(j_list%jm_size_0())
        call this%f_logUtil%jm_putF_3(jtemp14%jm_toString_0(), this, 'updateAll')
        j_index = (j_list%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_touchButtonInput => TouchButtonInput_jcast(j_list%jm_get_1(j_index))
            call j_touchButtonInput%jm_update_1(j_inputToGameKeyMapping)
            j_index = j_index - 1
        end do
  end subroutine

  recursive function BasicTouchInputFactory_jm_getList_0(this) result(jresult)
    class(BasicTouchInputFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function
end module BasicTouchInputFactory_m

