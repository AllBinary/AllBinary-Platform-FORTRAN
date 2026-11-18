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
! package org.allbinary.game.health
module HealthBar_m
  use JR_m
  use Paintable_m
  use AllBinaryLayer_m
  use HealthListenerInterface_m
  use HealthBarAnimation_m
  use HealthInterface_m
  use Health_m
  implicit none

  type, extends(Paintable) :: HealthBar
    class(HealthBarAnimation), pointer :: f_animationInterface => null()
    class(HealthInterface), pointer :: f_healthInterface => null()
    class(AllBinaryLayer), pointer :: f_allbinaryLayer => null()
  contains
    procedure :: jm_onHealthChange_0 => HealthBar_jm_onHealthChange_0
    procedure :: jm_paint_1 => HealthBar_jm_paint_1
    procedure :: jm_paintThreed_1 => HealthBar_jm_paintThreed_1
  end type

  ! HealthBar used as a HealthListenerInterface
  type, extends(HealthListenerInterface) :: HealthBar_jas_HealthListenerInterface
    class(HealthBar), pointer :: jtarget => null()
  contains
    procedure :: jm_onHealthChange_0 => HealthBar_jas_HealthListenerInterface_jm_onHealthChange_0
  end type


contains

  function HealthBar_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthBar), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthBar)
      jresult => object
    end select
  end function

  function HealthBar_jas_HealthListenerInterface_jnew(object) result(jresult)
    class(HealthBar), target :: object
    class(HealthBar_jas_HealthListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HealthBar'
    jresult%jtarget => object
  end function

  recursive subroutine HealthBar_jas_HealthListenerInterface_jm_onHealthChange_0(this)
    class(HealthBar_jas_HealthListenerInterface), target :: this
    call this%jtarget%jm_onHealthChange_0()
  end subroutine

  recursive function HealthBar_jnew_4(j_layerInterface, j_healthInterface, j_animationInterface, j_direction) result(this)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(Health), target, optional :: j_healthInterface
    class(HealthBarAnimation), target, optional :: j_animationInterface
    integer(4), value :: j_direction
    class(HealthBar), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HealthBar'
    
    
    
        this%f_allbinaryLayer => j_layerInterface
        this%f_animationInterface => j_animationInterface
        this%f_healthInterface => j_healthInterface
        call this%f_healthInterface%jm_addListener_1(HealthBar_jas_HealthListenerInterface_jnew(this))
        call this%jm_onHealthChange_0()
  end function

  recursive subroutine HealthBar_jm_onHealthChange_0(this)
    class(HealthBar), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_onHealthChange_1(((this%f_healthInterface%jm_getHealth_0() * this%f_allbinaryLayer%jm_getWidth_0()) / this%f_healthInterface%jm_getMaxHealth_0()))
  end subroutine

  recursive subroutine HealthBar_jm_paint_1(this, j_graphics)
    class(HealthBar), target :: this
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

  recursive subroutine HealthBar_jm_paintThreed_1(this, j_graphics)
    class(HealthBar), target :: this
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
end module HealthBar_m

