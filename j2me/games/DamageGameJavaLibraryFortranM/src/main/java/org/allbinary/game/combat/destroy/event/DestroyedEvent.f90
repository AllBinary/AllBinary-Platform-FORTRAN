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
module DestroyedEvent_m
  use JR_m
  use AllBinaryGameCanvas_m
  use NullGameCanvas_m
  use AllBinaryLayer_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use DestroyedEventHandler_m
  implicit none

  type, extends(AllBinaryEventObject) :: DestroyedEvent
    class(AllBinaryGameCanvas), pointer :: f_allBinaryGameCanvas => null()
    class(AllBinaryLayer), pointer :: f_allBinaryLayerInterface => null()
  contains
    procedure :: jm_getAllBinaryGameCanvas_0 => DestroyedEvent_jm_getAllBinaryGameCanvas_0
    procedure :: jm_getLayerInterface_0 => DestroyedEvent_jm_getLayerInterface_0
    procedure :: jm_setAllBinaryGameCanvas_1 => DestroyedEvent_jm_setAllBinaryGameCanvas_1
    procedure :: jm_setLayerInterfaceForCircularStaticPool_1 => DestroyedEvent_jm_setLayerInterfaceForCircularStaticPool_1
    procedure :: jm_toString_0 => DestroyedEvent_jm_toString_0
  end type


contains

  function DestroyedEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyedEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyedEvent)
      jresult => object
    end select
  end function

  recursive function DestroyedEvent_jnew_1(j_combatGameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_combatGameCanvas
    class(DestroyedEvent), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'DestroyedEvent'
    this%f_allBinaryGameCanvas => NullGameCanvas_jm_getInstance_0()
    this%f_allBinaryLayerInterface => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
        continue ! super()
        call this%jm_setAllBinaryGameCanvas_1(j_combatGameCanvas)
  end function

  recursive function DestroyedEvent_jm_getAllBinaryGameCanvas_0(this) result(jresult)
    class(DestroyedEvent), target :: this
    class(AllBinaryGameCanvas), pointer :: jresult
        jresult => this%f_allBinaryGameCanvas
        return
  end function

  recursive function DestroyedEvent_jm_getLayerInterface_0(this) result(jresult)
    class(DestroyedEvent), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_allBinaryLayerInterface
        return
  end function

  recursive subroutine DestroyedEvent_jm_setAllBinaryGameCanvas_1(this, j_allBinaryGameCanvas)
    class(DestroyedEvent), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
        this%f_allBinaryGameCanvas => j_allBinaryGameCanvas
  end subroutine

  recursive subroutine DestroyedEvent_jm_setLayerInterfaceForCircularStaticPool_1(this, j_allBinaryLayerInterface)
    class(DestroyedEvent), target :: this
    class(AllBinaryLayer), target, optional :: j_allBinaryLayerInterface
        this%f_allBinaryLayerInterface => j_allBinaryLayerInterface
  end subroutine

  recursive function DestroyedEvent_jm_toString_0(this) result(jresult)
    class(DestroyedEvent), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(JR_unescape('DestroyedEvent: \n'))
        jdiscardRef => j_stringBuffer%jm_append_1('AllBinaryLayerInterface: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_allBinaryLayerInterface%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(JR_unescape('\nAllBinaryGameCanvas: '))
        jtemp1 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_1(this%jm_getAllBinaryGameCanvas_0()))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module DestroyedEvent_m

