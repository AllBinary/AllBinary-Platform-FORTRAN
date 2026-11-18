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
! package org.allbinary.game.layer.pickup
module PickedUpLayerTypeFactory_m
  use JR_m
  use StringUtil_m
  use PickedUpLayerType_m
  implicit none

  type, extends(JObject) :: PickedUpLayerTypeFactory
    class(PickedUpLayerType), pointer :: f_NONE => null()
    class(PickedUpLayerType), pointer :: f_BEAM => null()
    class(PickedUpLayerType), pointer :: f_MINE => null()
    class(PickedUpLayerType), pointer :: f_PROJECTILE => null()
    class(PickedUpLayerType), pointer :: f_ENHANCEMENT => null()
    class(PickedUpLayerType), pointer :: f_MORPH => null()
    class(PickedUpLayerType), pointer :: f_PART => null()
    class(PickedUpLayerType), pointer :: f_HEAL => null()
    class(PickedUpLayerType), pointer :: f_LIFE => null()
    class(PickedUpLayerType), pointer :: f_POINTS => null()
  end type

  class(PickedUpLayerTypeFactory), pointer, save :: PickedUpLayerTypeFactory_jcell_instance => null()
  logical, save :: PickedUpLayerTypeFactory_jset_instance = .false.

contains

  function PickedUpLayerTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickedUpLayerTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickedUpLayerTypeFactory)
      jresult => object
    end select
  end function

  function PickedUpLayerTypeFactory_jstatic_instance() result(jresult)
    class(PickedUpLayerTypeFactory), pointer :: jresult
    if (.not. PickedUpLayerTypeFactory_jset_instance) then
      PickedUpLayerTypeFactory_jset_instance = .true.
      PickedUpLayerTypeFactory_jcell_instance => PickedUpLayerTypeFactory_jnew_0()
    end if
    jresult => PickedUpLayerTypeFactory_jcell_instance
  end function

  subroutine PickedUpLayerTypeFactory_jsetstatic_instance(jvalue)
    class(PickedUpLayerTypeFactory), target, optional :: jvalue
    PickedUpLayerTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      PickedUpLayerTypeFactory_jcell_instance => jvalue
    else
      PickedUpLayerTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function PickedUpLayerTypeFactory_jnew_0() result(this)
    class(PickedUpLayerTypeFactory), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'PickedUpLayerTypeFactory'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_NONE => PickedUpLayerType_jnew_1(jtemp1%f_NULL_STRING)
    this%f_BEAM => PickedUpLayerType_jnew_1('BEAM')
    this%f_MINE => PickedUpLayerType_jnew_1('MINE')
    this%f_PROJECTILE => PickedUpLayerType_jnew_1('PROJECTILE')
    this%f_ENHANCEMENT => PickedUpLayerType_jnew_1('Enhancement')
    this%f_MORPH => PickedUpLayerType_jnew_1('Morph')
    this%f_PART => PickedUpLayerType_jnew_1('Part')
    this%f_HEAL => PickedUpLayerType_jnew_1('Heal')
    this%f_LIFE => PickedUpLayerType_jnew_1('Life')
    this%f_POINTS => PickedUpLayerType_jnew_1('Points')
  end function

  recursive function PickedUpLayerTypeFactory_jm_getInstance_0() result(jresult)
    class(PickedUpLayerTypeFactory), pointer :: jresult
        jresult => PickedUpLayerTypeFactory_jstatic_instance()
        return
  end function
end module PickedUpLayerTypeFactory_m

