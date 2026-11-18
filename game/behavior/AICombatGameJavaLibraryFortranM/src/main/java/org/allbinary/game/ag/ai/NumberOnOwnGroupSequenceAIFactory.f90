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
! package org.allbinary.game.ag.ai
module NumberOnOwnGroupSequenceAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Integer_m
  use NumberInSameGroupSequence_m
  use NumberOnOwnGroupSequenceAI_m
  implicit none

  type, extends(JObject) :: NumberOnOwnGroupSequenceAIFactory
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getInstance_4 => NumberOnOwnGroupSequenceAIFactory_jm_getInstance_4
  end type


contains

  function NumberOnOwnGroupSequenceAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberOnOwnGroupSequenceAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberOnOwnGroupSequenceAIFactory)
      jresult => object
    end select
  end function

  function NumberOnOwnGroupSequenceAIFactory_jnew_0() result(this)
    class(NumberOnOwnGroupSequenceAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'NumberOnOwnGroupSequenceAIFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function NumberOnOwnGroupSequenceAIFactory_jm_getInstance_4(this, j_hashtable, j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(NumberOnOwnGroupSequenceAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    type(JRef) :: j_artificialIntelligenceInterface(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    integer(4), allocatable :: j_integerArray(:)
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: j_integerCanBeNull
    integer(4) :: j_index
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonStrings), pointer :: j_commonStrings
    integer(4), allocatable :: j_numberOnSameTeam(:)
    class(NumberInSameGroupSequence), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => NumberInSameGroupSequence_jm_getInstance_0()
        j_integerArray = jtemp1%f_NUMBER_ON_SAME_TEAM_SEQUENCE
        j_list => BasicArrayListD_jnew_0()
        j_index = 0
        do while ((j_index < size(j_integerArray, 1)))
            j_integerCanBeNull => j_hashtable%jm_get_1(j_integerArray((j_index) + 1))
            if ((.not. associated(j_integerCanBeNull))) then
                exit
            end if
            jdiscardBoolean = j_list%jm_add_1(j_integerCanBeNull)
            j_index = j_index + 1
        end do
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Total AI Properties: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_list%jm_size_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' == Total AI: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(size(j_artificialIntelligenceInterface, 1))
        jdiscardRef => j_stringBuffer%jm_append_1(' + 1')
        j_commonStrings => CommonStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_commonStrings%f_GET_INSTANCE)
        if (((size(j_artificialIntelligenceInterface, 1) - 1) > j_list%jm_size_0())) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        if (((size(j_artificialIntelligenceInterface, 1) - 1) < j_list%jm_size_0())) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        j_numberOnSameTeam = JR_newIntArray(j_list%jm_size_0())
        j_index = 0
        do while ((j_index < size(j_numberOnSameTeam, 1)))
            j_numberOnSameTeam((j_index) + 1) = JR_unboxInt(j_list%f_objectArray((j_index) + 1)%v)
            j_index = j_index + 1
        end do
        jresult => NumberOnOwnGroupSequenceAI_jnew_4(j_numberOnSameTeam, j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput)
        return
  end function
end module NumberOnOwnGroupSequenceAIFactory_m

