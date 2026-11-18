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
module ProgressMidlet_m
  use JR_m
  use Processor_m
  use AbeClientInformationInterface_m
  use ClientInformationFactory_m
  use PrimaryThreadPool_m
  use ThreadPool_m
  use AllBinaryMidlet_m
  use MidletExitProcessorFactory_m
  use ExitRunnable_m
  implicit none

  type, extends(AllBinaryMidlet) :: ProgressMidlet
    class(AbeClientInformationInterface), pointer :: f_abeClientInformation => null()
  contains
    procedure :: jm_preInit_0 => ProgressMidlet_jm_preInit_0
    procedure :: jm_exitProgress_1 => ProgressMidlet_jm_exitProgress_1
  end type


contains

  function ProgressMidlet_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProgressMidlet), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProgressMidlet)
      jresult => object
    end select
  end function

  recursive function ProgressMidlet_jnew_1(j_clientInformationFactory) result(this)
    class(ClientInformationFactory), target, optional :: j_clientInformationFactory
    class(ProgressMidlet), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ProgressMidlet'
    
        call this%jm_preInit_0()
        this%f_abeClientInformation => j_clientInformationFactory%jm_getInstance_0()
  end function

  recursive subroutine ProgressMidlet_jm_preInit_0(this)
    class(ProgressMidlet), target :: this
    continue
  end subroutine

  recursive subroutine ProgressMidlet_jm_exitProgress_1(this, j_isProgress)
    class(ProgressMidlet), target :: this
    logical, value :: j_isProgress
    class(Processor), pointer :: j_processor
    class(ThreadPool), pointer :: j_primaryThreadPool
    class(JObject), pointer :: j_runnable
    class(MidletExitProcessorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => MidletExitProcessorFactory_jm_getInstance_0()
        j_processor => jtemp1%jm_getExitInstance_1(this)
        continue ! try
            j_primaryThreadPool => PrimaryThreadPool_jm_getInstance_0()
            j_runnable => ExitRunnable_jnew_3(this, j_processor, j_isProgress)
            call j_primaryThreadPool%jm_runTask_1(j_runnable)
  end subroutine
end module ProgressMidlet_m

