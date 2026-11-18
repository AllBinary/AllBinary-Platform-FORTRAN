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
! package org.allbinary.time
module RendererInitializedStupidTimerFactory_m
  use JR_m
  use StupidTimer_m
  implicit none

  type, extends(JObject) :: RendererInitializedStupidTimerFactory
  end type

  class(StupidTimer), pointer, save :: RendererInitializedStupidTimerFactory_jcell_instance => null()
  logical, save :: RendererInitializedStupidTimerFactory_jset_instance = .false.

contains

  function RendererInitializedStupidTimerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RendererInitializedStupidTimerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RendererInitializedStupidTimerFactory)
      jresult => object
    end select
  end function

  function RendererInitializedStupidTimerFactory_jstatic_instance() result(jresult)
    class(StupidTimer), pointer :: jresult
    if (.not. RendererInitializedStupidTimerFactory_jset_instance) then
      RendererInitializedStupidTimerFactory_jset_instance = .true.
      RendererInitializedStupidTimerFactory_jcell_instance => StupidTimer_jnew_0()
    end if
    jresult => RendererInitializedStupidTimerFactory_jcell_instance
  end function

  subroutine RendererInitializedStupidTimerFactory_jsetstatic_instance(jvalue)
    class(StupidTimer), target, optional :: jvalue
    RendererInitializedStupidTimerFactory_jset_instance = .true.
    if (present(jvalue)) then
      RendererInitializedStupidTimerFactory_jcell_instance => jvalue
    else
      RendererInitializedStupidTimerFactory_jcell_instance => null()
    end if
  end subroutine

  function RendererInitializedStupidTimerFactory_jnew_0() result(this)
    class(RendererInitializedStupidTimerFactory), pointer :: this
    allocate(this)
    this%jclass = 'RendererInitializedStupidTimerFactory'
  end function

  recursive function RendererInitializedStupidTimerFactory_jm_getInstance_0() result(jresult)
    class(StupidTimer), pointer :: jresult
        jresult => RendererInitializedStupidTimerFactory_jstatic_instance()
        return
  end function
end module RendererInitializedStupidTimerFactory_m

