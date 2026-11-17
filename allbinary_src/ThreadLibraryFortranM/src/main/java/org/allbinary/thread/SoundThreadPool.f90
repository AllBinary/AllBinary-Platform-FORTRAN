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
! package org.allbinary.thread
module SoundThreadPool_m
  use JR_m
  use ThreadPool_m
  implicit none

  type, extends(JObject) :: SoundThreadPool
  end type

  class(ThreadPool), pointer, save :: SoundThreadPool_jcell_instance => null()
  logical, save :: SoundThreadPool_jset_instance = .false.

contains

  function SoundThreadPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SoundThreadPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SoundThreadPool)
      jresult => object
    end select
  end function

  function SoundThreadPool_jstatic_instance() result(jresult)
    class(ThreadPool), pointer :: jresult
    if (.not. SoundThreadPool_jset_instance) then
      SoundThreadPool_jset_instance = .true.
      SoundThreadPool_jcell_instance => ThreadPool_jnew_3('Sound', 1, ThreadPool_jstatic_NORMAL_PRIORITY())
    end if
    jresult => SoundThreadPool_jcell_instance
  end function

  function SoundThreadPool_jnew_0() result(this)
    class(SoundThreadPool), pointer :: this
    allocate(this)
    this%jclass = 'SoundThreadPool'
  end function

  recursive function SoundThreadPool_jm_getInstance_0() result(jresult)
    class(ThreadPool), pointer :: jresult
        jresult => SoundThreadPool_jstatic_instance()
        return
  end function
end module SoundThreadPool_m

