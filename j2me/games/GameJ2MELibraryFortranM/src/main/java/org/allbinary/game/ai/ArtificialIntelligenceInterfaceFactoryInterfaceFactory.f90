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
! package org.allbinary.game.ai
module ArtificialIntelligenceInterfaceFactoryInterfaceFactory_m
  use JR_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use Integer_m
  use BasicAI_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  implicit none

  type, extends(JObject) :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_clear_0 => ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jm_clear_0
    procedure :: jm_getInstanceFromCollection_1 => ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jm_getInstanceFromCollection_1
    procedure :: jm_add_1 => ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jm_add_1
  end type

  class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), pointer, save :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jcell_SINGLETON => null()
  logical, save :: ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jset_SINGLETON = .false.

contains

  function ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceInterfaceFactoryInterfaceFactory)
      jresult => object
    end select
  end function

  function ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jstatic_SINGLETON() result(jresult)
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), pointer :: jresult
    if (.not. ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jset_SINGLETON) then
      ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jset_SINGLETON = .true.
      ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jcell_SINGLETON => ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jnew_0()
    end if
    jresult => ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jcell_SINGLETON
  end function

  subroutine ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jsetstatic_SINGLETON(jvalue)
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), target, optional :: jvalue
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jcell_SINGLETON => jvalue
    else
      ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jnew_0() result(this)
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), pointer :: this
    class(BasicArrayListUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ArtificialIntelligenceInterfaceFactoryInterfaceFactory'
    jtemp1 => BasicArrayListUtil_jm_getInstance_0()
    this%f_list => jtemp1%jm_getImmutableInstance_0()
  end function

  recursive subroutine ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jm_clear_0(this)
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), target :: this
        this%f_list => BasicArrayListD_jnew_0()
  end subroutine

  recursive function ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jm_getInstance_0() result(jresult)
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), pointer :: jresult
        jresult => ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jstatic_SINGLETON()
        return
  end function

  recursive function ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jm_getInstanceFromCollection_1(this, j_hashtable) result(jresult)
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(ArtificialIntelligenceInterfaceFactoryInterface), pointer :: jresult
    integer(4) :: j_typeInteger
    integer(4) :: j_type
    class(ArtificialIntelligenceInterfaceFactoryInterface), pointer :: j_artificialIntelligenceInterfaceFactoryInterface
        j_typeInteger = JR_unboxInt(j_hashtable%jm_get_1(BasicAI_jstatic_ID()))
        j_type = int(j_typeInteger, 4)
        j_artificialIntelligenceInterfaceFactoryInterface => ArtificialIntelligenceInterfaceFactoryInterface_jcast(this%f_list%f_objectArray(((j_type - 1)) + 1)%v)
        jresult => j_artificialIntelligenceInterfaceFactoryInterface
        return
  end function

  recursive subroutine ArtificialIntelligenceInterfaceFactoryInterfaceFactory_jm_add_1(this, j_artificialIntelligenceInterfaceFactoryInterface)
    class(ArtificialIntelligenceInterfaceFactoryInterfaceFactory), target :: this
    class(ArtificialIntelligenceInterfaceFactoryInterface), target, optional :: j_artificialIntelligenceInterfaceFactoryInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_artificialIntelligenceInterfaceFactoryInterface)
  end subroutine
end module ArtificialIntelligenceInterfaceFactoryInterfaceFactory_m

