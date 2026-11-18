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
module DiveAndDirectionalTrackingAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use BasicRandomAIFactory_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use BasicAI_m
  use GameInput_m
  use AllBinaryLayer_m
  use Visitor_m
  use ABHashtable_m
  use ThrustAIVisitorFactory_m
  use BasicProbabilityAIDataFactory_m
  use LastKeyAIVisitorFactory_m
  use DiveAndDirectionalTrackingAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: DiveAndDirectionalTrackingAIFactory
  contains
    procedure :: jm_getInstance_3 => DiveAndDirectionalTrackingAIFactory_jm_getInstance_3
  end type


contains

  function DiveAndDirectionalTrackingAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DiveAndDirectionalTrackingAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DiveAndDirectionalTrackingAIFactory)
      jresult => object
    end select
  end function

  function DiveAndDirectionalTrackingAIFactory_jnew_0() result(this)
    class(DiveAndDirectionalTrackingAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'DiveAndDirectionalTrackingAIFactory'
  end function

  recursive function DiveAndDirectionalTrackingAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(DiveAndDirectionalTrackingAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    class(JObject), pointer :: j_visitorCanBeNull
    class(ABHashtable), pointer :: j_hashtable2
    class(ArtificialIntelligenceInterface), pointer :: j_artificialIntelligenceInterface
    class(BasicProbabilityAIDataFactory), pointer :: jtemp1
    class(BasicRandomAIFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_visitorCanBeNull => j_hashtable%jm_get_1(BasicAI_jstatic_AI_VISITOR())
        if ((.not. associated(j_visitorCanBeNull))) then
            j_visitorCanBeNull => ThrustAIVisitorFactory_jm_getInstance_0()
        end if
        jtemp1 => BasicProbabilityAIDataFactory_jnew_0()
        j_hashtable2 => jtemp1%jm_getInstance_0()
        jdiscardRef => j_hashtable2%jm_put_2(BasicAI_jstatic_AI_VISITOR(), LastKeyAIVisitorFactory_jm_getInstance_0())
        jtemp2 => BasicRandomAIFactory_jnew_0()
        j_artificialIntelligenceInterface => jtemp2%jm_getInstance_3(j_hashtable2, j_ownerLayerInterface, j_gameInput)
        jresult => DiveAndDirectionalTrackingAI_jnew_4(j_ownerLayerInterface, j_artificialIntelligenceInterface, j_gameInput, Visitor_jcast(j_visitorCanBeNull))
        return
  end function
end module DiveAndDirectionalTrackingAIFactory_m

