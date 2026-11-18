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
module ArtificialIntelligence_m
  use JR_m
  use AllBinaryLayerManager_m
  use ArtificialIntelligenceInterface_m
  implicit none

  type, extends(ArtificialIntelligenceInterface) :: ArtificialIntelligence
  contains
    procedure :: jm_processAI_1 => ArtificialIntelligence_jm_processAI_1
    procedure :: jm_getId_0 => ArtificialIntelligence_jm_getId_0
  end type

  integer(4), save :: ArtificialIntelligence_jcell_AI_ID
  logical, save :: ArtificialIntelligence_jset_AI_ID = .false.
  class(ArtificialIntelligence), pointer, save :: ArtificialIntelligence_jcell_instance => null()
  logical, save :: ArtificialIntelligence_jset_instance = .false.

contains

  function ArtificialIntelligence_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligence), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligence)
      jresult => object
    end select
  end function

  function ArtificialIntelligence_jstatic_AI_ID() result(jresult)
    integer(4) :: jresult
    if (.not. ArtificialIntelligence_jset_AI_ID) then
      ArtificialIntelligence_jset_AI_ID = .true.
      ArtificialIntelligence_jcell_AI_ID = 2
    end if
    jresult = ArtificialIntelligence_jcell_AI_ID
  end function

  subroutine ArtificialIntelligence_jsetstatic_AI_ID(jvalue)
    integer(4), value :: jvalue
    ArtificialIntelligence_jset_AI_ID = .true.
    ArtificialIntelligence_jcell_AI_ID = jvalue
  end subroutine

  function ArtificialIntelligence_jstatic_instance() result(jresult)
    class(ArtificialIntelligence), pointer :: jresult
    if (.not. ArtificialIntelligence_jset_instance) then
      ArtificialIntelligence_jset_instance = .true.
      ArtificialIntelligence_jcell_instance => ArtificialIntelligence_jnew_0()
    end if
    jresult => ArtificialIntelligence_jcell_instance
  end function

  subroutine ArtificialIntelligence_jsetstatic_instance(jvalue)
    class(ArtificialIntelligence), target, optional :: jvalue
    ArtificialIntelligence_jset_instance = .true.
    if (present(jvalue)) then
      ArtificialIntelligence_jcell_instance => jvalue
    else
      ArtificialIntelligence_jcell_instance => null()
    end if
  end subroutine

  recursive function ArtificialIntelligence_jnew_0() result(this)
    class(ArtificialIntelligence), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligence'
        continue
  end function

  recursive function ArtificialIntelligence_jm_getInstance_0() result(jresult)
    class(ArtificialIntelligence), pointer :: jresult
        jresult => ArtificialIntelligence_jstatic_instance()
        return
  end function

  recursive subroutine ArtificialIntelligence_jm_processAI_1(this, j_layerManager)
    class(ArtificialIntelligence), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    continue
  end subroutine

  recursive function ArtificialIntelligence_jm_getId_0(this) result(jresult)
    class(ArtificialIntelligence), target :: this
    integer(4) :: jresult
        jresult = 1
        return
  end function
end module ArtificialIntelligence_m

