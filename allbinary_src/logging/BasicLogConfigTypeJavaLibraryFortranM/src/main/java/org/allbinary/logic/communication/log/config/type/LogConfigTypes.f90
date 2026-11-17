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
! package org.allbinary.logic.communication.log.config.type
module LogConfigTypes_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: LogConfigTypes
  end type

  class(BasicArrayList), pointer, save :: LogConfigTypes_jcell_LOGGING => null()
  logical, save :: LogConfigTypes_jset_LOGGING = .false.

contains

  function LogConfigTypes_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LogConfigTypes), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LogConfigTypes)
      jresult => object
    end select
  end function

  function LogConfigTypes_jstatic_LOGGING() result(jresult)
    class(BasicArrayList), pointer :: jresult
    if (.not. LogConfigTypes_jset_LOGGING) then
      LogConfigTypes_jset_LOGGING = .true.
      LogConfigTypes_jcell_LOGGING => BasicArrayListD_jnew_0()
    end if
    jresult => LogConfigTypes_jcell_LOGGING
  end function

  recursive function LogConfigTypes_jnew_0() result(this)
    class(LogConfigTypes), pointer :: this
    allocate(this)
    this%jclass = 'LogConfigTypes'
        continue
  end function
end module LogConfigTypes_m

