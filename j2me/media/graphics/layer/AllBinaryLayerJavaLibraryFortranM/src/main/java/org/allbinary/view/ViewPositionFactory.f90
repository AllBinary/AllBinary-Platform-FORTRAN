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
module ViewPositionFactory_m
  use JR_m
  use ViewPositionFactoryInterface_m
  use ViewPosition_m
  use ViewPositionBase_m
  implicit none

  type, extends(ViewPositionFactoryInterface) :: ViewPositionFactory
  contains
    procedure :: jm_getInstance_0 => ViewPositionFactory_jm_getInstance_0
  end type


contains

  function ViewPositionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ViewPositionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ViewPositionFactory)
      jresult => object
    end select
  end function

  function ViewPositionFactory_jnew_0() result(this)
    class(ViewPositionFactory), pointer :: this
    allocate(this)
    this%jclass = 'ViewPositionFactory'
  end function

  recursive function ViewPositionFactory_jm_getInstance_0(this) result(jresult)
    class(ViewPositionFactory), target :: this
    class(ViewPositionBase), pointer :: jresult
        jresult => ViewPosition_jm_getInstanceD_0()
        return
  end function
end module ViewPositionFactory_m

