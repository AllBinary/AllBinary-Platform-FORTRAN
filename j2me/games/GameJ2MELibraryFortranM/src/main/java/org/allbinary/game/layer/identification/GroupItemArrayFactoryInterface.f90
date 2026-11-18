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
! package org.allbinary.game.layer.identification
module GroupItemArrayFactoryInterface_m
  use JR_m
  use Group_m
  use ABCustomItem_m
  implicit none

  type, extends(JObject) :: GroupItemArrayFactoryInterface
  contains
    procedure :: jm_getInstance_1 => GroupItemArrayFactoryInterface_jm_getInstance_1
  end type


contains

  function GroupItemArrayFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GroupItemArrayFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GroupItemArrayFactoryInterface)
      jresult => object
    end select
  end function

  function GroupItemArrayFactoryInterface_jnew_0() result(this)
    class(GroupItemArrayFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'GroupItemArrayFactoryInterface'
  end function

  recursive function GroupItemArrayFactoryInterface_jm_getInstance_1(this, j_groupInterface) result(jresult)
    class(GroupItemArrayFactoryInterface), target :: this
    class(Group), target, optional :: j_groupInterface
    type(JRef), allocatable :: jresult(:)
    error stop 'AbstractMethodError: GroupItemArrayFactoryInterface.getInstance'
  end function
end module GroupItemArrayFactoryInterface_m

