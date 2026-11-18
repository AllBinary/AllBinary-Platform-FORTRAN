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
! package org.allbinary.media.audio
module SecondaryPlayerQueueFactory_m
  use JR_m
  use PlayerQueue_m
  implicit none

  type, extends(JObject) :: SecondaryPlayerQueueFactory
  end type

  class(PlayerQueue), pointer, save :: SecondaryPlayerQueueFactory_jcell_SINGLETON => null()
  logical, save :: SecondaryPlayerQueueFactory_jset_SINGLETON = .false.

contains

  function SecondaryPlayerQueueFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SecondaryPlayerQueueFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SecondaryPlayerQueueFactory)
      jresult => object
    end select
  end function

  function SecondaryPlayerQueueFactory_jstatic_SINGLETON() result(jresult)
    class(PlayerQueue), pointer :: jresult
    if (.not. SecondaryPlayerQueueFactory_jset_SINGLETON) then
      SecondaryPlayerQueueFactory_jset_SINGLETON = .true.
      SecondaryPlayerQueueFactory_jcell_SINGLETON => PlayerQueue_jnew_1(4)
    end if
    jresult => SecondaryPlayerQueueFactory_jcell_SINGLETON
  end function

  subroutine SecondaryPlayerQueueFactory_jsetstatic_SINGLETON(jvalue)
    class(PlayerQueue), target, optional :: jvalue
    SecondaryPlayerQueueFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      SecondaryPlayerQueueFactory_jcell_SINGLETON => jvalue
    else
      SecondaryPlayerQueueFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function SecondaryPlayerQueueFactory_jnew_0() result(this)
    class(SecondaryPlayerQueueFactory), pointer :: this
    allocate(this)
    this%jclass = 'SecondaryPlayerQueueFactory'
  end function

  recursive function SecondaryPlayerQueueFactory_jm_getInstance_0() result(jresult)
    class(PlayerQueue), pointer :: jresult
        jresult => SecondaryPlayerQueueFactory_jstatic_SINGLETON()
        return
  end function
end module SecondaryPlayerQueueFactory_m

