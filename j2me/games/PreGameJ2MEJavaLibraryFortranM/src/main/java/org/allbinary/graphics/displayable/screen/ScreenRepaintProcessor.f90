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
! package org.allbinary.graphics.displayable.screen
module ScreenRepaintProcessor_m
  use JR_m
  use Processor_m
  use ScreenRepaintUtil_m
  implicit none

  type, extends(Processor) :: ScreenRepaintProcessor
    class(Displayable), pointer :: f_displayable => null()
  contains
    procedure :: jm_process_0 => ScreenRepaintProcessor_jm_process_0
  end type


contains

  function ScreenRepaintProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenRepaintProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenRepaintProcessor)
      jresult => object
    end select
  end function

  recursive function ScreenRepaintProcessor_jnew_1(j_displayable) result(this)
    class(Displayable), target, optional :: j_displayable
    class(ScreenRepaintProcessor), pointer :: this
    allocate(this)
    this%jclass = 'ScreenRepaintProcessor'
    
        this%f_displayable => j_displayable
  end function

  recursive subroutine ScreenRepaintProcessor_jm_process_0(this)
    class(ScreenRepaintProcessor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ScreenRepaintUtil_jm_repaint_1(this%f_displayable)
  end subroutine
end module ScreenRepaintProcessor_m

