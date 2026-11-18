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
! package org.allbinary.view
module ViewPositionFactoryInterface_m
  use JR_m
  use ViewPositionBase_m
  implicit none

  type, extends(JObject) :: ViewPositionFactoryInterface
  contains
    procedure :: jm_getInstance_0 => ViewPositionFactoryInterface_jm_getInstance_0
  end type


contains

  function ViewPositionFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ViewPositionFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ViewPositionFactoryInterface)
      jresult => object
    end select
  end function

  function ViewPositionFactoryInterface_jnew_0() result(this)
    class(ViewPositionFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'ViewPositionFactoryInterface'
  end function

  recursive function ViewPositionFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(ViewPositionFactoryInterface), target :: this
    class(ViewPositionBase), pointer :: jresult
    error stop 'AbstractMethodError: ViewPositionFactoryInterface.getInstance'
  end function
end module ViewPositionFactoryInterface_m

