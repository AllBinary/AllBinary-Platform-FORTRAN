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
! package org.allbinary.game.layer.pickup
module CountedPickedUpLayerInterfaceFactory_m
  use JR_m
  use Animation_m
  use NullAnimationFactory_m
  use AllBinaryLayer_m
  use CommonStrings_m
  use ABHashtable_m
  use BasicArrayList_m
  use PickedUpLayerInterfaceFactory_m
  use CountedPickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerTypeFactory_m
  use IconLayer_m
  use CountedPickedUpLayerInterfaceFactoryPool_m
  use PickedUpLayerType_m
  implicit none

  type, extends(PickedUpLayerInterfaceFactory) :: CountedPickedUpLayerInterfaceFactory
    integer(4) :: f_id = 0
  contains
    procedure :: jm_getNextInstance_4 => CountedPickedUpLayerInterfaceFactory_jm_getNextInstance_4
    procedure :: jm_getTotal_0 => CountedPickedUpLayerInterfaceFactory_jm_getTotal_0
    procedure :: jm_getId_0 => CountedPickedUpLayerInterfaceFactory_jm_getId_0
  end type

  ! CountedPickedUpLayerInterfaceFactory used as a CountedPickedUpLayerInterfaceFactoryInterface
  type, extends(CountedPickedUpLayerInterfaceFactoryInterface) :: CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface
    class(CountedPickedUpLayerInterfaceFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getTotal_0 => CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface_jm_getTotal_0
    procedure :: jm_getId_0 => CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface_jm_getId_0
  end type

  class(CountedPickedUpLayerInterfaceFactory), pointer, save :: CountedPickedUpLayerInterfaceFactory_jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY => null()
  logical, save :: CountedPickedUpLayerInterfaceFactory_jset_NULL_COUNTED_PICKUP_LAYER_FACTORY = .false.

contains

  function CountedPickedUpLayerInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CountedPickedUpLayerInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CountedPickedUpLayerInterfaceFactory)
      jresult => object
    end select
  end function

  function CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface_jnew(object) result(jresult)
    class(CountedPickedUpLayerInterfaceFactory), target :: object
    class(CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CountedPickedUpLayerInterfaceFactory'
    jresult%jtarget => object
  end function

  recursive function CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface_jm_getTotal_0(this) result(jresult)
    class(CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getTotal_0()
  end function

  recursive function CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface_jm_getId_0(this) result(jresult)
    class(CountedPickedUpLayerInterfaceFactory_jas_CountedPickedUpLayerInterfaceFactoryInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getId_0()
  end function

  function CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY() result(jresult)
    class(CountedPickedUpLayerInterfaceFactory), pointer :: jresult
    class(PickedUpLayerTypeFactory), pointer :: jtemp1
    class(NullAnimationFactory), pointer :: jtemp2
    if (.not. CountedPickedUpLayerInterfaceFactory_jset_NULL_COUNTED_PICKUP_LAYER_FACTORY) then
      CountedPickedUpLayerInterfaceFactory_jset_NULL_COUNTED_PICKUP_LAYER_FACTORY = .true.
      jtemp1 => PickedUpLayerTypeFactory_jm_getInstance_0()
    jtemp2 => NullAnimationFactory_jm_getFactoryInstance_0()
    CountedPickedUpLayerInterfaceFactory_jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY => CountedPickedUpLayerInterfaceFactory_jnew_3(jtemp1%f_NONE, IconLayer_jstatic_NULL_ICON_LAYER(), jtemp2%jm_getInstance_1(0))
    end if
    jresult => CountedPickedUpLayerInterfaceFactory_jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY
  end function

  subroutine CountedPickedUpLayerInterfaceFactory_jsetstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY(jvalue)
    class(CountedPickedUpLayerInterfaceFactory), target, optional :: jvalue
    CountedPickedUpLayerInterfaceFactory_jset_NULL_COUNTED_PICKUP_LAYER_FACTORY = .true.
    if (present(jvalue)) then
      CountedPickedUpLayerInterfaceFactory_jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY => jvalue
    else
      CountedPickedUpLayerInterfaceFactory_jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY => null()
    end if
  end subroutine

  recursive function CountedPickedUpLayerInterfaceFactory_jnew_3(j_pickeUpLayerType, j_iconLayer, j_animationInterface) result(this)
    class(PickedUpLayerType), target, optional :: j_pickeUpLayerType
    class(IconLayer), target, optional :: j_iconLayer
    class(Animation), target, optional :: j_animationInterface
    class(CountedPickedUpLayerInterfaceFactory), pointer :: this
    class(BasicArrayList), pointer :: j_list
    class(CountedPickedUpLayerInterfaceFactoryPool), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CountedPickedUpLayerInterfaceFactory'
    
        continue ! super()
        jtemp3 => CountedPickedUpLayerInterfaceFactoryPool_jm_getInstance_0()
        j_list => jtemp3%jm_getList_0()
        this%f_id = j_list%jm_size_0()
        jdiscardBoolean = j_list%jm_add_1(this)
  end function

  recursive function CountedPickedUpLayerInterfaceFactory_jm_getNextInstance_4(this, j_hashtable, j_x, j_y, j_z) result(jresult)
    class(CountedPickedUpLayerInterfaceFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(AllBinaryLayer), pointer :: jresult
    class(CommonStrings), pointer :: jtemp4
        jtemp4 => CommonStrings_jm_getInstance_0()
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function CountedPickedUpLayerInterfaceFactory_jm_getTotal_0(this) result(jresult)
    class(CountedPickedUpLayerInterfaceFactory), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive function CountedPickedUpLayerInterfaceFactory_jm_getId_0(this) result(jresult)
    class(CountedPickedUpLayerInterfaceFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_id
        return
  end function
end module CountedPickedUpLayerInterfaceFactory_m

