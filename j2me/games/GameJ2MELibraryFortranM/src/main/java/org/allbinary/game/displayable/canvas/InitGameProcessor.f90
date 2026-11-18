!
! AllBinary Open License Version 1
! Copyright (c) 2026 AllBinary
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
! package org.allbinary.game.displayable.canvas
module InitGameProcessor_m
  use JR_m
  use Processor_m
  use ProgressCanvasFactory_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(Processor) :: InitGameProcessor
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
  contains
    procedure :: jm_process_0 => InitGameProcessor_jm_process_0
  end type


contains

  function InitGameProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InitGameProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InitGameProcessor)
      jresult => object
    end select
  end function

  recursive function InitGameProcessor_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(InitGameProcessor), pointer :: this
    allocate(this)
    this%jclass = 'InitGameProcessor'
    
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine InitGameProcessor_jm_process_0(this)
    class(InitGameProcessor), target :: this
    class(ProgressCanvasFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => ProgressCanvasFactory_jm_getInstance_0()
        if (jtemp1%jm_isInGame_0()) then
            call this%f_gameCanvas%jm_setProcessGameProcessorInit_0()
        end if
  end subroutine
end module InitGameProcessor_m

