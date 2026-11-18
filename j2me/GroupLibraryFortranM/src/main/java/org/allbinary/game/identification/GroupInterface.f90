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
module GroupInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: GroupInterface
  contains
    procedure :: jm_getGroupName_0 => GroupInterface_jm_getGroupName_0
    procedure :: jm_getGroupId_0 => GroupInterface_jm_getGroupId_0
  end type


contains

  function GroupInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GroupInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GroupInterface)
      jresult => object
    end select
  end function

  function GroupInterface_jnew_0() result(this)
    class(GroupInterface), pointer :: this
    allocate(this)
    this%jclass = 'GroupInterface'
  end function

  recursive function GroupInterface_jm_getGroupName_0(this) result(jresult)
    class(GroupInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: GroupInterface.getGroupName'
  end function

  recursive function GroupInterface_jm_getGroupId_0(this) result(jresult)
    class(GroupInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: GroupInterface.getGroupId'
  end function
end module GroupInterface_m

