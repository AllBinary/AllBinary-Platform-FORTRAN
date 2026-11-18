! Generated Code Do Not Modify
! package org.allbinary.game.layer.drop
module PlacedLayerFactory_m
  use JR_m
  use AllBinaryLayerFactoryInterface_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  implicit none

  type, extends(JObject) :: PlacedLayerFactory
    class(BasicArrayList), pointer :: f_list => null()
    class(BasicArrayListUtil), pointer :: f_basicArrayListUtil => null()
  contains
    procedure :: jm_clear_0 => PlacedLayerFactory_jm_clear_0
    procedure :: jm_getSize_0 => PlacedLayerFactory_jm_getSize_0
    procedure :: jm_getRandomInstance_0 => PlacedLayerFactory_jm_getRandomInstance_0
    procedure :: jm_add_1 => PlacedLayerFactory_jm_add_1
  end type

  class(PlacedLayerFactory), pointer, save :: PlacedLayerFactory_jcell_instance => null()
  logical, save :: PlacedLayerFactory_jset_instance = .false.

contains

  function PlacedLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlacedLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlacedLayerFactory)
      jresult => object
    end select
  end function

  function PlacedLayerFactory_jstatic_instance() result(jresult)
    class(PlacedLayerFactory), pointer :: jresult
    if (.not. PlacedLayerFactory_jset_instance) then
      PlacedLayerFactory_jset_instance = .true.
      PlacedLayerFactory_jcell_instance => PlacedLayerFactory_jnew_0()
    end if
    jresult => PlacedLayerFactory_jcell_instance
  end function

  subroutine PlacedLayerFactory_jsetstatic_instance(jvalue)
    class(PlacedLayerFactory), target, optional :: jvalue
    PlacedLayerFactory_jset_instance = .true.
    if (present(jvalue)) then
      PlacedLayerFactory_jcell_instance => jvalue
    else
      PlacedLayerFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function PlacedLayerFactory_jnew_0() result(this)
    class(PlacedLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'PlacedLayerFactory'
    this%f_list => BasicArrayListD_jnew_0()
    this%f_basicArrayListUtil => BasicArrayListUtil_jm_getInstance_0()
        continue
  end function

  recursive subroutine PlacedLayerFactory_jm_clear_0(this)
    class(PlacedLayerFactory), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
  end subroutine

  recursive function PlacedLayerFactory_jm_getInstance_0() result(jresult)
    class(PlacedLayerFactory), pointer :: jresult
        jresult => PlacedLayerFactory_jstatic_instance()
        return
  end function

  recursive function PlacedLayerFactory_jm_getSize_0(this) result(jresult)
    class(PlacedLayerFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_list%jm_size_0()
        return
  end function

  recursive function PlacedLayerFactory_jm_getRandomInstance_0(this) result(jresult)
    class(PlacedLayerFactory), target :: this
    class(AllBinaryLayerFactoryInterface), pointer :: jresult
        jresult => AllBinaryLayerFactoryInterface_jcast(this%f_basicArrayListUtil%jm_getRandom_1(this%f_list))
        return
  end function

  recursive subroutine PlacedLayerFactory_jm_add_1(this, j_layerInterfaceFactoryInterface)
    class(PlacedLayerFactory), target :: this
    class(AllBinaryLayerFactoryInterface), target, optional :: j_layerInterfaceFactoryInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_layerInterfaceFactoryInterface)
  end subroutine
end module PlacedLayerFactory_m

