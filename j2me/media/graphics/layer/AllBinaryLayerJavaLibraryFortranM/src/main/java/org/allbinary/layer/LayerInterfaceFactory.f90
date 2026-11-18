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
! package org.allbinary.layer
module LayerInterfaceFactory_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use Integer_m
  use ABLayer_m
  use LayerInterfaceFactoryInterface_m
  use AllBinaryLayer_m
  implicit none

  type, extends(JObject) :: LayerInterfaceFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_list => null()
    character(len=:), allocatable :: f_HASHTABLE_LABEL
  contains
    procedure :: jm_init_0 => LayerInterfaceFactory_jm_init_0
    procedure :: jm_getNexInstance_4 => LayerInterfaceFactory_jm_getNexInstance_4
    procedure :: jm_add_1 => LayerInterfaceFactory_jm_add_1
  end type

  class(LayerInterfaceFactory), pointer, save :: LayerInterfaceFactory_jcell_SINGLETON => null()
  logical, save :: LayerInterfaceFactory_jset_SINGLETON = .false.

contains

  function LayerInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerInterfaceFactory)
      jresult => object
    end select
  end function

  function LayerInterfaceFactory_jstatic_SINGLETON() result(jresult)
    class(LayerInterfaceFactory), pointer :: jresult
    if (.not. LayerInterfaceFactory_jset_SINGLETON) then
      LayerInterfaceFactory_jset_SINGLETON = .true.
      LayerInterfaceFactory_jcell_SINGLETON => LayerInterfaceFactory_jnew_0()
    end if
    jresult => LayerInterfaceFactory_jcell_SINGLETON
  end function

  subroutine LayerInterfaceFactory_jsetstatic_SINGLETON(jvalue)
    class(LayerInterfaceFactory), target, optional :: jvalue
    LayerInterfaceFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      LayerInterfaceFactory_jcell_SINGLETON => jvalue
    else
      LayerInterfaceFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function LayerInterfaceFactory_jnew_0() result(this)
    class(LayerInterfaceFactory), pointer :: this
    class(BasicArrayListUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'LayerInterfaceFactory'
    this%f_HASHTABLE_LABEL = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => BasicArrayListUtil_jm_getInstance_0()
    this%f_list => jtemp1%jm_getImmutableInstance_0()
    this%f_HASHTABLE_LABEL = 'Hashtable: '
  end function

  recursive function LayerInterfaceFactory_jm_getInstance_0() result(jresult)
    class(LayerInterfaceFactory), pointer :: jresult
        jresult => LayerInterfaceFactory_jstatic_SINGLETON()
        return
  end function

  recursive subroutine LayerInterfaceFactory_jm_init_0(this)
    class(LayerInterfaceFactory), target :: this
        this%f_list => BasicArrayListD_jnew_0()
  end subroutine

  recursive function LayerInterfaceFactory_jm_getNexInstance_4(this, j_hashtable, j_x, j_y, j_z) result(jresult)
    class(LayerInterfaceFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(AllBinaryLayer), pointer :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    integer(4) :: j_typeInteger
    class(LayerInterfaceFactoryInterface), pointer :: j_layerInterfaceFactoryInterface
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        jtemp5 => StringUtil_jm_getInstance_0()
        jtemp4 => StringMaker_jnew_0()
        jtemp3 => jtemp4%jm_append_1(this%f_HASHTABLE_LABEL)
        jtemp2 => jtemp3%jm_append_1(jtemp5%jm_toString_1(j_hashtable))
        call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, j_commonStrings%f_GET_INSTANCE)
        j_typeInteger = JR_unboxInt(j_hashtable%jm_get_1(ABLayer_jstatic_ID()))
        j_layerInterfaceFactoryInterface => LayerInterfaceFactoryInterface_jcast(this%f_list%f_objectArray(((int(j_typeInteger, 4) - 1)) + 1)%v)
        jresult => j_layerInterfaceFactoryInterface%jm_getNextInstance_4(j_hashtable, j_x, j_y, j_z)
        return
  end function

  recursive subroutine LayerInterfaceFactory_jm_add_1(this, j_layerInterfaceFactoryInterface)
    class(LayerInterfaceFactory), target :: this
    class(LayerInterfaceFactoryInterface), target, optional :: j_layerInterfaceFactoryInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_layerInterfaceFactoryInterface)
  end subroutine
end module LayerInterfaceFactory_m

