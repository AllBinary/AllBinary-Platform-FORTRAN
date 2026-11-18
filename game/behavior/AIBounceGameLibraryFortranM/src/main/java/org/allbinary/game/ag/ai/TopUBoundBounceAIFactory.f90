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
module TopUBoundBounceAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use TopULayerBounds_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use VelocityInterface_m
  use VelocityInterfaceCompositeInterface_m
  use GPoint_m
  use PointFactory_m
  use Rectangle_m
  use DisplayInfoSingleton_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use BoundBounceAI_m
  use ReverseVelocityBoundsVisitor_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: TopUBoundBounceAIFactory
  contains
    procedure :: jm_getInstance_3 => TopUBoundBounceAIFactory_jm_getInstance_3
  end type


contains

  function TopUBoundBounceAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TopUBoundBounceAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TopUBoundBounceAIFactory)
      jresult => object
    end select
  end function

  function TopUBoundBounceAIFactory_jnew_0() result(this)
    class(TopUBoundBounceAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'TopUBoundBounceAIFactory'
  end function

  recursive function TopUBoundBounceAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(TopUBoundBounceAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    class(VelocityInterfaceCompositeInterface), pointer :: j_velocityInterfaceCompositeInterface
    class(VelocityInterface), pointer :: j_velocityInterface
    integer(4) :: j_maxDistancePerTick
    integer(4) :: j_halfWidth
    integer(4) :: j_halfHeight
    class(GPoint), pointer :: j_point
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(Rectangle), pointer :: j_rectangle
    class(JObject), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
        j_velocityInterfaceCompositeInterface => VelocityInterfaceCompositeInterface_jcast(j_ownerLayerInterface)
        j_velocityInterface => VelocityInterface_jcast(j_velocityInterfaceCompositeInterface%jm_getVelocityProperties_0())
        jtemp1 => j_velocityInterface%jm_getVelocityXBasicDecimalP_0()
        j_maxDistancePerTick = (shifta(j_velocityInterface%jm_getMaxForwardVelocity_0(), iand(jtemp1%jm_getScaledFactor_0(), 31)))
        j_halfWidth = (((j_ownerLayerInterface%jm_getWidth_0() * 2) + j_maxDistancePerTick) + 1)
        j_halfHeight = (((j_ownerLayerInterface%jm_getHeight_0() * 2) + j_maxDistancePerTick) + 1)
        jtemp2 => PointFactory_jm_getInstance_0()
        j_point => jtemp2%jm_createXY_2(j_halfWidth, (j_halfHeight + 60))
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        j_rectangle => Rectangle_jnew_3(j_point, (((j_displayInfo%jm_getLastWidth_0() - j_halfWidth) - j_point%jm_getX_0())), (((j_displayInfo%jm_getLastHeight_0() - j_halfHeight) - j_point%jm_getY_0())))
        jresult => BoundBounceAI_jnew_4(j_ownerLayerInterface, j_gameInput, TopULayerBounds_jnew_1(j_rectangle), ReverseVelocityBoundsVisitor_jnew_1(j_ownerLayerInterface))
        return
  end function
end module TopUBoundBounceAIFactory_m

