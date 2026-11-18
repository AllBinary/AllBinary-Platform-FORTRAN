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
! package org.allbinary.midlet
module ExitRunnable_m
  use JR_m
  use NullCanvas_m
  use Processor_m
  use LogUtil_m
  use CommonStrings_m
  use AllBinaryMidlet_m
  implicit none

  type, extends(JObject) :: ExitRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(AllBinaryMidlet), pointer :: f_midlet => null()
    class(Processor), pointer :: f_processor => null()
    logical :: f_isProgress = .false.
  contains
    procedure :: jm_run_0 => ExitRunnable_jm_run_0
  end type


contains

  function ExitRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ExitRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ExitRunnable)
      jresult => object
    end select
  end function

  recursive function ExitRunnable_jnew_3(j_midlet, j_processor, j_isProgress) result(this)
    class(AllBinaryMidlet), target, optional :: j_midlet
    class(Processor), target, optional :: j_processor
    logical, value :: j_isProgress
    class(ExitRunnable), pointer :: this
    allocate(this)
    this%jclass = 'ExitRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    
        this%f_midlet => j_midlet
        this%f_isProgress = j_isProgress
        this%f_processor => j_processor
  end function

  recursive subroutine ExitRunnable_jm_run_0(this)
    class(ExitRunnable), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START_RUNNABLE, this, this%f_commonStrings%f_RUN)
            call this%f_midlet%jm_destroyAppInRunnable_2(.false., this%f_isProgress)
            call this%f_midlet%jm_setDisplay_1(NullCanvas_jstatic_NULL_CANVAS())
            call this%f_midlet%jm_notifyDestroyed_0()
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
            call this%f_processor%jm_process_0()
  end subroutine
end module ExitRunnable_m

