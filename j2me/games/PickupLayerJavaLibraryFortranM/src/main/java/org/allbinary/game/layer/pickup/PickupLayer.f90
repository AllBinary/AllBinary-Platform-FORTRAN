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
! package org.allbinary.game.layer.pickup
module PickupLayer_m
  use JR_m
  use GL_m
  use Animation_m
  use NullAnimationFactory_m
  use CollidableAlwaysPickupNeverCollideBehaviorFactory_m
  use DestroyedLayerProcessor_m
  use BasicGroupFactory_m
  use MultiPlayerGameLayer_m
  use RemoteInfo_m
  use Rectangle_m
  use OpenGLSurfaceChangedInterface_m
  use ViewPositionBase_m
  use PickedUpLayerInterface_m
  use PickupableInterface_m
  use CountedPickedUpLayerInterfaceFactory_m
  use PickedUpLayerInterfaceFactoryInterface_m
  implicit none

  type, extends(MultiPlayerGameLayer) :: PickupLayer
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: f_pickedUpLayerInterfaceFactoryInterface => null()
    logical :: f_destroyed = .false.
    class(Animation), pointer :: f_animationInterface => null()
  contains
    procedure :: jm_init_2 => PickupLayer_jm_init_2
    procedure :: jm_initXYZ_3 => PickupLayer_jm_initXYZ_3
    procedure :: jm_paint_1 => PickupLayer_jm_paint_1
    procedure :: jm_paintThreed_1 => PickupLayer_jm_paintThreed_1
    procedure :: jm_getPickedUpLayerInterfaceFactoryInterface_0 => PickupLayer_jm_getPickedUpLayerInterfaceFactoryInterface_0
    procedure :: jm_setPickedUp_0 => PickupLayer_jm_setPickedUp_0
    procedure :: jm_isDestroyed_0 => PickupLayer_jm_isDestroyed_0
    procedure :: jm_setDestroyed_1 => PickupLayer_jm_setDestroyed_1
    procedure :: jm_damage_2 => PickupLayer_jm_damage_2
    procedure :: jm_getDamage_1 => PickupLayer_jm_getDamage_1
    procedure :: jm_set_1 => PickupLayer_jm_set_1
  end type

  ! PickupLayer used as a PickedUpLayerInterface
  type, extends(PickedUpLayerInterface) :: PickupLayer_jas_PickedUpLayerInterface
    class(PickupLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_getPickedUpLayerInterfaceFactoryInterface_0 => PickupLayer_jas_PickedUpLayerInterface_jm_getPickedUpLayerInterfaceFactoryInterface_0
    procedure :: jm_setPickedUp_0 => PickupLayer_jas_PickedUpLayerInterface_jm_setPickedUp_0
  end type

  ! PickupLayer used as a PickupableInterface
  type, extends(PickupableInterface) :: PickupLayer_jas_PickupableInterface
    class(PickupLayer), pointer :: jtarget => null()
  end type


contains

  function PickupLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickupLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickupLayer)
      jresult => object
    end select
  end function

  function PickupLayer_jas_PickedUpLayerInterface_jnew(object) result(jresult)
    class(PickupLayer), target :: object
    class(PickupLayer_jas_PickedUpLayerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'PickupLayer'
    jresult%jtarget => object
  end function

  recursive function PickupLayer_jas_PickedUpLayerInterface_jm_getPickedUpLayerInterfaceFactoryInterface_0(this) result(jresult)
    class(PickupLayer_jas_PickedUpLayerInterface), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    jresult => this%jtarget%jm_getPickedUpLayerInterfaceFactoryInterface_0()
  end function

  recursive subroutine PickupLayer_jas_PickedUpLayerInterface_jm_setPickedUp_0(this)
    class(PickupLayer_jas_PickedUpLayerInterface), target :: this
    call this%jtarget%jm_setPickedUp_0()
  end subroutine

  function PickupLayer_jas_PickupableInterface_jnew(object) result(jresult)
    class(PickupLayer), target :: object
    class(PickupLayer_jas_PickupableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'PickupLayer'
    jresult%jtarget => object
  end function

  recursive function PickupLayer_jnew_7(j_name, j_remoteInfo, j_total, j_pickedUpLayerInterfaceFactoryInterface, j_animationInterface, j_rectangle, j_viewPosition) result(this)
    character(len=*), intent(in) :: j_name
    class(RemoteInfo), target, optional :: j_remoteInfo
    integer(4), value :: j_total
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: j_pickedUpLayerInterfaceFactoryInterface
    class(Animation), target, optional :: j_animationInterface
    class(Rectangle), target, optional :: j_rectangle
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(PickupLayer), pointer :: this
    class(BasicGroupFactory), pointer :: jtemp2
    class(CollidableAlwaysPickupNeverCollideBehaviorFactory), pointer :: jtemp3
    class(NullAnimationFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PickupLayer'
    this%f_pickedUpLayerInterfaceFactoryInterface => CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY()
    
    jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
    this%f_animationInterface => jtemp1%jm_getInstance_1(0)
        jtemp2 => BasicGroupFactory_jm_getInstance_0()
        continue ! super()
        jtemp3 => CollidableAlwaysPickupNeverCollideBehaviorFactory_jm_getInstance_0()
        call this%jm_setCollidableInferface_1(jtemp3%jm_createBehavior_0())
        call this%jm_setLayerWidth_1(10)
        call this%jm_setLayerHeight_1(10)
        call this%jm_init_2(j_pickedUpLayerInterfaceFactoryInterface, j_animationInterface)
  end function

  recursive subroutine PickupLayer_jm_init_2(this, j_pickedUpLayerInterfaceFactoryInterface, j_animationInterface)
    class(PickupLayer), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: j_pickedUpLayerInterfaceFactoryInterface
    class(Animation), target, optional :: j_animationInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_pickedUpLayerInterfaceFactoryInterface => j_pickedUpLayerInterfaceFactoryInterface
        this%f_animationInterface => j_animationInterface
        call this%jm_setDestroyed_1(.false.)
  end subroutine

  recursive subroutine PickupLayer_jm_initXYZ_3(this, j_x, j_y, j_z)
    class(PickupLayer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setPosition_3(j_x, j_y, j_z)
  end subroutine

  recursive subroutine PickupLayer_jm_paint_1(this, j_graphics)
    class(PickupLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    integer(4) :: j_viewX
    integer(4) :: j_viewY
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_viewPosition => this%jm_getViewPosition_0()
        j_viewX = j_viewPosition%jm_getX_0()
        j_viewY = j_viewPosition%jm_getY_0()
        call this%f_animationInterface%jm_paintXY_3(j_graphics, j_viewX, j_viewY)
  end subroutine

  recursive subroutine PickupLayer_jm_paintThreed_1(this, j_graphics)
    class(PickupLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    integer(4) :: j_viewX
    integer(4) :: j_viewY
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_viewPosition => this%jm_getViewPosition_0()
        j_viewX = j_viewPosition%jm_getX_0()
        j_viewY = j_viewPosition%jm_getY_0()
        call this%f_animationInterface%jm_paintThreedXYZ_4(j_graphics, j_viewX, j_viewY, 3)
  end subroutine

  recursive function PickupLayer_jm_getPickedUpLayerInterfaceFactoryInterface_0(this) result(jresult)
    class(PickupLayer), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
        jresult => this%f_pickedUpLayerInterfaceFactoryInterface
        return
  end function

  recursive subroutine PickupLayer_jm_setPickedUp_0(this)
    class(PickupLayer), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setDestroyed_1(.true.)
  end subroutine

  recursive function PickupLayer_jm_isDestroyed_0(this) result(jresult)
    class(PickupLayer), target :: this
    logical :: jresult
        jresult = this%f_destroyed
        return
  end function

  recursive subroutine PickupLayer_jm_setDestroyed_1(this, j_destroyed)
    class(PickupLayer), target :: this
    logical, value :: j_destroyed
    class(DestroyedLayerProcessor), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_destroyed = j_destroyed
        if (this%jm_isDestroyed_0()) then
            jtemp4 => DestroyedLayerProcessor_jm_getInstance_0()
            call jtemp4%jm_add_1(this)
        end if
  end subroutine

  recursive subroutine PickupLayer_jm_damage_2(this, j_damage, j_damageType)
    class(PickupLayer), target :: this
    integer(4), value :: j_damage
    integer(4), value :: j_damageType
    continue
  end subroutine

  recursive function PickupLayer_jm_getDamage_1(this, j_damageType) result(jresult)
    class(PickupLayer), target :: this
    integer(4), value :: j_damageType
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine PickupLayer_jm_set_1(this, j_gl)
    class(PickupLayer), target :: this
    class(GL), target, optional :: j_gl
    class(OpenGLSurfaceChangedInterface), pointer :: j_openGLSurfaceChangedInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_openGLSurfaceChangedInterface => OpenGLSurfaceChangedInterface_jcast(this%f_animationInterface)
        call j_openGLSurfaceChangedInterface%jm_set_1(j_gl)
  end subroutine
end module PickupLayer_m

