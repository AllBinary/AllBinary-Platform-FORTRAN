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
! package org.allbinary.game.input.mapping
module InputToGameKeyMapping_m
  use JR_m
  use GameKey_m
  use GameKeyFactory_m
  use Input_m
  use InputFactory_m
  use NullUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  use CommonSeps_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use InputMapping_m
  implicit none

  type, extends(InputMapping) :: InputToGameKeyMapping
    class(GameKeyFactory), pointer :: f_gameKeyFactory => null()
    type(JRef), allocatable :: f_mappedGameKeys(:)
    type(JRef), allocatable :: f_platformToGameKeyMapping(:)
    type(JRef), allocatable :: f_negativePlatformToGameKeyMapping(:)
  contains
    procedure :: jm_clear_0 => InputToGameKeyMapping_jm_clear_0
    procedure :: jm_removeAll_0 => InputToGameKeyMapping_jm_removeAll_0
    procedure :: jm_addMapping_1 => InputToGameKeyMapping_jm_addMapping_1
    procedure :: jm_addAll_2 => InputToGameKeyMapping_jm_addAll_2
    procedure :: jm_add_2 => InputToGameKeyMapping_jm_add_2
    procedure :: jm_remove_2 => InputToGameKeyMapping_jm_remove_2
    procedure :: jm_set_2 => InputToGameKeyMapping_jm_set_2
    procedure :: jm_getMaxMappable_0 => InputToGameKeyMapping_jm_getMaxMappable_0
    procedure :: jm_getReverseInstance_1 => InputToGameKeyMapping_jm_getReverseInstance_1
    procedure :: jm_initGameKey_2 => InputToGameKeyMapping_jm_initGameKey_2
    procedure :: jm_getSmallestCanvasGameKeyCode_1 => InputToGameKeyMapping_jm_getSmallestCanvasGameKeyCode_1
    procedure :: jm_init_1 => InputToGameKeyMapping_jm_init_1
    procedure :: jm_getInstanceForCanvas_2 => InputToGameKeyMapping_jm_getInstanceForCanvas_2
    procedure :: jm_getInstance_1 => InputToGameKeyMapping_jm_getInstance_1
  end type

  class(JObject), pointer, save :: InputToGameKeyMapping_jcell_instance => null()
  logical, save :: InputToGameKeyMapping_jset_instance = .false.

