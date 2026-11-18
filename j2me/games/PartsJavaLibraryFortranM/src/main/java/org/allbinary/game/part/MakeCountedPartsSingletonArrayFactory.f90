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
! package org.allbinary.game.part
module MakeCountedPartsSingletonArrayFactory_m
  use JR_m
  use CountedPickedUpLayerInterfaceFactory_m
  use CountedPickedUpLayerInterfaceFactoryPool_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use CountedLayerInterfaceFactoryPart_m
  use PartInterface_m
  implicit none

  type, extends(JObject) :: MakeCountedPartsSingletonArrayFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_getUpdated_1 => MakeCountedPartsSingletonArrayFactory_jm_getUpdated_1
  end type

  class(MakeCountedPartsSingletonArrayFactory), pointer, save :: MakeCountedPartsSingletonArrayFactory_jcell_instance => null()
  logical, save :: MakeCountedPartsSingletonArrayFactory_jset_instance = .false.

contains

  function MakeCountedPartsSingletonArrayFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MakeCountedPartsSingletonArrayFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MakeCountedPartsSingletonArrayFactory)
      jresult => object
    end select
  end function

  function MakeCountedPartsSingletonArrayFactory_jstatic_instance() result(jresult)
    class(MakeCountedPartsSingletonArrayFactory), pointer :: jresult
    if (.not. MakeCountedPartsSingletonArrayFactory_jset_instance) then
      MakeCountedPartsSingletonArrayFactory_jset_instance = .true.
      MakeCountedPartsSingletonArrayFactory_jcell_instance => MakeCountedPartsSingletonArrayFactory_jnew_0()
    end if
    jresult => MakeCountedPartsSingletonArrayFactory_jcell_instance
  end function

  subroutine MakeCountedPartsSingletonArrayFactory_jsetstatic_instance(jvalue)
    class(MakeCountedPartsSingletonArrayFactory), target, optional :: jvalue
    MakeCountedPartsSingletonArrayFactory_jset_instance = .true.
    if (present(jvalue)) then
      MakeCountedPartsSingletonArrayFactory_jcell_instance => jvalue
    else
      MakeCountedPartsSingletonArrayFactory_jcell_instance => null()
    end if
  end subroutine

  function MakeCountedPartsSingletonArrayFactory_jnew_0() result(this)
    class(MakeCountedPartsSingletonArrayFactory), pointer :: this
    class(BasicArrayListUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'MakeCountedPartsSingletonArrayFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => BasicArrayListUtil_jm_getInstance_0()
    this%f_list => jtemp1%jm_getImmutableInstance_0()
  end function

  recursive function MakeCountedPartsSingletonArrayFactory_jm_getInstance_0() result(jresult)
    class(MakeCountedPartsSingletonArrayFactory), pointer :: jresult
        jresult => MakeCountedPartsSingletonArrayFactory_jstatic_instance()
        return
  end function

  recursive function MakeCountedPartsSingletonArrayFactory_jm_getUpdated_1(this, j_partInterfaceArray) result(jresult)
    class(MakeCountedPartsSingletonArrayFactory), target :: this
    type(JRef) :: j_partInterfaceArray(:)
    type(JRef), allocatable :: jresult(:)
    integer(4) :: j_index
    class(BasicArrayList), pointer :: j_countedBasicArrayList
    class(CountedPickedUpLayerInterfaceFactory), pointer :: j_layerInterfaceFactoryInterface
    integer(4) :: j_size
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonStrings), pointer :: j_commonStrings
    type(JRef), allocatable :: j_newPartInterfaceArray(:)
    integer(4) :: j_newSize
    class(CountedPickedUpLayerInterfaceFactoryPool), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_list => BasicArrayListD_jnew_0()
        j_index = 0
        do while ((j_index < size(j_partInterfaceArray, 1)))
            jdiscardBoolean = this%f_list%jm_add_1(PartInterface_jcast(j_partInterfaceArray((j_index) + 1)%v))
            j_index = j_index + 1
        end do
        jtemp2 => CountedPickedUpLayerInterfaceFactoryPool_jm_getInstance_0()
        j_countedBasicArrayList => jtemp2%jm_getList_0()
        continue
        j_size = j_countedBasicArrayList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_layerInterfaceFactoryInterface => CountedPickedUpLayerInterfaceFactory_jcast(j_countedBasicArrayList%f_objectArray((j_index) + 1)%v)
            jdiscardBoolean = this%f_list%jm_add_1(CountedLayerInterfaceFactoryPart_jnew_2(0, j_layerInterfaceFactoryInterface))
            j_index = j_index + 1
        end do
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Total Parts: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_list%jm_size_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Counted: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_countedBasicArrayList%jm_size_0())
        j_commonStrings => CommonStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_commonStrings%f_GET_INSTANCE)
        j_newPartInterfaceArray = JR_newRefArray(this%f_list%jm_size_0())
        j_newSize = size(j_newPartInterfaceArray, 1)
        j_index = 0
        do while ((j_index < j_newSize))
            j_newPartInterfaceArray((j_index) + 1)%v => PartInterface_jcast(this%f_list%jm_get_1(j_index))
            j_index = j_index + 1
        end do
        jresult = j_newPartInterfaceArray
        return
  end function
end module MakeCountedPartsSingletonArrayFactory_m

