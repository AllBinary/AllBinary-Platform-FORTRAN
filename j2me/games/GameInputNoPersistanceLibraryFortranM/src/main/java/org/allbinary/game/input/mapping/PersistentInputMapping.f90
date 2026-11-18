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
module PersistentInputMapping_m
  use JR_m
  use Enumeration_m
  use GamePersistanceStrings_m
  use Input_m
  use InputPersistance_m
  use InputMappingEvent_m
  use InputMappingEventListenerInterface_m
  use NullInputMappingEventListener_m
  use NullUtil_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use AbeClientInformationInterface_m
  use CommonStrings_m
  use BasicArrayList_m
  use EnumerationUtil_m
  use ABHashtable_m
  use InputToGameKeyMapping_m
  implicit none

  type, extends(JObject) :: PersistentInputMapping
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(EnumerationUtil), pointer :: f_enumerationUtil => null()
    class(InputToGameKeyMapping), pointer :: f_inputMapping => null()
    class(InputMappingEventListenerInterface), pointer :: f_inputMappingEventListenerInterface => null()
    class(InputPersistance), pointer :: f_inputPersistance => null()
    class(InputMappingEvent), pointer :: f_inputMappingEvent => null()
  contains
    procedure :: jm_getTotalMapped_0 => PersistentInputMapping_jm_getTotalMapped_0
    procedure :: jm_isDefaultNew_0 => PersistentInputMapping_jm_isDefaultNew_0
    procedure :: jm_getDefault_0 => PersistentInputMapping_jm_getDefault_0
    procedure :: jm_setDefault_1 => PersistentInputMapping_jm_setDefault_1
    procedure :: jm_update_1 => PersistentInputMapping_jm_update_1
    procedure :: jm_save_1 => PersistentInputMapping_jm_save_1
    procedure :: jm_init_1 => PersistentInputMapping_jm_init_1
    procedure :: jm_setInputMappingEventListenerInterface_1 => PersistentInputMapping_jm_setInputMappingEventListenerInterface_1
    procedure :: jm_getInputMappingEventListenerInterface_0 => PersistentInputMapping_jm_getInputMappingEventListenerInterface_0
    procedure :: jm_getInputMapping_0 => PersistentInputMapping_jm_getInputMapping_0
    procedure :: jm_isDelete_1 => PersistentInputMapping_jm_isDelete_1
    procedure :: jm_isSystemInput_1 => PersistentInputMapping_jm_isSystemInput_1
  end type

  class(JObject), pointer, save :: PersistentInputMapping_jcell_instance => null()
  logical, save :: PersistentInputMapping_jset_instance = .false.

