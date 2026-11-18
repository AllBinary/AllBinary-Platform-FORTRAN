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
module GameTickTimeDelayHelperFactory_m
  use JR_m
  use GameTickTimeDelayHelper_m
  implicit none

  type, extends(JObject) :: GameTickTimeDelayHelperFactory
  end type

  class(GameTickTimeDelayHelper), pointer, save :: GameTickTimeDelayHelperFactory_jcell_instance => null()
  logical, save :: GameTickTimeDelayHelperFactory_jset_instance = .false.

contains

  function GameTickTimeDelayHelperFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameTickTimeDelayHelperFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameTickTimeDelayHelperFactory)
      jresult => object
    end select
  end function

  function GameTickTimeDelayHelperFactory_jstatic_instance() result(jresult)
    class(GameTickTimeDelayHelper), pointer :: jresult
    if (.not. GameTickTimeDelayHelperFactory_jset_instance) then
      GameTickTimeDelayHelperFactory_jset_instance = .true.
      GameTickTimeDelayHelperFactory_jcell_instance => GameTickTimeDelayHelper_jnew_1(int((-1), 8))
    end if
    jresult => GameTickTimeDelayHelperFactory_jcell_instance
  end function

  subroutine GameTickTimeDelayHelperFactory_jsetstatic_instance(jvalue)
    class(GameTickTimeDelayHelper), target, optional :: jvalue
    GameTickTimeDelayHelperFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameTickTimeDelayHelperFactory_jcell_instance => jvalue
    else
      GameTickTimeDelayHelperFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GameTickTimeDelayHelperFactory_jnew_0() result(this)
    class(GameTickTimeDelayHelperFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameTickTimeDelayHelperFactory'
        continue
  end function

  recursive function GameTickTimeDelayHelperFactory_jm_getInstance_0() result(jresult)
    class(GameTickTimeDelayHelper), pointer :: jresult
        jresult => GameTickTimeDelayHelperFactory_jstatic_instance()
        return
  end function
end module GameTickTimeDelayHelperFactory_m

