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
! package org.allbinary.game.input
module InputFactory_m
  use JR_m
  use NullUtil_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use CommonStrings_m
  use Input_m
  implicit none

  type, extends(JObject) :: InputFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    character(len=:), allocatable :: f_KEY_CODE_LABEL
    character(len=:), allocatable :: f_DEVICE_ID_LABEL
    integer(4) :: f_MAX = 0
    type(JRef), allocatable :: f_inputIntegerArray(:)
    class(Input), pointer :: f_NO_INPUT => null()
  contains
    procedure :: jm_add_2 => InputFactory_jm_add_2
    procedure :: jm_getInstanceById_1 => InputFactory_jm_getInstanceById_1
  end type

  class(JObject), pointer, save :: InputFactory_jcell_instance => null()
  logical, save :: InputFactory_jset_instance = .false.

contains

  function InputFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputFactory)
      jresult => object
    end select
  end function

  function InputFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. InputFactory_jset_instance) then
      InputFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    InputFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => InputFactory_jcell_instance
  end function

  subroutine InputFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    InputFactory_jset_instance = .true.
    if (present(jvalue)) then
      InputFactory_jcell_instance => jvalue
    else
      InputFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function InputFactory_jnew_0() result(this)
    class(InputFactory), pointer :: this
    integer(4) :: j_size
    integer(4) :: j_index
    class(SmallIntegerSingletonFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'InputFactory'
    this%f_KEY_CODE_LABEL = ''
    this%f_DEVICE_ID_LABEL = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_KEY_CODE_LABEL = 'KeyCode: '
    this%f_DEVICE_ID_LABEL = 'DeviceId: '
    jtemp3 => SmallIntegerSingletonFactory_jm_getInstance_0()
    this%f_MAX = jtemp3%jm_getMin_0()
    this%f_inputIntegerArray = JR_newRefArray(this%f_MAX)
    this%f_NO_INPUT => Input_jnew_2(0, this%f_commonStrings%f_UNKNOWN)
        j_size = size(this%f_inputIntegerArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            this%f_inputIntegerArray((j_index) + 1)%v => this%f_NO_INPUT
            j_index = j_index + 1
        end do
  end function

  recursive function InputFactory_jm_getInstance_0() result(jresult)
    class(InputFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(InputFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call InputFactory_jsetstatic_instance(InputFactory_jnew_0())
        end if
        jresult => InputFactory_jcast(InputFactory_jstatic_instance())
        return
  end function

  recursive subroutine InputFactory_jm_add_2(this, j_id, j_input)
    class(InputFactory), target :: this
    integer(4), value :: j_id
    class(Input), target, optional :: j_input
        this%f_inputIntegerArray((j_id) + 1)%v => j_input
  end subroutine

  recursive function InputFactory_jm_getInstanceById_1(this, j_id) result(jresult)
    class(InputFactory), target :: this
    integer(4), value :: j_id
    class(Input), pointer :: jresult
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
        if ((j_id < 0)) then
            j_id = (-j_id)
        end if
        if ((j_id > size(this%f_inputIntegerArray, 1))) then
            jtemp6 => StringMaker_jnew_0()
            jtemp5 => jtemp6%jm_append_1('Warning id: ')
            jtemp4 => jtemp5%jm_appendint_1(j_id)
            call this%f_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, this%f_commonStrings%f_GET_INSTANCE)
            jresult => this%f_NO_INPUT
            return
        end if
        jresult => Input_jcast(this%f_inputIntegerArray((j_id) + 1)%v)
        return
  end function
end module InputFactory_m

