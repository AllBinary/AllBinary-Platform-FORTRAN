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
! package org.allbinary.game.ag.layer.hud.basic.score
module ScoreHudWidget_m
  use JR_m
  use NumberStringHud_m
  use BasicColor_m
  use BasicColorFactory_m
  implicit none

  type, extends(NumberStringHud) :: ScoreHudWidget
  contains
    procedure :: jm_updateMeasurement_1 => ScoreHudWidget_jm_updateMeasurement_1
  end type


contains

  function ScoreHudWidget_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScoreHudWidget), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScoreHudWidget)
      jresult => object
    end select
  end function

  recursive function ScoreHudWidget_jnew_5(j_maxscore, j_location, j_direction, j_bufferZone, j_basicColor) result(this)
    integer(4), value :: j_maxscore
    integer(4), value :: j_location
    integer(4), value :: j_direction
    integer(4), value :: j_bufferZone
    class(BasicColor), target, optional :: j_basicColor
    class(ScoreHudWidget), pointer :: this
    allocate(this)
    this%jclass = 'ScoreHudWidget'
        continue ! super()
        this%f_updateMaxHeight = 14
  end function

  recursive function ScoreHudWidget_jm_getInstance_3(j_maxscore, j_location, j_direction) result(jresult)
    integer(4), value :: j_maxscore
    integer(4), value :: j_location
    integer(4), value :: j_direction
    class(ScoreHudWidget), pointer :: jresult
    class(BasicColorFactory), pointer :: jtemp1
        jtemp1 => BasicColorFactory_jm_getInstance_0()
        jresult => ScoreHudWidget_jnew_5(j_maxscore, j_location, j_direction, 2, jtemp1%f_GREY)
        return
  end function

  recursive subroutine ScoreHudWidget_jm_updateMeasurement_1(this, j_graphics)
    class(ScoreHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        this%f_updateMaxWidth = (j_font%jm_getSize_0() * 5)
        call this%NumberStringHud%jm_updateMeasurement_1(j_graphics)
  end subroutine
end module ScoreHudWidget_m

