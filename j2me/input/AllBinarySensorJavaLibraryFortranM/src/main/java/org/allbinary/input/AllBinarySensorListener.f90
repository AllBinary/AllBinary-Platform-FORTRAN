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
! package org.allbinary.input
module AllBinarySensorListener_m
  use JR_m
  implicit none

  type, extends(JObject) :: AllBinarySensorListener
  contains
    procedure :: jm_onSensorChange_0 => AllBinarySensorListener_jm_onSensorChange_0
  end type


contains

  function AllBinarySensorListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinarySensorListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinarySensorListener)
      jresult => object
    end select
  end function

  function AllBinarySensorListener_jnew_0() result(this)
    class(AllBinarySensorListener), pointer :: this
    allocate(this)
    this%jclass = 'AllBinarySensorListener'
  end function

  recursive subroutine AllBinarySensorListener_jm_onSensorChange_0(this)
    class(AllBinarySensorListener), target :: this
    error stop 'AbstractMethodError: AllBinarySensorListener.onSensorChange'
  end subroutine
end module AllBinarySensorListener_m

