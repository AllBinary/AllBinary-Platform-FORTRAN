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
! package org.allbinary.game.ag.layer.hud.basic.health
module HealthHudWidget_m
  use JR_m
  use Animation_m
  use BasicHud_m
  use Health_m
  use HealthListenerInterface_m
  use BasicColorFactory_m
  use PaintableInterface_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use NoTimeDelayHelper_m
  use TimeDelayHelper_m
  implicit none

  type, extends(BasicHud) :: HealthHudWidget
    integer(4) :: f_healthScale = 0
    class(Animation), pointer :: f_animationInterface => null()
    class(Health), pointer :: f_healthInterface => null()
    integer(4) :: f_max = 0
    integer(4), allocatable :: f_xArray(:)
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(TimeDelayHelper), pointer :: f_slowBeatTimeDelayHelper => null()
    class(TimeDelayHelper), pointer :: f_mediumBeatTimeDelayHelper => null()
    class(TimeDelayHelper), pointer :: f_fastBeatTimeDelayHelper => null()
  contains
    procedure :: jm_update_0 => HealthHudWidget_jm_update_0
    procedure :: jm_setX_1 => HealthHudWidget_jm_setX_1
    procedure :: jm_onHealthChange_0 => HealthHudWidget_jm_onHealthChange_0
    procedure :: jm_paint_1 => HealthHudWidget_jm_paint_1
    procedure :: jm_paintThreed_1 => HealthHudWidget_jm_paintThreed_1
  end type

  ! HealthHudWidget used as a PaintableInterface
  type, extends(PaintableInterface) :: HealthHudWidget_jas_PaintableInterface
    class(HealthHudWidget), pointer :: jtarget => null()
  contains
    procedure :: jm_paint_1 => HealthHudWidget_jas_PaintableInterface_jm_paint_1
    procedure :: jm_paintThreed_1 => HealthHudWidget_jas_PaintableInterface_jm_paintThreed_1
  end type

  ! HealthHudWidget used as a HealthListenerInterface
  type, extends(HealthListenerInterface) :: HealthHudWidget_jas_HealthListenerInterface
    class(HealthHudWidget), pointer :: jtarget => null()
  contains
    procedure :: jm_onHealthChange_0 => HealthHudWidget_jas_HealthListenerInterface_jm_onHealthChange_0
  end type


contains

  function HealthHudWidget_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthHudWidget), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthHudWidget)
      jresult => object
    end select
  end function

  function HealthHudWidget_jas_PaintableInterface_jnew(object) result(jresult)
    class(HealthHudWidget), target :: object
    class(HealthHudWidget_jas_PaintableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HealthHudWidget'
    jresult%jtarget => object
  end function

  recursive subroutine HealthHudWidget_jas_PaintableInterface_jm_paint_1(this, j_graphics)
    class(HealthHudWidget_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine HealthHudWidget_jas_PaintableInterface_jm_paintThreed_1(this, j_graphics)
    class(HealthHudWidget_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paintThreed_1(j_graphics)
  end subroutine

  function HealthHudWidget_jas_HealthListenerInterface_jnew(object) result(jresult)
    class(HealthHudWidget), target :: object
    class(HealthHudWidget_jas_HealthListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HealthHudWidget'
    jresult%jtarget => object
  end function

  recursive subroutine HealthHudWidget_jas_HealthListenerInterface_jm_onHealthChange_0(this)
    class(HealthHudWidget_jas_HealthListenerInterface), target :: this
    call this%jtarget%jm_onHealthChange_0()
  end subroutine

  recursive function HealthHudWidget_jnew_4(j_animationInterface, j_healthInterface, j_location, j_direction) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(Health), target, optional :: j_healthInterface
    integer(4), value :: j_location
    integer(4), value :: j_direction
    class(HealthHudWidget), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HealthHudWidget'
    
    
    
    
    
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
    this%f_timeDelayHelper => NoTimeDelayHelper_jstatic_SINGLETON()
    this%f_slowBeatTimeDelayHelper => TimeDelayHelper_jnew_1(1280)
    this%f_mediumBeatTimeDelayHelper => TimeDelayHelper_jnew_1(640)
    this%f_fastBeatTimeDelayHelper => TimeDelayHelper_jnew_1(320)
        jtemp1 => BasicColorFactory_jm_getInstance_0()
        continue ! super()
        this%f_animationInterface => j_animationInterface
        this%f_healthInterface => j_healthInterface
        call this%f_healthInterface%jm_addListener_1(HealthHudWidget_jas_HealthListenerInterface_jnew(this))
        this%f_healthScale = (((this%f_healthInterface%jm_getMaxHealth_0() / 6)) + 1)
        call this%jm_onHealthChange_0()
        this%f_updateMaxWidth = (j_healthInterface%jm_getMaxHealth_0() * 16)
        this%f_updateMaxHeight = 16
        this%f_xArray = JR_newIntArray(30)
        call this%jm_update_0()
  end function

  recursive subroutine HealthHudWidget_jm_update_0(this)
    class(HealthHudWidget), target :: this
    integer(4) :: j_index
        if (allocated(this%f_xArray)) then
            j_index = 0
            do while ((j_index < size(this%f_xArray, 1)))
                this%f_xArray((j_index) + 1) = (this%jm_getX_0() + ((j_index * 16)))
                j_index = j_index + 1
            end do
        end if
  end subroutine

  recursive subroutine HealthHudWidget_jm_setX_1(this, j_x)
    class(HealthHudWidget), target :: this
    integer(4), value :: j_x
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicHud%jm_setX_1(j_x)
        call this%jm_update_0()
  end subroutine

  recursive subroutine HealthHudWidget_jm_onHealthChange_0(this)
    class(HealthHudWidget), target :: this
        this%f_max = ((this%f_healthInterface%jm_getHealth_0() / this%f_healthScale))
        this%f_timeDelayHelper => NoTimeDelayHelper_jstatic_SINGLETON()
        if (((this%f_max <= 1) .and. this%f_healthInterface%jm_isAlive_0())) then
            this%f_max = 1
            if (((this%f_healthScale - this%f_healthInterface%jm_getHealth_0()) > (((this%f_healthScale * 2)) / 3))) then
                this%f_timeDelayHelper => this%f_slowBeatTimeDelayHelper
            else if (((this%f_healthScale - this%f_healthInterface%jm_getHealth_0()) > (this%f_healthScale / 3))) then
                this%f_timeDelayHelper => this%f_mediumBeatTimeDelayHelper
            else
                this%f_timeDelayHelper => this%f_fastBeatTimeDelayHelper
            end if
        end if
  end subroutine

  recursive subroutine HealthHudWidget_jm_paint_1(this, j_graphics)
    class(HealthHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_index = 0
        do while ((j_index < this%f_max))
            if (this%f_timeDelayHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime)) then
                call this%f_animationInterface%jm_paintXY_3(j_graphics, this%f_xArray((j_index) + 1), this%jm_getY_0())
            end if
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine HealthHudWidget_jm_paintThreed_1(this, j_graphics)
    class(HealthHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module HealthHudWidget_m

