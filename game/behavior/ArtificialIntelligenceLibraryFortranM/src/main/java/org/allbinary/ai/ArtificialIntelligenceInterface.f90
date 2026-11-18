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
! package org.allbinary.ai
module ArtificialIntelligenceInterface_m
  use JR_m
  use IdentifierInterface_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(IdentifierInterface) :: ArtificialIntelligenceInterface
  contains
    procedure :: jm_processAI_1 => ArtificialIntelligenceInterface_jm_processAI_1
  end type


contains

  function ArtificialIntelligenceInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceInterface)
      jresult => object
    end select
  end function

  function ArtificialIntelligenceInterface_jnew_0() result(this)
    class(ArtificialIntelligenceInterface), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceInterface'
  end function

  recursive subroutine ArtificialIntelligenceInterface_jm_processAI_1(this, j_layerManager)
    class(ArtificialIntelligenceInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    error stop 'AbstractMethodError: ArtificialIntelligenceInterface.processAI'
  end subroutine
end module ArtificialIntelligenceInterface_m

