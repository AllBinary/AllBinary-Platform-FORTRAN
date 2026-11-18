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
! package org.allbinary.debug
module DebugFactory_m
  use JR_m
  use NoDebug_m
  use DebugInterface_m
  implicit none

  type, extends(JObject) :: DebugFactory
  end type


contains

  function DebugFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DebugFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DebugFactory)
      jresult => object
    end select
  end function

  function DebugFactory_jnew_0() result(this)
    class(DebugFactory), pointer :: this
    allocate(this)
    this%jclass = 'DebugFactory'
  end function

  recursive function DebugFactory_jm_getInstance_0() result(jresult)
    class(DebugInterface), pointer :: jresult
        jresult => NoDebug_jm_getInstance_0()
        return
  end function
end module DebugFactory_m

