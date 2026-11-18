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
! package org.allbinary.game.ag.ai
module NullAI_m
  use JR_m
  use ArtificialIntelligence_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(ArtificialIntelligence) :: NullAI
  contains
    procedure :: jm_processAI_1 => NullAI_jm_processAI_1
  end type


contains

  function NullAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullAI)
      jresult => object
    end select
  end function

  recursive function NullAI_jnew_0() result(this)
    class(NullAI), pointer :: this
    allocate(this)
    this%jclass = 'NullAI'
        continue
  end function

  recursive subroutine NullAI_jm_processAI_1(this, j_layerManager)
    class(NullAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    continue
  end subroutine
end module NullAI_m

function NullAI_jnew_0_jext() result(this)
  use NullAI_m, only: JObject, NullAI_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullAI_jnew_0()
end function

