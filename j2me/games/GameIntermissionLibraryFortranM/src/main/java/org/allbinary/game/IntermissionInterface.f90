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
module IntermissionInterface_m
  use JR_m
  use TimeDelayHelper_m
  use IntermissionEnableListenerInterface_m
  implicit none

  type, extends(JObject) :: IntermissionInterface
  contains
    procedure :: jm_getTimeDelayHelper_0 => IntermissionInterface_jm_getTimeDelayHelper_0
    procedure :: jm_isEnabled_0 => IntermissionInterface_jm_isEnabled_0
    procedure :: jm_setEnabled_1 => IntermissionInterface_jm_setEnabled_1
    procedure :: jm_setListener_1 => IntermissionInterface_jm_setListener_1
  end type


contains

  function IntermissionInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IntermissionInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IntermissionInterface)
      jresult => object
    end select
  end function

  function IntermissionInterface_jnew_0() result(this)
    class(IntermissionInterface), pointer :: this
    allocate(this)
    this%jclass = 'IntermissionInterface'
  end function

  recursive function IntermissionInterface_jm_getTimeDelayHelper_0(this) result(jresult)
    class(IntermissionInterface), target :: this
    class(TimeDelayHelper), pointer :: jresult
    error stop 'AbstractMethodError: IntermissionInterface.getTimeDelayHelper'
  end function

  recursive function IntermissionInterface_jm_isEnabled_0(this) result(jresult)
    class(IntermissionInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: IntermissionInterface.isEnabled'
  end function

  recursive subroutine IntermissionInterface_jm_setEnabled_1(this, j_value)
    class(IntermissionInterface), target :: this
    logical, value :: j_value
    error stop 'AbstractMethodError: IntermissionInterface.setEnabled'
  end subroutine

  recursive subroutine IntermissionInterface_jm_setListener_1(this, j_enableListener)
    class(IntermissionInterface), target :: this
    class(IntermissionEnableListenerInterface), target, optional :: j_enableListener
    error stop 'AbstractMethodError: IntermissionInterface.setListener'
  end subroutine
end module IntermissionInterface_m

