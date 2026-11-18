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
module BoundBounceAI_m
  use JR_m
  use BoundsVisitorInterface_m
  use LayerBounds_m
  use BasicAI_m
  use GameInput_m
  use Rectangle_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(BasicAI) :: BoundBounceAI
    integer(4) :: f_currentRelativeAngle = 0
    class(LayerBounds), pointer :: f_layerBounds => null()
    class(BoundsVisitorInterface), pointer :: f_boundsVisitorInterface => null()
  contains
    procedure :: jm_paint_1 => BoundBounceAI_jm_paint_1
    procedure :: jm_processAI_1 => BoundBounceAI_jm_processAI_1
  end type


contains

  function BoundBounceAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BoundBounceAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BoundBounceAI)
      jresult => object
    end select
  end function

  recursive function BoundBounceAI_jnew_4(j_ownerLayerInterface, j_gameInput, j_layerBounds, j_boundsVisitorInterface) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(LayerBounds), target, optional :: j_layerBounds
    class(BoundsVisitorInterface), target, optional :: j_boundsVisitorInterface
    class(BoundBounceAI), pointer :: this
    allocate(this)
    this%jclass = 'BoundBounceAI'
    this%f_currentRelativeAngle = 0
    
    
        continue ! super()
        this%f_layerBounds => j_layerBounds
        this%f_boundsVisitorInterface => j_boundsVisitorInterface
  end function

  recursive subroutine BoundBounceAI_jm_paint_1(this, j_graphics)
    class(BoundBounceAI), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Rectangle), pointer :: j_rectange
    class(GPoint), pointer :: jtemp1
    class(GPoint), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_rectange => this%f_layerBounds%jm_getRectangleP_0()
        jtemp1 => j_rectange%jm_getPoint_0()
        jtemp2 => j_rectange%jm_getPoint_0()
        call j_graphics%jm_drawRect_4(jtemp1%jm_getX_0(), jtemp2%jm_getY_0(), j_rectange%jm_getWidth_0(), j_rectange%jm_getHeight_0())
  end subroutine

  recursive subroutine BoundBounceAI_jm_processAI_1(this, j_layerManager)
    class(BoundBounceAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_layerBounds%jm_visit_1(this%f_boundsVisitorInterface)
  end subroutine
end module BoundBounceAI_m

