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
module SaveHighScoreRunnable_m
  use JR_m
  use HighScoreTextBox_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: SaveHighScoreRunnable
    class(ProgressCanvas), pointer :: f_progressCanvas => null()
    logical :: f_isLast = .false.
    class(HighScoreTextBox), pointer :: f_textBox => null()
  contains
    procedure :: jm_run_0 => SaveHighScoreRunnable_jm_run_0
  end type


contains

  function SaveHighScoreRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SaveHighScoreRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SaveHighScoreRunnable)
      jresult => object
    end select
  end function

  recursive function SaveHighScoreRunnable_jnew_2(j_isLast, j_textBox) result(this)
    logical, value :: j_isLast
    class(HighScoreTextBox), target, optional :: j_textBox
    class(SaveHighScoreRunnable), pointer :: this
    allocate(this)
    this%jclass = 'SaveHighScoreRunnable'
    this%f_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
    
    
        this%f_isLast = j_isLast
        this%f_textBox => j_textBox
  end function

  recursive subroutine SaveHighScoreRunnable_jm_run_0(this)
    class(SaveHighScoreRunnable), target :: this
    class(LogUtil), pointer :: j_logUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_logUtil => LogUtil_jm_getInstance_0()
        continue ! try
            if (this%f_isLast) then
                call this%f_textBox%jm_submit_0()
            else
                call this%f_textBox%jm_saveHighScore_0()
            end if
  end subroutine
end module SaveHighScoreRunnable_m

