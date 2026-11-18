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
! package org.allbinary.game.displayable.canvas
module GameProcessor_m
  use JR_m
  use Processor_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(Processor) :: GameProcessor
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
  contains
    procedure :: jm_process_0 => GameProcessor_jm_process_0
  end type


contains

  function GameProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameProcessor)
      jresult => object
    end select
  end function

  recursive function GameProcessor_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(GameProcessor), pointer :: this
    allocate(this)
    this%jclass = 'GameProcessor'
    
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine GameProcessor_jm_process_0(this)
    class(GameProcessor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameCanvas%jm_processPlayingGame_0()
  end subroutine
end module GameProcessor_m

