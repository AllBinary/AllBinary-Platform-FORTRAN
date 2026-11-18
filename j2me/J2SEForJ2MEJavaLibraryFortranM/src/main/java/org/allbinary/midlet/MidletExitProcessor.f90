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
module MidletExitProcessor_m
  use JR_m
  use Processor_m
  use System_m
  implicit none

  type, extends(Processor) :: MidletExitProcessor
    class(MIDlet), pointer :: f_midlet => null()
  contains
    procedure :: jm_process_0 => MidletExitProcessor_jm_process_0
  end type


contains

  function MidletExitProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MidletExitProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MidletExitProcessor)
      jresult => object
    end select
  end function

  recursive function MidletExitProcessor_jnew_1(j_midlet) result(this)
    class(MIDlet), target, optional :: j_midlet
    class(MidletExitProcessor), pointer :: this
    allocate(this)
    this%jclass = 'MidletExitProcessor'
    
        this%f_midlet => j_midlet
  end function

  recursive subroutine MidletExitProcessor_jm_process_0(this)
    class(MidletExitProcessor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call System_jm_exit_1(0)
  end subroutine
end module MidletExitProcessor_m

