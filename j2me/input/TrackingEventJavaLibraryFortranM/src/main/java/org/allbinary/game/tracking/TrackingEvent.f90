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
! package org.allbinary.game.tracking
module TrackingEvent_m
  use JR_m
  use AllBinaryLayer_m
  use StringMaker_m
  use AllBinaryEventObject_m
  use TrackingEventHandler_m
  implicit none

  type, extends(AllBinaryEventObject) :: TrackingEvent
    class(AllBinaryLayer), pointer :: f_layerInterface => null()
  contains
    procedure :: jm_init_1 => TrackingEvent_jm_init_1
    procedure :: jm_getLayerInterface_0 => TrackingEvent_jm_getLayerInterface_0
    procedure :: jm_setLayerInterface_1 => TrackingEvent_jm_setLayerInterface_1
    procedure :: jm_setLayerInterfaceForCircularStaticPool_1 => TrackingEvent_jm_setLayerInterfaceForCircularStaticPool_1
    procedure :: jm_toString_0 => TrackingEvent_jm_toString_0
  end type


contains

  function TrackingEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrackingEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrackingEvent)
      jresult => object
    end select
  end function

  recursive function TrackingEvent_jnew_1(j_allBinaryLayerInterface) result(this)
    class(JObject), target, optional :: j_allBinaryLayerInterface
    class(TrackingEvent), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TrackingEvent'
    this%f_layerInterface => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
        continue ! super()
        if ((.not. JR_same(j_allBinaryLayerInterface, TrackingEventHandler_jm_getInstance_0()))) then
            call this%jm_setLayerInterface_1(AllBinaryLayer_jcast(j_allBinaryLayerInterface))
        end if
  end function

  recursive subroutine TrackingEvent_jm_init_1(this, j_anyType)
    class(TrackingEvent), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setSource_1(j_anyType)
  end subroutine

  recursive function TrackingEvent_jm_getLayerInterface_0(this) result(jresult)
    class(TrackingEvent), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_layerInterface
        return
  end function

  recursive subroutine TrackingEvent_jm_setLayerInterface_1(this, j_layerInterface)
    class(TrackingEvent), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
        this%f_layerInterface => j_layerInterface
  end subroutine

  recursive subroutine TrackingEvent_jm_setLayerInterfaceForCircularStaticPool_1(this, j_layerInterface)
    class(TrackingEvent), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
        this%f_layerInterface => j_layerInterface
  end subroutine

  recursive function TrackingEvent_jm_toString_0(this) result(jresult)
    class(TrackingEvent), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(JR_unescape('TrackingEvent: \n'))
        jdiscardRef => j_stringBuffer%jm_append_1('LayerInterface: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_layerInterface%jm_toString_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module TrackingEvent_m

