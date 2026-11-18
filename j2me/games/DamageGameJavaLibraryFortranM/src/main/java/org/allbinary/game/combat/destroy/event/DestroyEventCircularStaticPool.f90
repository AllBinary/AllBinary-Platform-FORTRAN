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
! package org.allbinary.game.combat.destroy.event
module DestroyEventCircularStaticPool_m
  use JR_m
  use AllBinaryGameCanvas_m
  use AllBinaryLayer_m
  use AllBinaryEventCircularPool_m
  use DestroyEventFactory_m
  use DestroyedEvent_m
  implicit none

  type, extends(JObject) :: DestroyEventCircularStaticPool
    class(AllBinaryEventCircularPool), pointer :: f_EVENT_POOL => null()
  contains
    procedure :: jm_init_1 => DestroyEventCircularStaticPool_jm_init_1
    procedure :: jm_getInstanceForLayer_1 => DestroyEventCircularStaticPool_jm_getInstanceForLayer_1
  end type

  class(DestroyEventCircularStaticPool), pointer, save :: DestroyEventCircularStaticPool_jcell_instance => null()
  logical, save :: DestroyEventCircularStaticPool_jset_instance = .false.

contains

  function DestroyEventCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyEventCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyEventCircularStaticPool)
      jresult => object
    end select
  end function

  function DestroyEventCircularStaticPool_jstatic_instance() result(jresult)
    class(DestroyEventCircularStaticPool), pointer :: jresult
    if (.not. DestroyEventCircularStaticPool_jset_instance) then
      DestroyEventCircularStaticPool_jset_instance = .true.
      DestroyEventCircularStaticPool_jcell_instance => DestroyEventCircularStaticPool_jnew_0()
    end if
    jresult => DestroyEventCircularStaticPool_jcell_instance
  end function

  subroutine DestroyEventCircularStaticPool_jsetstatic_instance(jvalue)
    class(DestroyEventCircularStaticPool), target, optional :: jvalue
    DestroyEventCircularStaticPool_jset_instance = .true.
    if (present(jvalue)) then
      DestroyEventCircularStaticPool_jcell_instance => jvalue
    else
      DestroyEventCircularStaticPool_jcell_instance => null()
    end if
  end subroutine

  recursive function DestroyEventCircularStaticPool_jnew_0() result(this)
    class(DestroyEventCircularStaticPool), pointer :: this
    allocate(this)
    this%jclass = 'DestroyEventCircularStaticPool'
    this%f_EVENT_POOL => AllBinaryEventCircularPool_jnew_1(20)
        continue
  end function

  recursive function DestroyEventCircularStaticPool_jm_getInstance_0() result(jresult)
    class(DestroyEventCircularStaticPool), pointer :: jresult
        jresult => DestroyEventCircularStaticPool_jstatic_instance()
        return
  end function

  recursive subroutine DestroyEventCircularStaticPool_jm_init_1(this, j_combatGameCanvas)
    class(DestroyEventCircularStaticPool), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_combatGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_EVENT_POOL%jm_initAllBinaryEventCircularPool_1(DestroyEventFactory_jnew_1(j_combatGameCanvas))
  end subroutine

  recursive function DestroyEventCircularStaticPool_jm_getInstanceForLayer_1(this, j_layerInterface) result(jresult)
    class(DestroyEventCircularStaticPool), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(DestroyedEvent), pointer :: jresult
    class(DestroyedEvent), pointer :: j_destroyedEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_destroyedEvent => DestroyedEvent_jcast(this%f_EVENT_POOL%jm_getNextInstance_0())
        call j_destroyedEvent%jm_setLayerInterfaceForCircularStaticPool_1(j_layerInterface)
        jresult => j_destroyedEvent
        return
  end function
end module DestroyEventCircularStaticPool_m

