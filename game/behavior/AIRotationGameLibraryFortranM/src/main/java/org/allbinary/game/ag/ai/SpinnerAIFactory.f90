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
module SpinnerAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use SpinnerAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: SpinnerAIFactory
  contains
    procedure :: jm_getInstance_3 => SpinnerAIFactory_jm_getInstance_3
  end type


contains

  function SpinnerAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpinnerAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpinnerAIFactory)
      jresult => object
    end select
  end function

  function SpinnerAIFactory_jnew_0() result(this)
    class(SpinnerAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'SpinnerAIFactory'
  end function

  recursive function SpinnerAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(SpinnerAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    integer(4), allocatable :: j_direction(:)
        j_direction = [integer(4) :: Canvas_jstatic_LEFT()]
        jresult => SpinnerAI_jnew_3(j_direction, j_ownerLayerInterface, j_gameInput)
        return
  end function
end module SpinnerAIFactory_m

