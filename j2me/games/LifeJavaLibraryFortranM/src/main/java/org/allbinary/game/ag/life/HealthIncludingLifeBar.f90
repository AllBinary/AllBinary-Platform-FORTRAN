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
! package org.allbinary.game.ag.life
module HealthIncludingLifeBar_m
  use JR_m
  use Health_m
  use HealthBarAnimation_m
  use HealthBarTwodAnimation_m
  use HealthInterface_m
  use HealthListenerInterface_m
  use Paintable_m
  use AllBinaryLayer_m
  use Life_m
  implicit none

  type, extends(Paintable) :: HealthIncludingLifeBar
    class(HealthBarAnimation), pointer :: f_animationInterface => null()
    class(Life), pointer :: f_life => null()
    class(HealthInterface), pointer :: f_healthInterface => null()
    class(AllBinaryLayer), pointer :: f_allbinaryLayer => null()
  contains
    procedure :: jm_onHealthChange_0 => HealthIncludingLifeBar_jm_onHealthChange_0
    procedure :: jm_paint_1 => HealthIncludingLifeBar_jm_paint_1
    procedure :: jm_paintThreed_1 => HealthIncludingLifeBar_jm_paintThreed_1
  end type

  ! HealthIncludingLifeBar used as a HealthListenerInterface
  type, extends(HealthListenerInterface) :: HealthIncludingLifeBar_jas_HealthListenerInterface
    class(HealthIncludingLifeBar), pointer :: jtarget => null()
  contains
    procedure :: jm_onHealthChange_0 => HealthIncludingLifeBar_jas_HealthListenerInterface_jm_onHealthChange_0
  end type


contains

  function HealthIncludingLifeBar_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthIncludingLifeBar), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthIncludingLifeBar)
      jresult => object
    end select
  end function

  function HealthIncludingLifeBar_jas_HealthListenerInterface_jnew(object) result(jresult)
    class(HealthIncludingLifeBar), target :: object
    class(HealthIncludingLifeBar_jas_HealthListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HealthIncludingLifeBar'
    jresult%jtarget => object
  end function

  recursive subroutine HealthIncludingLifeBar_jas_HealthListenerInterface_jm_onHealthChange_0(this)
    class(HealthIncludingLifeBar_jas_HealthListenerInterface), target :: this
    call this%jtarget%jm_onHealthChange_0()
  end subroutine

  recursive function HealthIncludingLifeBar_jnew_5(j_layerInterface, j_life, j_healthInterface, j_animationInterface, j_direction) result(this)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(Life), target, optional :: j_life
    class(Health), target, optional :: j_healthInterface
    class(HealthBarAnimation), target, optional :: j_animationInterface
    integer(4), value :: j_direction
    class(HealthIncludingLifeBar), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HealthIncludingLifeBar'
    
    
    
    
        this%f_allbinaryLayer => j_layerInterface
        this%f_animationInterface => j_animationInterface
        this%f_life => j_life
        this%f_healthInterface => j_healthInterface
        call this%f_healthInterface%jm_addListener_1(HealthIncludingLifeBar_jas_HealthListenerInterface_jnew(this))
        call this%jm_onHealthChange_0()
  end function

  recursive function HealthIncludingLifeBar_jm_createHealthIncludingLifeBar_5(j_layerInterface, j_life, j_healthInterface, j_location, j_direction) result(jresult)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(Life), target, optional :: j_life
    class(Health), target, optional :: j_healthInterface
    integer(4), value :: j_location
    integer(4), value :: j_direction
    class(HealthIncludingLifeBar), pointer :: jresult
        jresult => HealthIncludingLifeBar_jnew_5(j_layerInterface, j_life, j_healthInterface, HealthBarTwodAnimation_jnew_2(j_layerInterface, j_location), j_direction)
        return
  end function

  recursive subroutine HealthIncludingLifeBar_jm_onHealthChange_0(this)
    class(HealthIncludingLifeBar), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_onHealthChange_1((((((this%f_healthInterface%jm_getHealth_0() + ((this%f_healthInterface%jm_getMaxHealth_0() * this%f_life%jm_get_0())))) * this%f_allbinaryLayer%jm_getWidth_0())) / ((this%f_healthInterface%jm_getMaxHealth_0() + ((this%f_healthInterface%jm_getMaxHealth_0() * this%f_life%jm_getStartLives_0()))))))
  end subroutine

  recursive subroutine HealthIncludingLifeBar_jm_paint_1(this, j_graphics)
    class(HealthIncludingLifeBar), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintXY_3(j_graphics, 0, 0)
  end subroutine

  recursive subroutine HealthIncludingLifeBar_jm_paintThreed_1(this, j_graphics)
    class(HealthIncludingLifeBar), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintThreedXYZ_4(j_graphics, 0, 0, 0)
  end subroutine
end module HealthIncludingLifeBar_m

