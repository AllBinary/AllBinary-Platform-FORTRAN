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
module PrimaryPlayerQueueFactory_m
  use JR_m
  use PlayerQueue_m
  implicit none

  type, extends(JObject) :: PrimaryPlayerQueueFactory
  end type

  class(PlayerQueue), pointer, save :: PrimaryPlayerQueueFactory_jcell_SINGLETON => null()
  logical, save :: PrimaryPlayerQueueFactory_jset_SINGLETON = .false.

contains

  function PrimaryPlayerQueueFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PrimaryPlayerQueueFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PrimaryPlayerQueueFactory)
      jresult => object
    end select
  end function

  function PrimaryPlayerQueueFactory_jstatic_SINGLETON() result(jresult)
    class(PlayerQueue), pointer :: jresult
    if (.not. PrimaryPlayerQueueFactory_jset_SINGLETON) then
      PrimaryPlayerQueueFactory_jset_SINGLETON = .true.
      PrimaryPlayerQueueFactory_jcell_SINGLETON => PlayerQueue_jnew_1(4)
    end if
    jresult => PrimaryPlayerQueueFactory_jcell_SINGLETON
  end function

  subroutine PrimaryPlayerQueueFactory_jsetstatic_SINGLETON(jvalue)
    class(PlayerQueue), target, optional :: jvalue
    PrimaryPlayerQueueFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      PrimaryPlayerQueueFactory_jcell_SINGLETON => jvalue
    else
      PrimaryPlayerQueueFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function PrimaryPlayerQueueFactory_jnew_0() result(this)
    class(PrimaryPlayerQueueFactory), pointer :: this
    allocate(this)
    this%jclass = 'PrimaryPlayerQueueFactory'
  end function

  recursive function PrimaryPlayerQueueFactory_jm_getInstance_0() result(jresult)
    class(PlayerQueue), pointer :: jresult
        jresult => PrimaryPlayerQueueFactory_jstatic_SINGLETON()
        return
  end function
end module PrimaryPlayerQueueFactory_m

