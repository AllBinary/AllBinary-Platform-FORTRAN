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
! package org.allbinary.game.layer
module LayerPlacementTypeFactory_m
  use JR_m
  use DirectionFactory_m
  use Integer_m
  use LayerPlacementType_m
  implicit none

  type, extends(JObject) :: LayerPlacementTypeFactory
    class(LayerPlacementType), pointer :: f_MAP => null()
    class(LayerPlacementType), pointer :: f_LEFT => null()
    class(LayerPlacementType), pointer :: f_DOWN => null()
    class(LayerPlacementType), pointer :: f_UP => null()
    class(LayerPlacementType), pointer :: f_RIGHT => null()
  end type

  class(LayerPlacementTypeFactory), pointer, save :: LayerPlacementTypeFactory_jcell_instance => null()
  logical, save :: LayerPlacementTypeFactory_jset_instance = .false.

contains

  function LayerPlacementTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerPlacementTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerPlacementTypeFactory)
      jresult => object
    end select
  end function

  function LayerPlacementTypeFactory_jstatic_instance() result(jresult)
    class(LayerPlacementTypeFactory), pointer :: jresult
    if (.not. LayerPlacementTypeFactory_jset_instance) then
      LayerPlacementTypeFactory_jset_instance = .true.
      LayerPlacementTypeFactory_jcell_instance => LayerPlacementTypeFactory_jnew_0()
    end if
    jresult => LayerPlacementTypeFactory_jcell_instance
  end function

  subroutine LayerPlacementTypeFactory_jsetstatic_instance(jvalue)
    class(LayerPlacementTypeFactory), target, optional :: jvalue
    LayerPlacementTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      LayerPlacementTypeFactory_jcell_instance => jvalue
    else
      LayerPlacementTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function LayerPlacementTypeFactory_jnew_0() result(this)
    class(LayerPlacementTypeFactory), pointer :: this
    class(DirectionFactory), pointer :: jtemp1
    class(DirectionFactory), pointer :: jtemp2
    class(DirectionFactory), pointer :: jtemp3
    class(DirectionFactory), pointer :: jtemp4
    allocate(this)
    this%jclass = 'LayerPlacementTypeFactory'
    this%f_MAP => LayerPlacementType_jnew_1(Integer_jstatic_MAX_VALUE())
    jtemp1 => DirectionFactory_jm_getInstance_0()
    this%f_LEFT => LayerPlacementType_jnew_1(jtemp1%f_LEFT%jm_getValue_0())
    jtemp2 => DirectionFactory_jm_getInstance_0()
    this%f_DOWN => LayerPlacementType_jnew_1(jtemp2%f_DOWN%jm_getValue_0())
    jtemp3 => DirectionFactory_jm_getInstance_0()
    this%f_UP => LayerPlacementType_jnew_1(jtemp3%f_UP%jm_getValue_0())
    jtemp4 => DirectionFactory_jm_getInstance_0()
    this%f_RIGHT => LayerPlacementType_jnew_1(jtemp4%f_RIGHT%jm_getValue_0())
  end function

  recursive function LayerPlacementTypeFactory_jm_getInstance_0() result(jresult)
    class(LayerPlacementTypeFactory), pointer :: jresult
        jresult => LayerPlacementTypeFactory_jstatic_instance()
        return
  end function
end module LayerPlacementTypeFactory_m

