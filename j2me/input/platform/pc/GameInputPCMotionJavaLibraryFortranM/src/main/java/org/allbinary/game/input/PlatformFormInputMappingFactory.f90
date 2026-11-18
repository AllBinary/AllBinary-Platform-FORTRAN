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
module PlatformFormInputMappingFactory_m
  use JR_m
  use InputToGameKeyMapping_m
  use BasicTouchInputFactory_m
  use NullUtil_m
  use LogUtil_m
  use CommonStrings_m
  use PCKeyFactory_m
  use GameKeyFactory_m
  implicit none

  type, extends(JObject) :: PlatformFormInputMappingFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(InputToGameKeyMapping), pointer :: f_inputToGameKeyMapping => null()
  contains
    procedure :: jm_getOrCreate_0 => PlatformFormInputMappingFactory_jm_getOrCreate_0
  end type

  class(JObject), pointer, save :: PlatformFormInputMappingFactory_jcell_instance => null()
  logical, save :: PlatformFormInputMappingFactory_jset_instance = .false.

contains

  function PlatformFormInputMappingFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformFormInputMappingFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformFormInputMappingFactory)
      jresult => object
    end select
  end function

  function PlatformFormInputMappingFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. PlatformFormInputMappingFactory_jset_instance) then
      PlatformFormInputMappingFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    PlatformFormInputMappingFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => PlatformFormInputMappingFactory_jcell_instance
  end function

  subroutine PlatformFormInputMappingFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    PlatformFormInputMappingFactory_jset_instance = .true.
    if (present(jvalue)) then
      PlatformFormInputMappingFactory_jcell_instance => jvalue
    else
      PlatformFormInputMappingFactory_jcell_instance => null()
    end if
  end subroutine

  function PlatformFormInputMappingFactory_jnew_0() result(this)
    class(PlatformFormInputMappingFactory), pointer :: this
    allocate(this)
    this%jclass = 'PlatformFormInputMappingFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_inputToGameKeyMapping => InputToGameKeyMapping_jm_getNullInstance_0()
  end function

  recursive function PlatformFormInputMappingFactory_jm_getInstance_0() result(jresult)
    class(PlatformFormInputMappingFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(PlatformFormInputMappingFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call PlatformFormInputMappingFactory_jsetstatic_instance(PlatformFormInputMappingFactory_jnew_0())
        end if
        jresult => PlatformFormInputMappingFactory_jcast(PlatformFormInputMappingFactory_jstatic_instance())
        return
  end function

  recursive function PlatformFormInputMappingFactory_jm_getOrCreate_0(this) result(jresult)
    class(PlatformFormInputMappingFactory), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
    class(PCKeyFactory), pointer :: j_pcKeyFactory
    class(InputToGameKeyMapping), pointer :: j_inputToGameKeyMapping
    class(GameKeyFactory), pointer :: j_gameKeyFactory
    class(BasicTouchInputFactory), pointer :: j_basicTouchInputFactory
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (JR_same(this%f_inputToGameKeyMapping, InputToGameKeyMapping_jm_getNullInstance_0())) then
                j_pcKeyFactory => PCKeyFactory_jm_getInstance_0()
                j_inputToGameKeyMapping => InputToGameKeyMapping_jnew_0()
                j_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
                j_basicTouchInputFactory => BasicTouchInputFactory_jm_getInstance_0()
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_pcKeyFactory%f_DPAD_UP)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_pcKeyFactory%f_DPAD_DOWN)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_pcKeyFactory%f_DPAD_LEFT)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_pcKeyFactory%f_DPAD_RIGHT)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_pcKeyFactory%f_ENTER)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_basicTouchInputFactory%f_UP)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_basicTouchInputFactory%f_LEFT)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_basicTouchInputFactory%f_RIGHT)
                call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_basicTouchInputFactory%f_DOWN)
                this%f_inputToGameKeyMapping => j_inputToGameKeyMapping
            end if
        jresult => this%f_inputToGameKeyMapping
        return
  end function
end module PlatformFormInputMappingFactory_m

