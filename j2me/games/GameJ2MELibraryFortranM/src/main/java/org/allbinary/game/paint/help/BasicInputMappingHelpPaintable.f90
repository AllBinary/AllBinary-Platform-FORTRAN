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
! package org.allbinary.game.paint.help
module BasicInputMappingHelpPaintable_m
  use JR_m
  use GameKey_m
  use GameKeyFactory_m
  use Input_m
  use PlatformInputMappingFactory_m
  use GameInputMapping_m
  use PersistentInputMapping_m
  use BasicColor_m
  use BasicColorFactory_m
  use StringMaker_m
  use CommonSeps_m
  use BasicArrayList_m
  use HelpPaintable_m
  implicit none

  type, extends(HelpPaintable) :: BasicInputMappingHelpPaintable
    type(JRef), allocatable :: f_gameInputMappingArray(:)
    class(GameKey), pointer :: f_NONE => null()
  contains
    procedure :: jm_update_2 => BasicInputMappingHelpPaintable_jm_update_2
    procedure :: jm_get_1 => BasicInputMappingHelpPaintable_jm_get_1
  end type


contains

  function BasicInputMappingHelpPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicInputMappingHelpPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicInputMappingHelpPaintable)
      jresult => object
    end select
  end function

  recursive function BasicInputMappingHelpPaintable_jnew_2(j_gameInputMappingArray, j_basicColor) result(this)
    type(JRef) :: j_gameInputMappingArray(:)
    class(BasicColor), target, optional :: j_basicColor
    class(BasicInputMappingHelpPaintable), pointer :: this
    class(BasicColorFactory), pointer :: jtemp2
    class(GameKeyFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicInputMappingHelpPaintable'
    
    jtemp1 => GameKeyFactory_jm_getInstance_0()
    this%f_NONE => jtemp1%f_NONE
        jtemp2 => BasicColorFactory_jm_getInstance_0()
        continue ! super()
        this%f_gameInputMappingArray = j_gameInputMappingArray
        call this%jm_update_2(this%f_NONE, this%f_NONE)
  end function

  recursive subroutine BasicInputMappingHelpPaintable_jm_update_2(this, j_selectedGameKey, j_selectedInput)
    class(BasicInputMappingHelpPaintable), target :: this
    class(GameKey), target, optional :: j_selectedGameKey
    class(Input), target, optional :: j_selectedInput
    class(PersistentInputMapping), pointer :: j_gameKeyMapping
    character(len=:), allocatable :: j_EQUAL
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_size
    type(JString), allocatable :: j_keyInfo(:)
    class(GameInputMapping), pointer :: j_gameInputMapping
    class(GameKey), pointer :: j_gameKey
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_index
    class(PlatformInputMappingFactory), pointer :: jtemp3
    class(InputToGameKeyMapping), pointer :: jtemp4
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
        jtemp3 => PlatformInputMappingFactory_jm_getInstance_0()
        j_gameKeyMapping => jtemp3%jm_getPersistentInputMappingInstance_0()
        j_EQUAL = ' = '
        j_stringMaker => StringMaker_jnew_0()
        j_size = size(this%f_gameInputMappingArray, 1)
        j_keyInfo = JR_newStringArray(j_size)
        continue
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_gameInputMapping => GameInputMapping_jcast(this%f_gameInputMappingArray((j_index) + 1)%v)
            j_gameKey => j_gameInputMapping%jm_getGameKey_0()
            jtemp4 => j_gameKeyMapping%jm_getInputMapping_0()
            j_list => jtemp4%jm_getMappedInput_1(j_gameKey)
            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
            jtemp7 => j_stringMaker%jm_append_1(j_gameInputMapping%jm_getName_0())
            jtemp6 => jtemp7%jm_append_1(j_EQUAL)
            jtemp5 => jtemp6%jm_append_1(this%jm_get_1(j_list))
            j_keyInfo((j_index) + 1)%v = jtemp5%jm_toString_0()
            j_index = j_index + 1
        end do
        call this%HelpPaintable%jm_setInputInfoP_1(j_keyInfo)
  end subroutine

  recursive function BasicInputMappingHelpPaintable_jm_get_1(this, j_keyList) result(jresult)
    class(BasicInputMappingHelpPaintable), target :: this
    class(BasicArrayList), target, optional :: j_keyList
    character(len=:), allocatable :: jresult
    class(CommonSeps), pointer :: j_commonSeps
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_AND
    class(Input), pointer :: j_key
    integer(4) :: j_size
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        j_AND = 'and '
        continue
        j_size = j_keyList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_key => Input_jcast(j_keyList%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_append_1(j_key%jm_getName_0())
            if (((j_index + 1) < j_keyList%jm_size_0())) then
                if ((j_keyList%jm_size_0() == 2)) then
                    jtemp8 => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
                    jdiscardRef => jtemp8%jm_append_1(j_AND)
                else
                    if (((j_index + 2) == j_keyList%jm_size_0())) then
                        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
                        jdiscardRef => j_stringBuffer%jm_append_1(j_AND)
                    else
                        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
                    end if
                end if
            end if
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module BasicInputMappingHelpPaintable_m