contains

  function PersistentInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PersistentInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PersistentInputMapping)
      jresult => object
    end select
  end function

  function PersistentInputMapping_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. PersistentInputMapping_jset_instance) then
      PersistentInputMapping_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    PersistentInputMapping_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => PersistentInputMapping_jcell_instance
  end function

  subroutine PersistentInputMapping_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    PersistentInputMapping_jset_instance = .true.
    if (present(jvalue)) then
      PersistentInputMapping_jcell_instance => jvalue
    else
      PersistentInputMapping_jcell_instance => null()
    end if
  end subroutine

  recursive function PersistentInputMapping_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(PersistentInputMapping), pointer :: this
    allocate(this)
    this%jclass = 'PersistentInputMapping'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_enumerationUtil => EnumerationUtil_jm_getInstance_0()
    this%f_inputMapping => InputToGameKeyMapping_jnew_0()
    this%f_inputMappingEventListenerInterface => NullInputMappingEventListener_jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER()
    
    this%f_inputMappingEvent => InputMappingEvent_jnew_1(this)
        this%f_inputPersistance => InputPersistance_jnew_1(j_name)
  end function

  recursive function PersistentInputMapping_jm_getNullInstance_0() result(jresult)
    class(PersistentInputMapping), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(GamePersistanceStrings), pointer :: jtemp3
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(PersistentInputMapping_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => GamePersistanceStrings_jm_getInstance_0()
            call PersistentInputMapping_jsetstatic_instance(PersistentInputMapping_jnew_1(jtemp3%f_SAVED_INPUT_CONFIGURATION_RECORD_ID))
        end if
        jresult => PersistentInputMapping_jcast(PersistentInputMapping_jstatic_instance())
        return
  end function

  recursive function PersistentInputMapping_jm_getTotalMapped_0(this) result(jresult)
    class(PersistentInputMapping), target :: this
    integer(4) :: jresult
    class(ABHashtable), pointer :: jtemp4
    class(InputToGameKeyMapping), pointer :: jtemp5
        jtemp5 => this%jm_getInputMapping_0()
        jtemp4 => jtemp5%jm_getHashtable_0()
        jresult = jtemp4%jm_size_0()
        return
  end function

  recursive function PersistentInputMapping_jm_isDefaultNew_0(this) result(jresult)
    class(PersistentInputMapping), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function PersistentInputMapping_jm_getDefault_0(this) result(jresult)
    class(PersistentInputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
        jresult => InputToGameKeyMapping_jm_getNullInstance_0()
        return
  end function

  recursive subroutine PersistentInputMapping_jm_setDefault_1(this, j_abeClientInformation)
    class(PersistentInputMapping), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(InputToGameKeyMapping), pointer :: jtemp6
    class(InputToGameKeyMapping), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => this%jm_getInputMapping_0()
        call jtemp6%jm_removeAll_0()
        jtemp7 => this%jm_getInputMapping_0()
        call jtemp7%jm_addMapping_1(this%jm_getDefault_0())
        call this%jm_save_1(j_abeClientInformation)
  end subroutine

  recursive subroutine PersistentInputMapping_jm_update_1(this, j_abeClientInformation)
    class(PersistentInputMapping), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_inputPersistance%jm_deleteAll_1(j_abeClientInformation)
        call this%jm_save_1(j_abeClientInformation)
  end subroutine

  recursive subroutine PersistentInputMapping_jm_save_1(this, j_abeClientInformation)
    class(PersistentInputMapping), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(InputToGameKeyMapping), pointer :: jtemp8
    class(InputMappingEventListenerInterface), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp8 => this%jm_getInputMapping_0()
        call this%f_inputPersistance%jm_save_2(j_abeClientInformation, jtemp8%jm_getHashtable_0())
        call this%f_inputMappingEvent%jm_setInputToGameKeyMapping_1(this%jm_getInputMapping_0())
        if (associated(this%jm_getInputMappingEventListenerInterface_0())) then
            jtemp9 => this%jm_getInputMappingEventListenerInterface_0()
            call jtemp9%jm_onInputMappingEvent_1(this%f_inputMappingEvent)
        end if
  end subroutine

  recursive subroutine PersistentInputMapping_jm_init_1(this, j_abeClientInformation)
    class(PersistentInputMapping), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_totalMappedTo
    integer(4) :: j_size
    class(ABHashtable), pointer :: j_hashtable
    class(Enumeration), pointer :: j_enumeration
    class(Input), pointer :: j_mappedToInput
    class(Input), pointer :: j_gameActionInput
    integer(4) :: j_index
    class(StringMaker), pointer :: j_stringBuffer
    class(InputToGameKeyMapping), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_INIT)
        continue ! try
            call this%f_inputPersistance%jm_loadAll_1(j_abeClientInformation)
        j_list => this%f_inputPersistance%jm_getList_0()
        j_totalMappedTo = 0
        j_size = j_list%jm_size_0()
        continue
        continue
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_hashtable => ABHashtable_jcast(j_list%f_objectArray((j_index) + 1)%v)
            j_enumeration => j_hashtable%jm_keys_0()
            do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
                j_mappedToInput => Input_jcast(this%f_enumerationUtil%jm_nextElement_1(j_enumeration))
                j_gameActionInput => Input_jcast(j_hashtable%jm_get_1(j_mappedToInput))
                j_totalMappedTo = j_totalMappedTo + 1
                jtemp10 => this%jm_getInputMapping_0()
                call jtemp10%jm_add_2(j_gameActionInput, j_mappedToInput)
            end do
            j_index = j_index + 1
        end do
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('End - Total Loaded Keys Mapped: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getTotalMapped_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' to: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_totalMappedTo)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, this%f_commonStrings%f_INIT)
  end subroutine

  recursive subroutine PersistentInputMapping_jm_setInputMappingEventListenerInterface_1(this, j_inputMappingEventListenerInterface)
    class(PersistentInputMapping), target :: this
    class(InputMappingEventListenerInterface), target, optional :: j_inputMappingEventListenerInterface
        this%f_inputMappingEventListenerInterface => j_inputMappingEventListenerInterface
  end subroutine

  recursive function PersistentInputMapping_jm_getInputMappingEventListenerInterface_0(this) result(jresult)
    class(PersistentInputMapping), target :: this
    class(InputMappingEventListenerInterface), pointer :: jresult
        jresult => this%f_inputMappingEventListenerInterface
        return
  end function

  recursive function PersistentInputMapping_jm_getInputMapping_0(this) result(jresult)
    class(PersistentInputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
        jresult => this%f_inputMapping
        return
  end function

  recursive function PersistentInputMapping_jm_isDelete_1(this, j_input) result(jresult)
    class(PersistentInputMapping), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function PersistentInputMapping_jm_isSystemInput_1(this, j_input) result(jresult)
    class(PersistentInputMapping), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module PersistentInputMapping_m

