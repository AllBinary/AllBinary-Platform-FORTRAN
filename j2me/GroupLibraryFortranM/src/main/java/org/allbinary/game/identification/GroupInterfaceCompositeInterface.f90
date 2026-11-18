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
! package org.allbinary.game.identification
module GroupInterfaceCompositeInterface_m
  use JR_m
  use Group_m
  implicit none

  type, extends(JObject) :: GroupInterfaceCompositeInterface
  contains
    procedure :: jm_getGroupInterface_0 => GroupInterfaceCompositeInterface_jm_getGroupInterface_0
  end type


contains

  function GroupInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GroupInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GroupInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function GroupInterfaceCompositeInterface_jnew_0() result(this)
    class(GroupInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'GroupInterfaceCompositeInterface'
  end function

  recursive function GroupInterfaceCompositeInterface_jm_getGroupInterface_0(this) result(jresult)
    class(GroupInterfaceCompositeInterface), target :: this
    type(JRef), allocatable :: jresult(:)
    error stop 'AbstractMethodError: GroupInterfaceCompositeInterface.getGroupInterface'
  end function
end module GroupInterfaceCompositeInterface_m

