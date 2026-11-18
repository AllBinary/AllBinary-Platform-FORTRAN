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
module HealthBarTwodAnimation_m
  use JR_m
  use AllBinaryLayer_m
  use HealthBarAnimation_m
  implicit none

  type, extends(HealthBarAnimation) :: HealthBarTwodAnimation
  contains
    procedure :: jm_paintXY_3 => HealthBarTwodAnimation_jm_paintXY_3
  end type


contains

  function HealthBarTwodAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthBarTwodAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthBarTwodAnimation)
      jresult => object
    end select
  end function

  recursive function HealthBarTwodAnimation_jnew_2(j_layerInterface, j_location) result(this)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_location
    class(HealthBarTwodAnimation), pointer :: this
    allocate(this)
    this%jclass = 'HealthBarTwodAnimation'
        continue ! super()
  end function

  recursive subroutine HealthBarTwodAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(HealthBarTwodAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_ax
    class(JObject), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => this%f_allbinaryLayer%jm_getViewPosition_0()
        j_ax = jtemp1%jm_getX_0()
        call this%f_basicSetColorUtil%jm_setBasicColorP3_3(j_graphics, this%f_basicColor, this%f_colorP)
        call j_graphics%jm_fillRect_4(j_ax, (this%jm_getY_0() - 1), this%f_x2, this%f_thickness)
  end subroutine
end module HealthBarTwodAnimation_m

