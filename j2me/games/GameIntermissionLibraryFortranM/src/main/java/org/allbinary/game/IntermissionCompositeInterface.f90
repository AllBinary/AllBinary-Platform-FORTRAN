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
module IntermissionCompositeInterface_m
  use JR_m
  use IntermissionInterface_m
  implicit none

  type, extends(JObject) :: IntermissionCompositeInterface
  contains
    procedure :: jm_getStartIntermissionInterface_0 => IntermissionCompositeInterface_jm_getStartIntermissionInterface_0
    procedure :: jm_getEndLevelIntermissionInterface_0 => IntermissionCompositeInterface_jm_getEndLevelIntermissionInterface_0
  end type


contains

  function IntermissionCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IntermissionCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IntermissionCompositeInterface)
      jresult => object
    end select
  end function

  function IntermissionCompositeInterface_jnew_0() result(this)
    class(IntermissionCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'IntermissionCompositeInterface'
  end function

  recursive function IntermissionCompositeInterface_jm_getStartIntermissionInterface_0(this) result(jresult)
    class(IntermissionCompositeInterface), target :: this
    class(IntermissionInterface), pointer :: jresult
    error stop 'AbstractMethodError: IntermissionCompositeInterface.getStartIntermissionInterface'
  end function

  recursive function IntermissionCompositeInterface_jm_getEndLevelIntermissionInterface_0(this) result(jresult)
    class(IntermissionCompositeInterface), target :: this
    class(IntermissionInterface), pointer :: jresult
    error stop 'AbstractMethodError: IntermissionCompositeInterface.getEndLevelIntermissionInterface'
  end function
end module IntermissionCompositeInterface_m

