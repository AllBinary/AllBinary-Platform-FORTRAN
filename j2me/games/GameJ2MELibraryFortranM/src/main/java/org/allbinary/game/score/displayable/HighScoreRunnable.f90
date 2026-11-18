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
! package org.allbinary.game.score.displayable
module HighScoreRunnable_m
  use JR_m
  use J2MEUtil_m
  use ABSystemWrapper_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use ARunnable_m
  use HighScoresCanvas_m
  implicit none

  type, extends(ARunnable) :: HighScoreRunnable
    class(HighScoresCanvas), pointer :: f_highScoresCanvas => null()
  contains
    procedure :: jm_run_0 => HighScoreRunnable_jm_run_0
  end type


contains

  function HighScoreRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoreRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoreRunnable)
      jresult => object
    end select
  end function

  recursive function HighScoreRunnable_jnew_1(j_highScoresCanvas) result(this)
    class(HighScoresCanvas), target, optional :: j_highScoresCanvas
    class(HighScoreRunnable), pointer :: this
    allocate(this)
    this%jclass = 'HighScoreRunnable'
    
        this%f_highScoresCanvas => j_highScoresCanvas
  end function

  recursive subroutine HighScoreRunnable_jm_run_0(this)
    class(HighScoreRunnable), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(LogUtil), pointer :: j_logUtil
    class(HighScoresCanvas), pointer :: j_highScoresCanvas
    logical :: j_isHTML
    class(StringMaker), pointer :: j_stringMaker
    class(ABSystemWrapper), pointer :: j_systemWrapper
    integer(8) :: j_currentTimeMillis
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        j_logUtil => LogUtil_jm_getInstance_0()
        j_highScoresCanvas => this%f_highScoresCanvas
        continue ! try
            j_isHTML = J2MEUtil_jm_isHTML_0()
            if ((.not. j_isHTML)) then
                do while ((.not. j_highScoresCanvas%f_hasPainted))
                    continue
                end do
                j_highScoresCanvas%f_hasPainted = .false.
            end if
            j_stringMaker => StringMaker_jnew_0()
            j_systemWrapper => ABSystemWrapper_jm_getInstance_0()
            j_currentTimeMillis = j_systemWrapper%jm_currentTimeMillis_0()
            jtemp2 => j_stringMaker%jm_append_1('HighScoresCanvas - Request repaint to be sure: ')
            jtemp1 => jtemp2%jm_appendlong_1(j_currentTimeMillis)
            call j_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, j_commonStrings%f_RUN)
            call j_highScoresCanvas%f_repaintBehavior%jm_onChangeRepaint_1(j_highScoresCanvas)
            if ((.not. j_isHTML)) then
                do while ((.not. j_highScoresCanvas%f_hasPainted))
                    continue
                end do
            end if
            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
            jtemp4 => j_stringMaker%jm_append_1('HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ')
            jtemp3 => jtemp4%jm_appendlong_1(j_currentTimeMillis)
            call j_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, j_commonStrings%f_RUN)
            call j_highScoresCanvas%jm_executeUpdate_0()
  end subroutine
end module HighScoreRunnable_m

