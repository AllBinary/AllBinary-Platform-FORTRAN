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
module MotionEventFactory_m
  use JR_m
  use Input_m
  use InputFactory_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use AllBinaryEventObject_m
  use AllBinaryEventObjectFactoryInterface_m
  use MotionGestureEvent_m
  implicit none

  type, extends(AllBinaryEventObjectFactoryInterface) :: MotionEventFactory
    class(JObject), pointer :: f_source => null()
    integer(4) :: f_id = 0
  contains
    procedure :: jm_getInstance_0 => MotionEventFactory_jm_getInstance_0
  end type

  integer(4), save :: MotionEventFactory_jcell_index
  logical, save :: MotionEventFactory_jset_index = .false.

contains

  function MotionEventFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionEventFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionEventFactory)
      jresult => object
    end select
  end function

  function MotionEventFactory_jstatic_index() result(jresult)
    integer(4) :: jresult
    if (.not. MotionEventFactory_jset_index) then
      MotionEventFactory_jset_index = .true.
      MotionEventFactory_jcell_index = 0
    end if
    jresult = MotionEventFactory_jcell_index
  end function

  subroutine MotionEventFactory_jsetstatic_index(jvalue)
    integer(4), value :: jvalue
    MotionEventFactory_jset_index = .true.
    MotionEventFactory_jcell_index = jvalue
  end subroutine

  recursive function MotionEventFactory_jnew_2(j_source, j_id) result(this)
    class(JObject), target, optional :: j_source
    integer(4), value :: j_id
    class(MotionEventFactory), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'MotionEventFactory'
    
    
        this%f_source => j_source
        this%f_id = j_id
        jtemp1 => TouchMotionGestureFactory_jm_getInstance_0()
        call MotionEventFactory_jsetstatic_index(jtemp1%f_LAST_MOTION%jm_getId_0())
  end function

  recursive function MotionEventFactory_jm_getInstance_0(this) result(jresult)
    class(MotionEventFactory), target :: this
    class(AllBinaryEventObject), pointer :: jresult
    class(InputFactory), pointer :: j_inputFactory
    class(Input), pointer :: j_input
    integer(4) :: jtemp2
    class(TouchMotionGestureFactory), pointer :: jtemp3
        j_inputFactory => InputFactory_jm_getInstance_0()
        jtemp2 = MotionEventFactory_jstatic_index()
        call MotionEventFactory_jsetstatic_index(MotionEventFactory_jstatic_index() + 1)
        j_input => j_inputFactory%jm_getInstanceById_1(jtemp2)
        if (JR_same(j_input, j_inputFactory%f_NO_INPUT)) then
            jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
            jresult => MotionGestureEvent_jnew_3(this%f_source, this%f_id, MotionGestureInput_jcast(jtemp3%f_NO_MOTION))
            return
        else
            jresult => MotionGestureEvent_jnew_3(this%f_source, this%f_id, MotionGestureInput_jcast(j_input))
            return
        end if
  end function
end module MotionEventFactory_m

