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
! package org.allbinary.canvas
module RunnableCanvasRefreshHelper_m
  use JR_m
  use MyCanvas_m
  use Processor_m
  implicit none

  type, extends(Processor) :: RunnableCanvasRefreshHelper
    class(MyCanvas), pointer :: f_runnableCanvas => null()
  contains
    procedure :: jm_process_0 => RunnableCanvasRefreshHelper_jm_process_0
  end type


contains

  function RunnableCanvasRefreshHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RunnableCanvasRefreshHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RunnableCanvasRefreshHelper)
      jresult => object
    end select
  end function

  recursive function RunnableCanvasRefreshHelper_jnew_1(j_runnableCanvas) result(this)
    class(MyCanvas), target, optional :: j_runnableCanvas
    class(RunnableCanvasRefreshHelper), pointer :: this
    allocate(this)
    this%jclass = 'RunnableCanvasRefreshHelper'
    
        this%f_runnableCanvas => j_runnableCanvas
  end function

  recursive subroutine RunnableCanvasRefreshHelper_jm_process_0(this)
    class(RunnableCanvasRefreshHelper), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_runnableCanvas%jm_repaint_0()
  end subroutine
end module RunnableCanvasRefreshHelper_m

