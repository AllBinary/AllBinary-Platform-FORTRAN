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
module Special5GameInputProcessor_m
  use JR_m
  use GameKeyEvent_m
  use AllBinaryLayerManager_m
  use SpecialGameInputProcessor_m
  use CollidableDestroyableDamageableLayer_m
  implicit none

  type, extends(SpecialGameInputProcessor) :: Special5GameInputProcessor
  contains
    procedure :: jm_processEvent_2 => Special5GameInputProcessor_jm_processEvent_2
  end type


contains

  function Special5GameInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Special5GameInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Special5GameInputProcessor)
      jresult => object
    end select
  end function

  recursive function Special5GameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer) result(this)
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    class(Special5GameInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'Special5GameInputProcessor'
        continue ! super()
  end function

  recursive subroutine Special5GameInputProcessor_jm_processEvent_2(this, j_allbinaryLayerManager, j_gameKeyEvent)
    class(Special5GameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_collidableDestroyableDamageableLayer%jm_special5_2(j_allbinaryLayerManager, j_gameKeyEvent)
  end subroutine
end module Special5GameInputProcessor_m

