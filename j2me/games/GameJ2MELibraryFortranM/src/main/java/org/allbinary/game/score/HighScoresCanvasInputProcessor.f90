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
! package org.allbinary.game.score
module HighScoresCanvasInputProcessor_m
  use JR_m
  use PlayerGameInput_m
  use GameKeyEvent_m
  use HighScoresCanvas_m
  use BasicArrayListD_m
  implicit none

  type, extends(PlayerGameInput) :: HighScoresCanvasInputProcessor
    class(HighScoresCanvas), pointer :: f_highScoresCanvas => null()
  contains
    procedure :: jm_open_0 => HighScoresCanvasInputProcessor_jm_open_0
    procedure :: jm_close_0 => HighScoresCanvasInputProcessor_jm_close_0
    procedure :: jm_onPressGameKeyEvent_1 => HighScoresCanvasInputProcessor_jm_onPressGameKeyEvent_1
    procedure :: jm_onDownGameKeyEvent_1 => HighScoresCanvasInputProcessor_jm_onDownGameKeyEvent_1
    procedure :: jm_onUpGameKeyEvent_1 => HighScoresCanvasInputProcessor_jm_onUpGameKeyEvent_1
    procedure :: jm_paint_1 => HighScoresCanvasInputProcessor_jm_paint_1
    procedure :: jm_getHighScoresCanvas_0 => HighScoresCanvasInputProcessor_jm_getHighScoresCanvas_0
  end type


contains

  function HighScoresCanvasInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresCanvasInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresCanvasInputProcessor)
      jresult => object
    end select
  end function

  recursive function HighScoresCanvasInputProcessor_jnew_1(j_highScoresCanvas) result(this)
    class(HighScoresCanvas), target, optional :: j_highScoresCanvas
    class(HighScoresCanvasInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresCanvasInputProcessor'
    
        continue ! super()
        this%f_highScoresCanvas => j_highScoresCanvas
  end function

  recursive subroutine HighScoresCanvasInputProcessor_jm_open_0(this)
    class(HighScoresCanvasInputProcessor), target :: this
    continue
  end subroutine

  recursive subroutine HighScoresCanvasInputProcessor_jm_close_0(this)
    class(HighScoresCanvasInputProcessor), target :: this
    continue
  end subroutine

  recursive subroutine HighScoresCanvasInputProcessor_jm_onPressGameKeyEvent_1(this, j_gameKeyEvent)
    class(HighScoresCanvasInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%PlayerGameInput%jm_onPressGameKeyEvent_1(j_gameKeyEvent)
        call this%jm_update_0()
  end subroutine

  recursive subroutine HighScoresCanvasInputProcessor_jm_onDownGameKeyEvent_1(this, j_gameKeyEvent)
    class(HighScoresCanvasInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%PlayerGameInput%jm_onDownGameKeyEvent_1(j_gameKeyEvent)
        call this%jm_update_0()
  end subroutine

  recursive subroutine HighScoresCanvasInputProcessor_jm_onUpGameKeyEvent_1(this, j_gameKeyEvent)
    class(HighScoresCanvasInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%PlayerGameInput%jm_onUpGameKeyEvent_1(j_gameKeyEvent)
        call this%jm_update_0()
  end subroutine

  recursive subroutine HighScoresCanvasInputProcessor_jm_paint_1(this, j_graphics)
    class(HighScoresCanvasInputProcessor), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function HighScoresCanvasInputProcessor_jm_getHighScoresCanvas_0(this) result(jresult)
    class(HighScoresCanvasInputProcessor), target :: this
    class(HighScoresCanvas), pointer :: jresult
        jresult => this%f_highScoresCanvas
        return
  end function
end module HighScoresCanvasInputProcessor_m

