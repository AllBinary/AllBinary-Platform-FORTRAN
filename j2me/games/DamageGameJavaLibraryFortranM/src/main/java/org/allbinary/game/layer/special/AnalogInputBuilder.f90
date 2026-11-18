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
! package org.allbinary.game.layer.special
module AnalogInputBuilder_m
  use JR_m
  use GameInputProcessor_m
  use SpecialUpGameInputProcessor_m
  use SpecialDownGameInputProcessor_m
  use SpecialRightGameInputProcessor_m
  use SpecialLeftGameInputProcessor_m
  use Special1GameInputProcessor_m
  use Special3GameInputProcessor_m
  use CollidableDestroyableDamageableLayer_m
  use SpecialAnalogUpGameInputProcessor_m
  use SpecialAnalogDownGameInputProcessor_m
  use SpecialAnalogRightGameInputProcessor_m
  use SpecialAnalogLeftGameInputProcessor_m
  use SpecialAnalogLeftTriggerGameInputProcessor_m
  use SpecialAnalogRightTriggerGameInputProcessor_m
  implicit none

  type, extends(JObject) :: AnalogInputBuilder
  contains
    procedure :: jm_disable_2 => AnalogInputBuilder_jm_disable_2
    procedure :: jm_enable_2 => AnalogInputBuilder_jm_enable_2
  end type

  class(AnalogInputBuilder), pointer, save :: AnalogInputBuilder_jcell_instance => null()
  logical, save :: AnalogInputBuilder_jset_instance = .false.

contains

  function AnalogInputBuilder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogInputBuilder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogInputBuilder)
      jresult => object
    end select
  end function

  function AnalogInputBuilder_jstatic_instance() result(jresult)
    class(AnalogInputBuilder), pointer :: jresult
    if (.not. AnalogInputBuilder_jset_instance) then
      AnalogInputBuilder_jset_instance = .true.
      AnalogInputBuilder_jcell_instance => AnalogInputBuilder_jnew_0()
    end if
    jresult => AnalogInputBuilder_jcell_instance
  end function

  subroutine AnalogInputBuilder_jsetstatic_instance(jvalue)
    class(AnalogInputBuilder), target, optional :: jvalue
    AnalogInputBuilder_jset_instance = .true.
    if (present(jvalue)) then
      AnalogInputBuilder_jcell_instance => jvalue
    else
      AnalogInputBuilder_jcell_instance => null()
    end if
  end subroutine

  function AnalogInputBuilder_jnew_0() result(this)
    class(AnalogInputBuilder), pointer :: this
    allocate(this)
    this%jclass = 'AnalogInputBuilder'
  end function

  recursive function AnalogInputBuilder_jm_getInstance_0() result(jresult)
    class(AnalogInputBuilder), pointer :: jresult
        jresult => AnalogInputBuilder_jstatic_instance()
        return
  end function

  recursive subroutine AnalogInputBuilder_jm_disable_2(this, j_inputProcessorArray, j_collidableDestroyableDamageableLayer)
    class(AnalogInputBuilder), target :: this
    type(JRef) :: j_inputProcessorArray(:)
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
        j_inputProcessorArray((Canvas_jstatic_UP()) + 1)%v => SpecialUpGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_DOWN()) + 1)%v => SpecialDownGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_RIGHT()) + 1)%v => SpecialRightGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_LEFT()) + 1)%v => SpecialLeftGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_KEY_NUM0()) + 1)%v => Special1GameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_KEY_NUM5()) + 1)%v => Special3GameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
  end subroutine

  recursive subroutine AnalogInputBuilder_jm_enable_2(this, j_inputProcessorArray, j_collidableDestroyableDamageableLayer)
    class(AnalogInputBuilder), target :: this
    type(JRef) :: j_inputProcessorArray(:)
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
        j_inputProcessorArray((Canvas_jstatic_UP()) + 1)%v => SpecialAnalogUpGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_DOWN()) + 1)%v => SpecialAnalogDownGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_RIGHT()) + 1)%v => SpecialAnalogRightGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_LEFT()) + 1)%v => SpecialAnalogLeftGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_KEY_NUM0()) + 1)%v => SpecialAnalogLeftTriggerGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
        j_inputProcessorArray((Canvas_jstatic_KEY_NUM5()) + 1)%v => SpecialAnalogRightTriggerGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer)
  end subroutine
end module AnalogInputBuilder_m

