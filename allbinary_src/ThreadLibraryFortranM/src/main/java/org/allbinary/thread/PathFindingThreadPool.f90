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
module PathFindingThreadPool_m
  use JR_m
  use ThreadPool_m
  use PriorityRunnable_m
  implicit none

  type, extends(ThreadPool) :: PathFindingThreadPool
  contains
    procedure :: jm_runTaskWithPriority_1 => PathFindingThreadPool_jm_runTaskWithPriority_1
    procedure :: jm_runTask_1 => PathFindingThreadPool_jm_runTask_1
    procedure :: jm_startTask_1 => PathFindingThreadPool_jm_startTask_1
    procedure :: jm_completedTask_1 => PathFindingThreadPool_jm_completedTask_1
  end type

  class(ThreadPool), pointer, save :: PathFindingThreadPool_jcell_instance => null()
  logical, save :: PathFindingThreadPool_jset_instance = .false.

contains

  function PathFindingThreadPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PathFindingThreadPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PathFindingThreadPool)
      jresult => object
    end select
  end function

  function PathFindingThreadPool_jstatic_instance() result(jresult)
    class(ThreadPool), pointer :: jresult
    if (.not. PathFindingThreadPool_jset_instance) then
      PathFindingThreadPool_jset_instance = .true.
      PathFindingThreadPool_jcell_instance => PathFindingThreadPool_jnew_3('PathFinding', 1, 1)
    end if
    jresult => PathFindingThreadPool_jcell_instance
  end function

  subroutine PathFindingThreadPool_jsetstatic_instance(jvalue)
    class(ThreadPool), target, optional :: jvalue
    PathFindingThreadPool_jset_instance = .true.
    if (present(jvalue)) then
      PathFindingThreadPool_jcell_instance => jvalue
    else
      PathFindingThreadPool_jcell_instance => null()
    end if
  end subroutine

  recursive function PathFindingThreadPool_jnew_3(j_poolName, j_numThreads, j_priority) result(this)
    character(len=*), intent(in) :: j_poolName
    integer(4), value :: j_numThreads
    integer(4), value :: j_priority
    class(PathFindingThreadPool), pointer :: this
    allocate(this)
    this%jclass = 'PathFindingThreadPool'
        continue ! super()
  end function

  recursive function PathFindingThreadPool_jm_getInstance_0() result(jresult)
    class(ThreadPool), pointer :: jresult
        jresult => PathFindingThreadPool_jstatic_instance()
        return
  end function

  recursive subroutine PathFindingThreadPool_jm_runTaskWithPriority_1(this, j_task)
    class(PathFindingThreadPool), target :: this
    class(PriorityRunnable), target, optional :: j_task
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ThreadPool%jm_runTaskWithPriority_1(j_task)
  end subroutine

  recursive subroutine PathFindingThreadPool_jm_runTask_1(this, j_task)
    class(PathFindingThreadPool), target :: this
    class(JObject), target, optional :: j_task
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ThreadPool%jm_runTask_1(j_task)
  end subroutine

  recursive subroutine PathFindingThreadPool_jm_startTask_1(this, j_task)
    class(PathFindingThreadPool), target :: this
    class(JObject), target, optional :: j_task
    continue
  end subroutine

  recursive subroutine PathFindingThreadPool_jm_completedTask_1(this, j_task)
    class(PathFindingThreadPool), target :: this
    class(JObject), target, optional :: j_task
    continue
  end subroutine
end module PathFindingThreadPool_m

function PathFindingThreadPool_jnew_3_jext(p1, p2, p3) result(this)
  use PathFindingThreadPool_m, only: JObject, PathFindingThreadPool_jnew_3
  implicit none
      character(len=*), intent(in) :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => PathFindingThreadPool_jnew_3(p1, p2, p3)
end function

