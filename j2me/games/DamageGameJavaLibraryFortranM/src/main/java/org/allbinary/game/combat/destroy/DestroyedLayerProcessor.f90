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
! package org.allbinary.game.combat.destroy
module DestroyedLayerProcessor_m
  use JR_m
  use DestroyEventCircularStaticPool_m
  use DestroyedEvent_m
  use DestroyedEventHandler_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use BasicLayerProcessor_m
  use CommonStrings_m
  use BasicArrayList_m
  implicit none

  type, extends(BasicLayerProcessor) :: DestroyedLayerProcessor
  contains
    procedure :: jm_process_1 => DestroyedLayerProcessor_jm_process_1
  end type

  class(BasicLayerProcessor), pointer, save :: DestroyedLayerProcessor_jcell_DESTROYED_LAYER_PROCESSOR => null()
  logical, save :: DestroyedLayerProcessor_jset_DESTROYED_LAYER_PROCESSOR = .false.

contains

  function DestroyedLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyedLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyedLayerProcessor)
      jresult => object
    end select
  end function

  function DestroyedLayerProcessor_jstatic_DESTROYED_LAYER_PROCESSOR() result(jresult)
    class(BasicLayerProcessor), pointer :: jresult
    if (.not. DestroyedLayerProcessor_jset_DESTROYED_LAYER_PROCESSOR) then
      DestroyedLayerProcessor_jset_DESTROYED_LAYER_PROCESSOR = .true.
      DestroyedLayerProcessor_jcell_DESTROYED_LAYER_PROCESSOR => BasicLayerProcessor_jstatic_NULL_LAYER_PROCESSOR()
    end if
    jresult => DestroyedLayerProcessor_jcell_DESTROYED_LAYER_PROCESSOR
  end function

  subroutine DestroyedLayerProcessor_jsetstatic_DESTROYED_LAYER_PROCESSOR(jvalue)
    class(BasicLayerProcessor), target, optional :: jvalue
    DestroyedLayerProcessor_jset_DESTROYED_LAYER_PROCESSOR = .true.
    if (present(jvalue)) then
      DestroyedLayerProcessor_jcell_DESTROYED_LAYER_PROCESSOR => jvalue
    else
      DestroyedLayerProcessor_jcell_DESTROYED_LAYER_PROCESSOR => null()
    end if
  end subroutine

  recursive function DestroyedLayerProcessor_jnew_0() result(this)
    class(DestroyedLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'DestroyedLayerProcessor'
        continue
  end function

  recursive subroutine DestroyedLayerProcessor_jm_init_0()
        call DestroyedLayerProcessor_jsetstatic_DESTROYED_LAYER_PROCESSOR(DestroyedLayerProcessor_jnew_0())
  end subroutine

  recursive function DestroyedLayerProcessor_jm_getInstance_0() result(jresult)
    class(BasicLayerProcessor), pointer :: jresult
        jresult => DestroyedLayerProcessor_jstatic_DESTROYED_LAYER_PROCESSOR()
        return
  end function

  recursive subroutine DestroyedLayerProcessor_jm_process_1(this, j_allBinaryLayerManager)
    class(DestroyedLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(DestroyedEventHandler), pointer :: j_destroyedEventHandler
    class(DestroyEventCircularStaticPool), pointer :: j_destroyEventCircularStaticPool
    class(DestroyedEvent), pointer :: j_destroyedEvent
    class(AllBinaryLayer), pointer :: j_layerInterface
    class(JObject), pointer :: j_layerInterfaceCanBeNull
    class(CommonStrings), pointer :: j_commonStrings
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%jm_getList_0()
        j_size = j_list%jm_size_0()
        j_destroyedEventHandler => DestroyedEventHandler_jm_getInstance_0()
        j_destroyEventCircularStaticPool => DestroyEventCircularStaticPool_jm_getInstance_0()
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_layerInterfaceCanBeNull => j_list%f_objectArray((j_index) + 1)%v
            if (associated(j_layerInterfaceCanBeNull)) then
                j_layerInterface => AllBinaryLayer_jcast(j_layerInterfaceCanBeNull)
                call j_allBinaryLayerManager%jm_remove_1(j_layerInterface)
                j_destroyedEvent => j_destroyEventCircularStaticPool%jm_getInstanceForLayer_1(j_layerInterface)
                call j_destroyedEventHandler%jm_fireEvent_1(j_destroyedEvent)
            else
                j_commonStrings => CommonStrings_jm_getInstance_0()
            end if
            j_index = j_index + 1
        end do
        call j_list%jm_clear_0()
  end subroutine
end module DestroyedLayerProcessor_m

function DestroyedLayerProcessor_jnew_0_jext() result(this)
  use DestroyedLayerProcessor_m, only: JObject, DestroyedLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DestroyedLayerProcessor_jnew_0()
end function

