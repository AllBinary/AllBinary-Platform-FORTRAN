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
! package org.allbinary.midlet
module MidletCompositeInterface_m
  use JR_m
  use AllBinaryMidlet_m
  implicit none

  type, extends(JObject) :: MidletCompositeInterface
  contains
    procedure :: jm_setMidlet_1 => MidletCompositeInterface_jm_setMidlet_1
    procedure :: jm_getMidlet_0 => MidletCompositeInterface_jm_getMidlet_0
    procedure :: jm_getDisplayable_0 => MidletCompositeInterface_jm_getDisplayable_0
  end type


contains

  function MidletCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MidletCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MidletCompositeInterface)
      jresult => object
    end select
  end function

  function MidletCompositeInterface_jnew_0() result(this)
    class(MidletCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'MidletCompositeInterface'
  end function

  recursive subroutine MidletCompositeInterface_jm_setMidlet_1(this, j_midlet)
    class(MidletCompositeInterface), target :: this
    class(MIDlet), target, optional :: j_midlet
    error stop 'AbstractMethodError: MidletCompositeInterface.setMidlet'
  end subroutine

  recursive function MidletCompositeInterface_jm_getMidlet_0(this) result(jresult)
    class(MidletCompositeInterface), target :: this
    class(AllBinaryMidlet), pointer :: jresult
    error stop 'AbstractMethodError: MidletCompositeInterface.getMidlet'
  end function

  recursive function MidletCompositeInterface_jm_getDisplayable_0(this) result(jresult)
    class(MidletCompositeInterface), target :: this
    class(Displayable), pointer :: jresult
    error stop 'AbstractMethodError: MidletCompositeInterface.getDisplayable'
  end function
end module MidletCompositeInterface_m

