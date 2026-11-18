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
! package org.allbinary.game.ag.layer.weapon.mine
module MineLayer_m
  use JR_m
  use DropWeaponSound_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use SimpleWeaponLayer_m
  use RemoteInfo_m
  use PointFactory_m
  use Rectangle_m
  use AllBinaryLayer_m
  use SecondaryPlayerQueueFactory_m
  use NoMovementFactory_m
  use ViewPositionBase_m
  use ViewPositionEventHandler_m
  use MineWeaponResources_m
  implicit none

  type, extends(SimpleWeaponLayer) :: MineLayer
    class(ViewPositionEventHandler), pointer :: f_viewPositionEventHandler => null()
  contains
    procedure :: jm_initXYZ_3 => MineLayer_jm_initXYZ_3
    procedure :: jm_damage_2 => MineLayer_jm_damage_2
    procedure :: jm_getDamage_1 => MineLayer_jm_getDamage_1
    procedure :: jm_setDestroyed_1 => MineLayer_jm_setDestroyed_1
  end type

  character(len=:), allocatable, save :: MineLayer_jcell_NAME
  logical, save :: MineLayer_jset_NAME = .false.

contains

  function MineLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MineLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MineLayer)
      jresult => object
    end select
  end function

  function MineLayer_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. MineLayer_jset_NAME) then
      MineLayer_jset_NAME = .true.
      MineLayer_jcell_NAME = 'MineLayer'
    end if
    jresult = MineLayer_jcell_NAME
  end function

  subroutine MineLayer_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    MineLayer_jset_NAME = .true.
    MineLayer_jcell_NAME = jvalue
  end subroutine

  recursive function MineLayer_jnew_1(j_viewPosition) result(this)
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(MineLayer), pointer :: this
    class(NoMovementFactory), pointer :: jtemp1
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp2
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp3
    class(MineWeaponResources), pointer :: jtemp4
    class(PointFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'MineLayer'
    this%f_viewPositionEventHandler => ViewPositionEventHandler_jm_getInstance_0()
        jtemp4 => MineWeaponResources_jm_getInstance_0()
        jtemp5 => PointFactory_jm_getInstance_0()
        jtemp3 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp1 => NoMovementFactory_jm_getInstance_0()
        jtemp2 => jtemp3%jm_get_1(jtemp4%f_RESOURCE)
        continue ! super()
  end function

  recursive subroutine MineLayer_jm_initXYZ_3(this, j_x, j_y, j_z)
    class(MineLayer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(SecondaryPlayerQueueFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setPosition_3((j_x + 5), (j_y + 5), j_z)
        call this%f_viewPositionEventHandler%jm_addListener_1(AllBinaryLayer_jcast(this))
        jtemp6 => SecondaryPlayerQueueFactory_jm_getInstance_0()
        jdiscardBoolean = jtemp6%jm_add_1(DropWeaponSound_jm_getInstance_0())
  end subroutine

  recursive subroutine MineLayer_jm_damage_2(this, j_damage, j_damageType)
    class(MineLayer), target :: this
    integer(4), value :: j_damage
    integer(4), value :: j_damageType
        this%f_totalDamage = (this%jm_getInitDamage_0() + 1)
  end subroutine

  recursive function MineLayer_jm_getDamage_1(this, j_damageType) result(jresult)
    class(MineLayer), target :: this
    integer(4), value :: j_damageType
    integer(4) :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%SimpleWeaponLayer%jm_getDamage_1(j_damageType)
        jresult = this%jm_getInitDamage_0()
        return
  end function

  recursive subroutine MineLayer_jm_setDestroyed_1(this, j_destroyed)
    class(MineLayer), target :: this
    logical, value :: j_destroyed
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%SimpleWeaponLayer%jm_setDestroyed_1(j_destroyed)
        if (this%jm_isDestroyed_0()) then
            call this%f_viewPositionEventHandler%jm_removeListener_1(this)
        end if
  end subroutine
end module MineLayer_m

