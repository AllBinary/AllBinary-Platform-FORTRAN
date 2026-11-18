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
module StatePaintableFactory_m
  use JR_m
  use StatePaintable_m
  implicit none

  type, extends(JObject) :: StatePaintableFactory
  end type

  class(StatePaintable), pointer, save :: StatePaintableFactory_jcell_instance => null()
  logical, save :: StatePaintableFactory_jset_instance = .false.

contains

  function StatePaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StatePaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StatePaintableFactory)
      jresult => object
    end select
  end function

  function StatePaintableFactory_jstatic_instance() result(jresult)
    class(StatePaintable), pointer :: jresult
    if (.not. StatePaintableFactory_jset_instance) then
      StatePaintableFactory_jset_instance = .true.
      StatePaintableFactory_jcell_instance => StatePaintable_jnew_0()
    end if
    jresult => StatePaintableFactory_jcell_instance
  end function

  subroutine StatePaintableFactory_jsetstatic_instance(jvalue)
    class(StatePaintable), target, optional :: jvalue
    StatePaintableFactory_jset_instance = .true.
    if (present(jvalue)) then
      StatePaintableFactory_jcell_instance => jvalue
    else
      StatePaintableFactory_jcell_instance => null()
    end if
  end subroutine

  function StatePaintableFactory_jnew_0() result(this)
    class(StatePaintableFactory), pointer :: this
    allocate(this)
    this%jclass = 'StatePaintableFactory'
  end function

  recursive function StatePaintableFactory_jm_getInstance_0() result(jresult)
    class(StatePaintable), pointer :: jresult
        jresult => StatePaintableFactory_jstatic_instance()
        return
  end function
end module StatePaintableFactory_m

