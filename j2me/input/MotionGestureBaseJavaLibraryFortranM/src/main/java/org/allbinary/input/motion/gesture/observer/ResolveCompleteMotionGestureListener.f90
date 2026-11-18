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
! package org.allbinary.input.motion.gesture.observer
module ResolveCompleteMotionGestureListener_m
  use JR_m
  use CompleteMotionGestureInputEventHandler_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use GameKeyFromMotionGestureEventListener_m
  use MotionGestureToMotionGestureActionAssociation_m
  use MotionGestureConfiguration_m
  use MotionGestureConfigurationFactory_m
  use LogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use CompleteMotionGestureListenerInterface_m
  implicit none

  type, extends(CompleteMotionGestureListenerInterface) :: ResolveCompleteMotionGestureListener
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_onMotionGestureCompleted_1 => ResolveCompleteMotionGestureListener_jm_onMotionGestureCompleted_1
  end type


contains

  function ResolveCompleteMotionGestureListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResolveCompleteMotionGestureListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResolveCompleteMotionGestureListener)
      jresult => object
    end select
  end function

  recursive function ResolveCompleteMotionGestureListener_jnew_0() result(this)
    class(ResolveCompleteMotionGestureListener), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(CompleteMotionGestureInputEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ResolveCompleteMotionGestureListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        j_commonStrings => CommonStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3('MotionGesture to CompleteMotionGesture Reciever', this, j_commonStrings%f_CONSTRUCTOR)
        jtemp1 => CompleteMotionGestureInputEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListener_1(GameKeyFromMotionGestureEventListener_jnew_0())
  end function

  recursive subroutine ResolveCompleteMotionGestureListener_jm_onMotionGestureCompleted_1(this, j_list)
    class(ResolveCompleteMotionGestureListener), target :: this
    class(BasicArrayList), target, optional :: j_list
    class(MotionGestureConfiguration), pointer :: j_configuration
    class(BasicArrayList), pointer :: j_commandActionsList
    integer(4) :: j_size
    class(MotionGestureToMotionGestureActionAssociation), pointer :: j_association
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: j_completeMotionGestureInputEvent
    integer(4) :: j_index
    class(CompleteMotionGestureInputEventHandler), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_configuration => MotionGestureConfigurationFactory_jm_getInstance_0()
        j_commandActionsList => j_configuration%jm_getAssociateCommandActionsList_0()
        j_size = j_commandActionsList%jm_size_0()
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            j_association => MotionGestureToMotionGestureActionAssociation_jcast(j_commandActionsList%f_objectArray((j_index) + 1)%v)
            if ((j_association%jm_isMotionGestureArrayEquals_1(j_list) .eqv. .true.)) then
                j_completeMotionGestureInputEvent => GameKeyCompleteMotionGestureInputEvent_jcast(j_association%jm_getCommandAction_0())
                jtemp2 => CompleteMotionGestureInputEventHandler_jm_getInstance_0()
                call jtemp2%jm_fireEvent_1(j_completeMotionGestureInputEvent)
                exit
            end if
            j_index = j_index - 1
        end do
  end subroutine
end module ResolveCompleteMotionGestureListener_m

