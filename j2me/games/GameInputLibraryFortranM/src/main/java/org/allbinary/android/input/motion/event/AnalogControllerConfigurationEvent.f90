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
! package org.allbinary.android.input.motion.event
module AnalogControllerConfigurationEvent_m
  use JR_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: AnalogControllerConfigurationEvent
  end type


contains

  function AnalogControllerConfigurationEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogControllerConfigurationEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogControllerConfigurationEvent)
      jresult => object
    end select
  end function

  recursive function AnalogControllerConfigurationEvent_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(AnalogControllerConfigurationEvent), pointer :: this
    allocate(this)
    this%jclass = 'AnalogControllerConfigurationEvent'
        continue ! super()
  end function
end module AnalogControllerConfigurationEvent_m

