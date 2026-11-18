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
! package org.allbinary.game.layer.drop
module DropLayerFactory_m
  use JR_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  implicit none

  type, extends(JObject) :: DropLayerFactory
    class(BasicArrayList), pointer :: f_list => null()
    class(BasicArrayListUtil), pointer :: f_basicArrayListUtil => null()
  contains
    procedure :: jm_clear_0 => DropLayerFactory_jm_clear_0
    procedure :: jm_getSize_0 => DropLayerFactory_jm_getSize_0
    procedure :: jm_getRandomInstance_0 => DropLayerFactory_jm_getRandomInstance_0
    procedure :: jm_add_1 => DropLayerFactory_jm_add_1
    procedure :: jm_getList_0 => DropLayerFactory_jm_getList_0
  end type

  class(DropLayerFactory), pointer, save :: DropLayerFactory_jcell_DROP_LAYER_FACTORY => null()
  logical, save :: DropLayerFactory_jset_DROP_LAYER_FACTORY = .false.

contains

  function DropLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DropLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DropLayerFactory)
      jresult => object
    end select
  end function

  function DropLayerFactory_jstatic_DROP_LAYER_FACTORY() result(jresult)
    class(DropLayerFactory), pointer :: jresult
    if (.not. DropLayerFactory_jset_DROP_LAYER_FACTORY) then
      DropLayerFactory_jset_DROP_LAYER_FACTORY = .true.
      DropLayerFactory_jcell_DROP_LAYER_FACTORY => DropLayerFactory_jnew_0()
    end if
    jresult => DropLayerFactory_jcell_DROP_LAYER_FACTORY
  end function

  subroutine DropLayerFactory_jsetstatic_DROP_LAYER_FACTORY(jvalue)
    class(DropLayerFactory), target, optional :: jvalue
    DropLayerFactory_jset_DROP_LAYER_FACTORY = .true.
    if (present(jvalue)) then
      DropLayerFactory_jcell_DROP_LAYER_FACTORY => jvalue
    else
      DropLayerFactory_jcell_DROP_LAYER_FACTORY => null()
    end if
  end subroutine

  recursive function DropLayerFactory_jnew_0() result(this)
    class(DropLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'DropLayerFactory'
    this%f_list => BasicArrayListD_jnew_0()
    this%f_basicArrayListUtil => BasicArrayListUtil_jm_getInstance_0()
        continue
  end function

  recursive subroutine DropLayerFactory_jm_clear_0(this)
    class(DropLayerFactory), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
  end subroutine

  recursive function DropLayerFactory_jm_getInstance_0() result(jresult)
    class(DropLayerFactory), pointer :: jresult
        jresult => DropLayerFactory_jstatic_DROP_LAYER_FACTORY()
        return
  end function

  recursive function DropLayerFactory_jm_getSize_0(this) result(jresult)
    class(DropLayerFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_list%jm_size_0()
        return
  end function

  recursive function DropLayerFactory_jm_getRandomInstance_0(this) result(jresult)
    class(DropLayerFactory), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
        jresult => PickedUpLayerInterfaceFactoryInterface_jcast(this%f_basicArrayListUtil%jm_getRandom_1(this%f_list))
        return
  end function

  recursive subroutine DropLayerFactory_jm_add_1(this, j_layerInterfaceFactoryInterface)
    class(DropLayerFactory), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: j_layerInterfaceFactoryInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_layerInterfaceFactoryInterface)
  end subroutine

  recursive function DropLayerFactory_jm_getList_0(this) result(jresult)
    class(DropLayerFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function
end module DropLayerFactory_m

