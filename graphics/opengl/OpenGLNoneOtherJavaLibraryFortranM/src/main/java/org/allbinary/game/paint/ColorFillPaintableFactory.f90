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
! package org.allbinary.game.paint
module ColorFillPaintableFactory_m
  use JR_m
  use BasicColor_m
  use GenericOperatingSystem_m
  use OperatingSystemFactory_m
  use ColorFillPaintable_m
  use OverScanColorFillPaintable_m
  use ColorFillBasePaintable_m
  implicit none

  type, extends(JObject) :: ColorFillPaintableFactory
  contains
    procedure :: jm_getInstance_2 => ColorFillPaintableFactory_jm_getInstance_2
  end type

  class(ColorFillPaintableFactory), pointer, save :: ColorFillPaintableFactory_jcell_instance => null()
  logical, save :: ColorFillPaintableFactory_jset_instance = .false.

contains

  function ColorFillPaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorFillPaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorFillPaintableFactory)
      jresult => object
    end select
  end function

  function ColorFillPaintableFactory_jstatic_instance() result(jresult)
    class(ColorFillPaintableFactory), pointer :: jresult
    if (.not. ColorFillPaintableFactory_jset_instance) then
      ColorFillPaintableFactory_jset_instance = .true.
      ColorFillPaintableFactory_jcell_instance => ColorFillPaintableFactory_jnew_0()
    end if
    jresult => ColorFillPaintableFactory_jcell_instance
  end function

  subroutine ColorFillPaintableFactory_jsetstatic_instance(jvalue)
    class(ColorFillPaintableFactory), target, optional :: jvalue
    ColorFillPaintableFactory_jset_instance = .true.
    if (present(jvalue)) then
      ColorFillPaintableFactory_jcell_instance => jvalue
    else
      ColorFillPaintableFactory_jcell_instance => null()
    end if
  end subroutine

  function ColorFillPaintableFactory_jnew_0() result(this)
    class(ColorFillPaintableFactory), pointer :: this
    allocate(this)
    this%jclass = 'ColorFillPaintableFactory'
  end function

  recursive function ColorFillPaintableFactory_jm_getInstance_0() result(jresult)
    class(ColorFillPaintableFactory), pointer :: jresult
        jresult => ColorFillPaintableFactory_jstatic_instance()
        return
  end function

  recursive function ColorFillPaintableFactory_jm_getInstance_2(this, j_basicColor, j_forThreedCanvas) result(jresult)
    class(ColorFillPaintableFactory), target :: this
    class(BasicColor), target, optional :: j_basicColor
    logical, value :: j_forThreedCanvas
    class(ColorFillBasePaintable), pointer :: jresult
    class(GenericOperatingSystem), pointer :: j_operatingSystem
    class(OperatingSystemFactory), pointer :: jtemp1
        jtemp1 => OperatingSystemFactory_jm_getInstance_0()
        j_operatingSystem => jtemp1%jm_getOperatingSystemInstance_0()
        if (j_operatingSystem%jm_isOverScan_0()) then
            jresult => OverScanColorFillPaintable_jnew_1(j_basicColor)
            return
        else
            jresult => ColorFillPaintable_jnew_1(j_basicColor)
            return
        end if
  end function
end module ColorFillPaintableFactory_m

