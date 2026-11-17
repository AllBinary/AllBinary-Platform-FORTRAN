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
! package org.allbinary.graphics.color
module ColorTemperatureUtil_m
  use JR_m
  use BasicColorFactory_m
  use BasicColor_m
  implicit none

  type, extends(JObject) :: ColorTemperatureUtil
    class(BasicColorFactory), pointer :: f_basicColorFactory => null()
  contains
    procedure :: jm_getBasicColor_1 => ColorTemperatureUtil_jm_getBasicColor_1
  end type

  class(ColorTemperatureUtil), pointer, save :: ColorTemperatureUtil_jcell_instance => null()
  logical, save :: ColorTemperatureUtil_jset_instance = .false.

contains

  function ColorTemperatureUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorTemperatureUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorTemperatureUtil)
      jresult => object
    end select
  end function

  function ColorTemperatureUtil_jstatic_instance() result(jresult)
    class(ColorTemperatureUtil), pointer :: jresult
    if (.not. ColorTemperatureUtil_jset_instance) then
      ColorTemperatureUtil_jset_instance = .true.
      ColorTemperatureUtil_jcell_instance => ColorTemperatureUtil_jnew_0()
    end if
    jresult => ColorTemperatureUtil_jcell_instance
  end function

  function ColorTemperatureUtil_jnew_0() result(this)
    class(ColorTemperatureUtil), pointer :: this
    allocate(this)
    this%jclass = 'ColorTemperatureUtil'
    this%f_basicColorFactory => BasicColorFactory_jm_getInstance_0()
  end function

  recursive function ColorTemperatureUtil_jm_getInstance_0() result(jresult)
    class(ColorTemperatureUtil), pointer :: jresult
        jresult => ColorTemperatureUtil_jstatic_instance()
        return
  end function

  recursive function ColorTemperatureUtil_jm_getBasicColor_1(this, j_thirdTemp) result(jresult)
    class(ColorTemperatureUtil), target :: this
    integer(4), value :: j_thirdTemp
    class(BasicColor), pointer :: jresult
    class(BasicColor), pointer :: j_basicColor
        j_basicColor => this%f_basicColorFactory%f_RED
        if ((j_thirdTemp > 3700)) then
            j_basicColor => this%f_basicColorFactory%f_PURPLE
        else if ((j_thirdTemp > 3200)) then
            j_basicColor => this%f_basicColorFactory%f_BLUE
        else if ((j_thirdTemp > 2700)) then
            j_basicColor => this%f_basicColorFactory%f_PUCE
        else if ((j_thirdTemp > 2200)) then
            j_basicColor => this%f_basicColorFactory%f_WHITE
        else if ((j_thirdTemp > 1700)) then
            j_basicColor => this%f_basicColorFactory%f_GREEN
        else if ((j_thirdTemp > 1200)) then
            j_basicColor => this%f_basicColorFactory%f_YELLOW
        else if ((j_thirdTemp > 700)) then
            j_basicColor => this%f_basicColorFactory%f_ORANGE
        end if
        jresult => j_basicColor
        return
  end function
end module ColorTemperatureUtil_m

