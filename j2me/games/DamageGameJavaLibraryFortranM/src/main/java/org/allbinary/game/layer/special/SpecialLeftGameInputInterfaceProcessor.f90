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
module SpecialLeftGameInputInterfaceProcessor_m
  use JR_m
  use GameKeyEvent_m
  use AllBinaryLayerManager_m
  use SpecialGameInputInterfaceProcessor_m
  use SpecialGameInputInterface_m
  implicit none

  type, extends(SpecialGameInputInterfaceProcessor) :: SpecialLeftGameInputInterfaceProcessor
  contains
    procedure :: jm_processEvent_2 => SpecialLeftGameInputInterfaceProcessor_jm_processEvent_2
  end type


contains

  function SpecialLeftGameInputInterfaceProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialLeftGameInputInterfaceProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialLeftGameInputInterfaceProcessor)
      jresult => object
    end select
  end function

  recursive function SpecialLeftGameInputInterfaceProcessor_jnew_1(j_collidableDestroyableDamageableLayer) result(this)
    class(SpecialGameInputInterface), target, optional :: j_collidableDestroyableDamageableLayer
    class(SpecialLeftGameInputInterfaceProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SpecialLeftGameInputInterfaceProcessor'
        continue ! super()
  end function

  recursive subroutine SpecialLeftGameInputInterfaceProcessor_jm_processEvent_2(this, j_allbinaryLayerManager, j_gameKeyEvent)
    class(SpecialLeftGameInputInterfaceProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_specialGameInputInterface%jm_left_0()
  end subroutine
end module SpecialLeftGameInputInterfaceProcessor_m

