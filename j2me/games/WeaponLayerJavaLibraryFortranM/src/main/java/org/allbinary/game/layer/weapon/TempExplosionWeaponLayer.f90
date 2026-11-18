! Generated Code Do Not Modify
! package org.allbinary.game.layer.weapon
module TempExplosionWeaponLayer_m
  use JR_m
  use Animation_m
  use WeaponProperties_m
  use RemoteInfo_m
  use Rectangle_m
  use AllBinaryLayerManager_m
  use Movement_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use ViewPositionBase_m
  use SimpleWeaponLayer_m
  implicit none

  type, extends(SimpleWeaponLayer) :: TempExplosionWeaponLayer
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
  contains
    procedure :: jm_processTick_1 => TempExplosionWeaponLayer_jm_processTick_1
  end type


contains

  function TempExplosionWeaponLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TempExplosionWeaponLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TempExplosionWeaponLayer)
      jresult => object
    end select
  end function

  recursive function TempExplosionWeaponLayer_jnew_6(j_name, j_movement, j_animationInterface, j_rectangle, j_viewPosition, j_timeDelay) result(this)
    character(len=*), intent(in) :: j_name
    class(Movement), target, optional :: j_movement
    class(Animation), target, optional :: j_animationInterface
    class(Rectangle), target, optional :: j_rectangle
    class(ViewPositionBase), target, optional :: j_viewPosition
    integer(4), value :: j_timeDelay
    class(TempExplosionWeaponLayer), pointer :: this
    allocate(this)
    this%jclass = 'TempExplosionWeaponLayer'
    this%f_weaponProperties => WeaponProperties_jnew_5((-1_8), (-1_8), int(0, 8), 1000, JR_i16(0))
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(0)
        continue ! super()
        this%f_timeDelayHelper%f_delay = j_timeDelay
  end function

  recursive subroutine TempExplosionWeaponLayer_jm_processTick_1(this, j_allBinaryLayerManager)
    class(TempExplosionWeaponLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp1
    class(CollidableBaseBehavior), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        if (this%f_timeDelayHelper%jm_isTime_1(jtemp1%f_startTime)) then
            jtemp2 => this%jm_getCollidableInferface_0()
            call jtemp2%jm_collide_2(this, this)
            this%f_totalDamage = (this%jm_getInitDamage_0() + 1)
        end if
        call this%SimpleWeaponLayer%jm_processTick_1(j_allBinaryLayerManager)
  end subroutine
end module TempExplosionWeaponLayer_m

