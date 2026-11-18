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
! package org.allbinary.game
module IntermissionEnableListenerInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: IntermissionEnableListenerInterface
  contains
    procedure :: jm_notifyIntermission_1 => IntermissionEnableListenerInterface_jm_notifyIntermission_1
  end type


contains

  function IntermissionEnableListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IntermissionEnableListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IntermissionEnableListenerInterface)
      jresult => object
    end select
  end function

  function IntermissionEnableListenerInterface_jnew_0() result(this)
    class(IntermissionEnableListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'IntermissionEnableListenerInterface'
  end function

  recursive subroutine IntermissionEnableListenerInterface_jm_notifyIntermission_1(this, j_enable)
    class(IntermissionEnableListenerInterface), target :: this
    logical, value :: j_enable
    error stop 'AbstractMethodError: IntermissionEnableListenerInterface.notifyIntermission'
  end subroutine
end module IntermissionEnableListenerInterface_m

