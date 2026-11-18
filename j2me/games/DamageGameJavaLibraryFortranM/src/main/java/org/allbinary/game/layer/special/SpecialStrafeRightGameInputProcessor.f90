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
module SpecialStrafeRightGameInputProcessor_m
  use JR_m
  use GameKeyEvent_m
  use AllBinaryLayerManager_m
  use SpecialGameInputProcessor_m
  use CollidableDestroyableDamageableLayer_m
  implicit none

  type, extends(SpecialGameInputProcessor) :: SpecialStrafeRightGameInputProcessor
  contains
    procedure :: jm_processEvent_2 => SpecialStrafeRightGameInputProcessor_jm_processEvent_2
  end type


contains

  function SpecialStrafeRightGameInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialStrafeRightGameInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialStrafeRightGameInputProcessor)
      jresult => object
    end select
  end function

  recursive function SpecialStrafeRightGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer) result(this)
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    class(SpecialStrafeRightGameInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SpecialStrafeRightGameInputProcessor'
        continue ! super()
  end function

  recursive subroutine SpecialStrafeRightGameInputProcessor_jm_processEvent_2(this, j_allbinaryLayerManager, j_gameKeyEvent)
    class(SpecialStrafeRightGameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_collidableDestroyableDamageableLayer%jm_strafeRight_0()
  end subroutine
end module SpecialStrafeRightGameInputProcessor_m

