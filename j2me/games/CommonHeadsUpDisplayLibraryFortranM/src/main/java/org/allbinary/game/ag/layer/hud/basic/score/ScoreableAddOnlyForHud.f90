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
module ScoreableAddOnlyForHud_m
  use JR_m
  use Scoreable_m
  use ScoreHudWidget_m
  implicit none

  type, extends(Scoreable) :: ScoreableAddOnlyForHud
    class(ScoreHudWidget), pointer :: f_scoreHudWidget => null()
  contains
    procedure :: jm_removePoints_1 => ScoreableAddOnlyForHud_jm_removePoints_1
    procedure :: jm_addPoints_1 => ScoreableAddOnlyForHud_jm_addPoints_1
    procedure :: jm_getScoreHudWidget_0 => ScoreableAddOnlyForHud_jm_getScoreHudWidget_0
  end type


contains

  function ScoreableAddOnlyForHud_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScoreableAddOnlyForHud), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScoreableAddOnlyForHud)
      jresult => object
    end select
  end function

  recursive function ScoreableAddOnlyForHud_jnew_1(j_scoreVectorGraphic) result(this)
    class(ScoreHudWidget), target, optional :: j_scoreVectorGraphic
    class(ScoreableAddOnlyForHud), pointer :: this
    class(ScoreHudWidget), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ScoreableAddOnlyForHud'
    
        continue ! super()
        this%f_scoreHudWidget => j_scoreVectorGraphic
        jtemp1 => this%jm_getScoreHudWidget_0()
        call jtemp1%jm_set_1(0)
  end function

  recursive subroutine ScoreableAddOnlyForHud_jm_removePoints_1(this, j_points)
    class(ScoreableAddOnlyForHud), target :: this
    integer(4), value :: j_points
    continue
  end subroutine

  recursive subroutine ScoreableAddOnlyForHud_jm_addPoints_1(this, j_points)
    class(ScoreableAddOnlyForHud), target :: this
    integer(4), value :: j_points
    class(ScoreHudWidget), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%Scoreable%jm_addPoints_1(j_points)
        jtemp2 => this%jm_getScoreHudWidget_0()
        call jtemp2%jm_add_1(j_points)
  end subroutine

  recursive function ScoreableAddOnlyForHud_jm_getScoreHudWidget_0(this) result(jresult)
    class(ScoreableAddOnlyForHud), target :: this
    class(ScoreHudWidget), pointer :: jresult
        jresult => this%f_scoreHudWidget
        return
  end function
end module ScoreableAddOnlyForHud_m