contains

  function InputToGameKeyMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputToGameKeyMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputToGameKeyMapping)
      jresult => object
    end select
  end function

  function InputToGameKeyMapping_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. InputToGameKeyMapping_jset_instance) then
      InputToGameKeyMapping_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    InputToGameKeyMapping_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => InputToGameKeyMapping_jcell_instance
  end function

  subroutine InputToGameKeyMapping_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    InputToGameKeyMapping_jset_instance = .true.
    if (present(jvalue)) then
      InputToGameKeyMapping_jcell_instance => jvalue
    else
      InputToGameKeyMapping_jcell_instance => null()
    end if
  end subroutine

  recursive function InputToGameKeyMapping_jnew_0() result(this)
    class(InputToGameKeyMapping), pointer :: this
    class(InputFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'InputToGameKeyMapping'
    this%f_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
    this%f_mappedGameKeys = [JRef :: JRef(this%f_gameKeyFactory%f_UP), JRef(this%f_gameKeyFactory%f_DOWN), JRef(this%f_gameKeyFactory%f_LEFT), JRef(this%f_gameKeyFactory%f_RIGHT)]
    jtemp3 => InputFactory_jm_getInstance_0()
    this%f_platformToGameKeyMapping = JR_newRefArray(jtemp3%f_MAX)
    this%f_negativePlatformToGameKeyMapping = JR_newRefArray(0)
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        call this%jm_clear_0()
  end function

  recursive function InputToGameKeyMapping_jm_getNullInstance_0() result(jresult)
    class(InputToGameKeyMapping), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(InputToGameKeyMapping_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call InputToGameKeyMapping_jsetstatic_instance(InputToGameKeyMapping_jnew_0())
        end if
        jresult => InputToGameKeyMapping_jcast(InputToGameKeyMapping_jstatic_instance())
        return
  end function

  recursive subroutine InputToGameKeyMapping_jm_clear_0(this)
    class(InputToGameKeyMapping), target :: this
    integer(4) :: j_index
        j_index = (size(this%f_platformToGameKeyMapping, 1) - 1)
        do while ((j_index >= 0))
            this%f_platformToGameKeyMapping((j_index) + 1)%v => this%f_gameKeyFactory%f_NONE
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine InputToGameKeyMapping_jm_removeAll_0(this)
    class(InputToGameKeyMapping), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%InputMapping%jm_removeAll_0()
        call this%jm_clear_0()
  end subroutine

  recursive subroutine InputToGameKeyMapping_jm_addMapping_1(this, j_inputToGameKeyMapping)
    class(InputToGameKeyMapping), target :: this
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
    class(Input), pointer :: j_input
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = (j_inputToGameKeyMapping%jm_getMaxMappable_0() - 1)
        do while ((j_index >= 0))
            j_input => j_inputToGameKeyMapping%jm_getInstance_1(j_index)
            if ((.not. JR_same(j_input, this%f_gameKeyFactory%f_NONE))) then
                call this%jm_addAll_2(j_input, j_inputToGameKeyMapping%jm_getMappedInput_1(j_input))
            end if
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine InputToGameKeyMapping_jm_addAll_2(this, j_input, j_list)
    class(InputToGameKeyMapping), target :: this
    class(Input), target, optional :: j_input
    class(BasicArrayList), target, optional :: j_list
    class(Input), pointer :: j_mappedToInput
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = (j_list%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_mappedToInput => Input_jcast(j_list%f_objectArray((j_index) + 1)%v)
            call this%jm_add_2(j_input, j_mappedToInput)
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine InputToGameKeyMapping_jm_add_2(this, j_input, j_mappedToInput)
    class(InputToGameKeyMapping), target :: this
    class(Input), target, optional :: j_input
    class(Input), target, optional :: j_mappedToInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%InputMapping%jm_add_2(j_input, j_mappedToInput)
        call this%jm_set_2(j_input, j_mappedToInput)
  end subroutine

  recursive subroutine InputToGameKeyMapping_jm_remove_2(this, j_input, j_mappedToInput)
    class(InputToGameKeyMapping), target :: this
    class(Input), target, optional :: j_input
    class(Input), target, optional :: j_mappedToInput
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(CommonLabels), pointer :: jtemp9
    class(StringUtil), pointer :: jtemp10
    class(StringUtil), pointer :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp9 => CommonLabels_jm_getInstance_0()
        jtemp10 => StringUtil_jm_getInstance_0()
        jtemp8 => StringMaker_jnew_0()
        jtemp7 => jtemp8%jm_append_1(jtemp9%f_START_LABEL)
        jtemp11 => StringUtil_jm_getInstance_0()
        jtemp6 => jtemp7%jm_append_1(jtemp10%jm_toString_1(j_input))
        jtemp5 => jtemp6%jm_append_1(' == ')
        jtemp4 => jtemp5%jm_append_1(jtemp11%jm_toString_1(j_mappedToInput))
        call this%f_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, 'InputToGameKeyMapping::remove')
        call this%InputMapping%jm_remove_2(j_input, j_mappedToInput)
        call this%jm_set_2(j_input, this%f_gameKeyFactory%f_NONE)
  end subroutine

  recursive subroutine InputToGameKeyMapping_jm_set_2(this, j_input, j_mappedToInput)
    class(InputToGameKeyMapping), target :: this
    class(Input), target, optional :: j_input
    class(Input), target, optional :: j_mappedToInput
    integer(4) :: j_id
        j_id = j_mappedToInput%jm_getId_0()
        if (((j_id >= 0) .and. (j_id < size(this%f_platformToGameKeyMapping, 1)))) then
            this%f_platformToGameKeyMapping((j_id) + 1)%v => GameKey_jcast(j_input)
        end if
  end subroutine

  recursive function InputToGameKeyMapping_jm_getMaxMappable_0(this) result(jresult)
    class(InputToGameKeyMapping), target :: this
    integer(4) :: jresult
        jresult = size(this%f_platformToGameKeyMapping, 1)
        return
  end function

  recursive function InputToGameKeyMapping_jm_getReverseInstance_1(this, j_id) result(jresult)
    class(InputToGameKeyMapping), target :: this
    integer(4), value :: j_id
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    class(InputFactory), pointer :: j_inputFactory
    class(Input), pointer :: j_input
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => BasicArrayListD_jnew_0()
        j_inputFactory => InputFactory_jm_getInstance_0()
        j_index = 0
        do while ((j_index < size(this%f_platformToGameKeyMapping, 1)))
            associate (jstaticref1 => GameKey_jcast(this%f_platformToGameKeyMapping((j_index) + 1)%v))
            if ((jstaticref1%jm_getId_0() == j_id)) then
                j_input => j_inputFactory%jm_getInstanceById_1(j_index)
                if (associated(j_input)) then
                    jdiscardBoolean = j_list%jm_add_1(j_input)
                end if
            end if
            end associate
            j_index = j_index + 1
        end do
        jresult => j_list
        return
  end function

  recursive subroutine InputToGameKeyMapping_jm_initGameKey_2(this, j_canvas, j_gameKey)
    class(InputToGameKeyMapping), target :: this
    class(Canvas), target, optional :: j_canvas
    class(GameKey), target, optional :: j_gameKey
    integer(4) :: j_key
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(CommonSeps), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_key = j_canvas%jm_getKeyCode_1(j_gameKey%jm_getId_0())
        if (((j_key < 0) .and. ((-j_key) < size(this%f_negativePlatformToGameKeyMapping, 1)))) then
            this%f_negativePlatformToGameKeyMapping(((-j_key)) + 1)%v => j_gameKey
        else if ((j_key > 0)) then
            if (JR_same(GameKey_jcast(this%f_platformToGameKeyMapping((j_key) + 1)%v), this%f_gameKeyFactory%f_NONE)) then
                this%f_platformToGameKeyMapping((j_key) + 1)%v => j_gameKey
            end if
        else
            jtemp16 => CommonSeps_jm_getInstance_0()
            jtemp15 => StringMaker_jnew_0()
            jtemp14 => jtemp15%jm_append_1(j_gameKey%jm_toString_0())
            jtemp13 => jtemp14%jm_append_1(jtemp16%f_COLON_SEP)
            jtemp12 => jtemp13%jm_appendint_1(j_key)
            call PreLogUtil_jm_putOE_4(jtemp12%jm_toString_0(), this, this%f_commonStrings%f_INIT, JR_newJObject('Exception'))
        end if
  end subroutine

  recursive function InputToGameKeyMapping_jm_getSmallestCanvasGameKeyCode_1(this, j_canvas) result(jresult)
    class(InputToGameKeyMapping), target :: this
    class(Canvas), target, optional :: j_canvas
    integer(4) :: jresult
    integer(4) :: j_nextKey
    integer(4) :: j_smallestKey
    integer(4) :: j_index
    integer(4) :: jtemp17
        j_nextKey = 0
        j_smallestKey = 0
        j_index = j_index - 1
        jtemp17 = j_index
        j_index = size(this%f_mappedGameKeys, 1)
        do while ((jtemp17 >= 0))
            associate (jstaticref2 => GameKey_jcast(this%f_mappedGameKeys((j_index) + 1)%v))
            j_nextKey = j_canvas%jm_getKeyCode_1(jstaticref2%jm_getId_0())
            end associate
            if ((j_nextKey < j_smallestKey)) then
                j_smallestKey = j_nextKey
            end if
        end do
        jresult = j_smallestKey
        return
  end function

  recursive subroutine InputToGameKeyMapping_jm_init_1(this, j_canvas)
    class(InputToGameKeyMapping), target :: this
    class(Canvas), target, optional :: j_canvas
    type(JRef), allocatable :: j_negativePlatformToGameKeyMapping(:)
    integer(4) :: j_smallestKey
    integer(4) :: j_index
    integer(4) :: jtemp18
    integer(4) :: jtemp19
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_negativePlatformToGameKeyMapping = JR_newRefArray(0)
            j_smallestKey = this%jm_getSmallestCanvasGameKeyCode_1(j_canvas)
            if ((j_smallestKey < 0)) then
                j_smallestKey = j_smallestKey - 1
                if ((j_smallestKey < (-256))) then
                    j_smallestKey = (-256)
                end if
                j_negativePlatformToGameKeyMapping = JR_newRefArray((-j_smallestKey))
                j_index = j_index - 1
                jtemp18 = j_index
                j_index = size(j_negativePlatformToGameKeyMapping, 1)
                do while ((jtemp18 >= 0))
                    j_negativePlatformToGameKeyMapping((j_index) + 1)%v => this%f_gameKeyFactory%f_NONE
                end do
                this%f_negativePlatformToGameKeyMapping = j_negativePlatformToGameKeyMapping
            end if
            j_index = j_index - 1
            jtemp19 = j_index
            j_index = size(this%f_mappedGameKeys, 1)
            do while ((jtemp19 >= 0))
                call this%jm_initGameKey_2(j_canvas, GameKey_jcast(this%f_mappedGameKeys((j_index) + 1)%v))
            end do
  end subroutine

  recursive function InputToGameKeyMapping_jm_getInstanceForCanvas_2(this, j_canvas, j_id) result(jresult)
    class(InputToGameKeyMapping), target :: this
    class(Canvas), target, optional :: j_canvas
    integer(4), value :: j_id
    class(GameKey), pointer :: jresult
        if (((j_id >= 0) .and. (j_id < size(this%f_platformToGameKeyMapping, 1)))) then
            jresult => GameKey_jcast(this%f_platformToGameKeyMapping((j_id) + 1)%v)
            return
        else if (((j_id < 0) .and. ((-j_id) < size(this%f_negativePlatformToGameKeyMapping, 1)))) then
            jresult => GameKey_jcast(this%f_negativePlatformToGameKeyMapping(((-j_id)) + 1)%v)
            return
        else
            jresult => this%f_gameKeyFactory%f_NONE
            return
        end if
  end function

  recursive function InputToGameKeyMapping_jm_getInstance_1(this, j_id) result(jresult)
    class(InputToGameKeyMapping), target :: this
    integer(4), value :: j_id
    class(GameKey), pointer :: jresult
        if (((j_id >= 0) .and. (j_id < size(this%f_platformToGameKeyMapping, 1)))) then
            jresult => GameKey_jcast(this%f_platformToGameKeyMapping((j_id) + 1)%v)
            return
        else if (((j_id < 0) .and. ((-j_id) < size(this%f_negativePlatformToGameKeyMapping, 1)))) then
            jresult => GameKey_jcast(this%f_negativePlatformToGameKeyMapping(((-j_id)) + 1)%v)
            return
        else
            jresult => this%f_gameKeyFactory%f_NONE
            return
        end if
  end function
end module InputToGameKeyMapping_m

function InputToGameKeyMapping_jnew_0_jext() result(this)
  use InputToGameKeyMapping_m, only: JObject, InputToGameKeyMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => InputToGameKeyMapping_jnew_0()
end function

