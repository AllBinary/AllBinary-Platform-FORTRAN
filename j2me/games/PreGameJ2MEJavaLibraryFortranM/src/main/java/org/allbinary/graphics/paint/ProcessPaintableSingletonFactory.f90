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
! package org.allbinary.graphics.paint
module ProcessPaintableSingletonFactory_m
  use JR_m
  use ProcessPaintable_m
  implicit none

  type, extends(JObject) :: ProcessPaintableSingletonFactory
  end type

  class(ProcessPaintable), pointer, save :: ProcessPaintableSingletonFactory_jcell_SINGLETON => null()
  logical, save :: ProcessPaintableSingletonFactory_jset_SINGLETON = .false.

contains

  function ProcessPaintableSingletonFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProcessPaintableSingletonFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProcessPaintableSingletonFactory)
      jresult => object
    end select
  end function

  function ProcessPaintableSingletonFactory_jstatic_SINGLETON() result(jresult)
    class(ProcessPaintable), pointer :: jresult
    if (.not. ProcessPaintableSingletonFactory_jset_SINGLETON) then
      ProcessPaintableSingletonFactory_jset_SINGLETON = .true.
      ProcessPaintableSingletonFactory_jcell_SINGLETON => ProcessPaintable_jnew_0()
    end if
    jresult => ProcessPaintableSingletonFactory_jcell_SINGLETON
  end function

  subroutine ProcessPaintableSingletonFactory_jsetstatic_SINGLETON(jvalue)
    class(ProcessPaintable), target, optional :: jvalue
    ProcessPaintableSingletonFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      ProcessPaintableSingletonFactory_jcell_SINGLETON => jvalue
    else
      ProcessPaintableSingletonFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function ProcessPaintableSingletonFactory_jnew_0() result(this)
    class(ProcessPaintableSingletonFactory), pointer :: this
    allocate(this)
    this%jclass = 'ProcessPaintableSingletonFactory'
        continue
  end function

  recursive function ProcessPaintableSingletonFactory_jm_getInstance_0() result(jresult)
    class(ProcessPaintable), pointer :: jresult
        jresult => ProcessPaintableSingletonFactory_jstatic_SINGLETON()
        return
  end function
end module ProcessPaintableSingletonFactory_m

