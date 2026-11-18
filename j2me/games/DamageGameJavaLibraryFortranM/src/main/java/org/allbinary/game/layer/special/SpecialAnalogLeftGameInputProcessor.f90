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
module SpecialAnalogLeftGameInputProcessor_m
  use JR_m
  use GameKeyEvent_m
  use AllBinaryLayerManager_m
  use SpecialGameInputProcessor_m
  use CollidableDestroyableDamageableLayer_m
  implicit none

  type, extends(SpecialGameInputProcessor) :: SpecialAnalogLeftGameInputProcessor
  contains
    procedure :: jm_processAnalog_3 => SpecialAnalogLeftGameInputProcessor_jm_processAnalog_3
  end type


contains

  function SpecialAnalogLeftGameInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialAnalogLeftGameInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialAnalogLeftGameInputProcessor)
      jresult => object
    end select
  end function

  recursive function SpecialAnalogLeftGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer) result(this)
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    class(SpecialAnalogLeftGameInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SpecialAnalogLeftGameInputProcessor'
        continue ! super()
  end function

  recursive subroutine SpecialAnalogLeftGameInputProcessor_jm_processAnalog_3(this, j_allbinaryLayerManager, j_gameKeyEvent, j_analogValue)
    class(SpecialAnalogLeftGameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    integer(4), value :: j_analogValue
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_collidableDestroyableDamageableLayer%jm_leftAnalog_1(j_analogValue)
  end subroutine
end module SpecialAnalogLeftGameInputProcessor_m

