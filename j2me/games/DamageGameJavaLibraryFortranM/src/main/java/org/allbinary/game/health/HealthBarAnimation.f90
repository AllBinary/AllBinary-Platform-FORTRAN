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
! package org.allbinary.game.health
module HealthBarAnimation_m
  use JR_m
  use Animation_m
  use BasicHudFactory_m
  use BasicColorFactory_m
  use AllBinaryLayer_m
  implicit none

  type, extends(Animation) :: HealthBarAnimation
    class(BasicColorFactory), pointer :: f_basicColorFactory => null()
    integer(4) :: f_x2 = 0
    integer(4) :: f_thickness = 0
    integer(4) :: f_location = 0
    class(AllBinaryLayer), pointer :: f_allbinaryLayer => null()
  contains
    procedure :: jm_onHealthChange_1 => HealthBarAnimation_jm_onHealthChange_1
    procedure :: jm_getY_0 => HealthBarAnimation_jm_getY_0
  end type


contains

  function HealthBarAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthBarAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthBarAnimation)
      jresult => object
    end select
  end function

  recursive function HealthBarAnimation_jnew_2(j_layerInterface, j_location) result(this)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_location
    class(HealthBarAnimation), pointer :: this
    class(BasicHudFactory), pointer :: j_basicHudFactory
    allocate(this)
    this%jclass = 'HealthBarAnimation'
    this%f_basicColorFactory => BasicColorFactory_jm_getInstance_0()
    
    
    
    
        this%f_allbinaryLayer => j_layerInterface
        this%f_location = j_location
        j_basicHudFactory => BasicHudFactory_jm_getInstance_0()
        if (((this%f_location /= j_basicHudFactory%f_TOPLEFT) .and. (this%f_location /= j_basicHudFactory%f_BOTTOMLEFT))) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        if ((j_layerInterface%jm_getWidth_0() > 40)) then
            this%f_thickness = 3
        else if ((j_layerInterface%jm_getWidth_0() > 20)) then
            this%f_thickness = 2
        else
            this%f_thickness = 1
        end if
  end function

  recursive subroutine HealthBarAnimation_jm_onHealthChange_1(this, j_newX2)
    class(HealthBarAnimation), target :: this
    integer(4), value :: j_newX2
    integer(4) :: j_quarter
        this%f_x2 = j_newX2
        j_quarter = (shifta(this%f_allbinaryLayer%jm_getWidth_0(), iand(2, 31)))
        if ((this%f_x2 > (j_quarter * 3))) then
            this%f_basicColor => this%f_basicColorFactory%f_GREEN
            this%f_colorP = this%f_basicColor%jm_intValue_0()
        else if ((this%f_x2 > (j_quarter * 2))) then
            this%f_basicColor => this%f_basicColorFactory%f_YELLOW
            this%f_colorP = this%f_basicColor%jm_intValue_0()
        else if ((this%f_x2 > j_quarter)) then
            this%f_basicColor => this%f_basicColorFactory%f_ORANGE
            this%f_colorP = this%f_basicColor%jm_intValue_0()
        else
            this%f_basicColor => this%f_basicColorFactory%f_RED
            this%f_colorP = this%f_basicColor%jm_intValue_0()
        end if
  end subroutine

  recursive function HealthBarAnimation_jm_getY_0(this) result(jresult)
    class(HealthBarAnimation), target :: this
    integer(4) :: jresult
    class(BasicHudFactory), pointer :: j_basicHudFactory
    class(ViewPositionBase), pointer :: jtemp1
    class(ViewPositionBase), pointer :: jtemp2
        j_basicHudFactory => BasicHudFactory_jm_getInstance_0()
        if ((this%f_location == j_basicHudFactory%f_TOPLEFT)) then
            jtemp2 => this%f_allbinaryLayer%jm_getViewPosition_0()
            jresult = (jtemp2%jm_getY_0() - 4)
            return
        else if ((this%f_location == j_basicHudFactory%f_BOTTOMLEFT)) then
            jtemp1 => this%f_allbinaryLayer%jm_getViewPosition_0()
            jresult = (jtemp1%jm_getY2_0() + 4)
            return
        end if
        jresult = (-1)
        return
  end function
end module HealthBarAnimation_m

