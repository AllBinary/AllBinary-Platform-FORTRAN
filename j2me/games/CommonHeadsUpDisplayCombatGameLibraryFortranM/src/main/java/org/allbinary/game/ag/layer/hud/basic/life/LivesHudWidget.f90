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
! package org.allbinary.game.ag.layer.hud.basic.life
module LivesHudWidget_m
  use JR_m
  use Animation_m
  use Life_m
  use BasicHud_m
  use BasicColorFactory_m
  use DisplayChangeEvent_m
  use PaintableInterface_m
  implicit none

  type, extends(BasicHud) :: LivesHudWidget
    class(Life), pointer :: f_lifeInterface => null()
    integer(4), allocatable :: f_xArray(:)
    class(Animation), pointer :: f_animationInterface => null()
  contains
    procedure :: jm_updateMeasurement_1 => LivesHudWidget_jm_updateMeasurement_1
    procedure :: jm_onDisplayChangeEvent_1 => LivesHudWidget_jm_onDisplayChangeEvent_1
    procedure :: jm_setX_1 => LivesHudWidget_jm_setX_1
    procedure :: jm_paint_1 => LivesHudWidget_jm_paint_1
    procedure :: jm_paintThreed_1 => LivesHudWidget_jm_paintThreed_1
    procedure :: jm_getLifeInterface_0 => LivesHudWidget_jm_getLifeInterface_0
  end type

  ! LivesHudWidget used as a PaintableInterface
  type, extends(PaintableInterface) :: LivesHudWidget_jas_PaintableInterface
    class(LivesHudWidget), pointer :: jtarget => null()
  contains
    procedure :: jm_paint_1 => LivesHudWidget_jas_PaintableInterface_jm_paint_1
    procedure :: jm_paintThreed_1 => LivesHudWidget_jas_PaintableInterface_jm_paintThreed_1
  end type


contains

  function LivesHudWidget_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LivesHudWidget), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LivesHudWidget)
      jresult => object
    end select
  end function

  function LivesHudWidget_jas_PaintableInterface_jnew(object) result(jresult)
    class(LivesHudWidget), target :: object
    class(LivesHudWidget_jas_PaintableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'LivesHudWidget'
    jresult%jtarget => object
  end function

  recursive subroutine LivesHudWidget_jas_PaintableInterface_jm_paint_1(this, j_graphics)
    class(LivesHudWidget_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine LivesHudWidget_jas_PaintableInterface_jm_paintThreed_1(this, j_graphics)
    class(LivesHudWidget_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paintThreed_1(j_graphics)
  end subroutine

  recursive function LivesHudWidget_jnew_4(j_animationInterface, j_lifeInterface, j_location, j_direction) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(Life), target, optional :: j_lifeInterface
    integer(4), value :: j_location
    integer(4), value :: j_direction
    class(LivesHudWidget), pointer :: this
    integer(4) :: j_size
    class(BasicColorFactory), pointer :: jtemp1
    class(Life), pointer :: jtemp2
    allocate(this)
    this%jclass = 'LivesHudWidget'
    
    
    
        jtemp1 => BasicColorFactory_jm_getInstance_0()
        continue ! super()
        this%f_lifeInterface => j_lifeInterface
        jtemp2 => this%jm_getLifeInterface_0()
        j_size = jtemp2%jm_getMaxlives_0()
        this%f_xArray = JR_newIntArray(j_size)
        this%f_animationInterface => j_animationInterface
        this%f_updateMaxWidth = (this%f_lifeInterface%jm_getMaxlives_0() * 16)
        this%f_updateMaxHeight = 16
  end function

  recursive subroutine LivesHudWidget_jm_updateMeasurement_1(this, j_graphics)
    class(LivesHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_maxLives
    integer(4) :: j_index
    class(Life), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicHud%jm_updateMeasurement_1(j_graphics)
        jtemp3 => this%jm_getLifeInterface_0()
        j_maxLives = jtemp3%jm_getMaxlives_0()
        j_index = 0
        do while ((j_index < j_maxLives))
            this%f_xArray((j_index) + 1) = (this%jm_getX_0() + ((j_index * 16)))
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine LivesHudWidget_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(LivesHudWidget), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicHud%jm_onDisplayChangeEvent_1(j_displayChangeEvent)
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive subroutine LivesHudWidget_jm_setX_1(this, j_x)
    class(LivesHudWidget), target :: this
    integer(4), value :: j_x
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicHud%jm_setX_1(j_x)
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive subroutine LivesHudWidget_jm_paint_1(this, j_graphics)
    class(LivesHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_index
    integer(4) :: jtemp4
    class(Life), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        jtemp5 => this%jm_getLifeInterface_0()
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = jtemp5%jm_get_0()
        do while ((jtemp4 >= 0))
            call this%f_animationInterface%jm_paintXY_3(j_graphics, this%f_xArray((j_index) + 1), this%jm_getY_0())
        end do
  end subroutine

  recursive subroutine LivesHudWidget_jm_paintThreed_1(this, j_graphics)
    class(LivesHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function LivesHudWidget_jm_getLifeInterface_0(this) result(jresult)
    class(LivesHudWidget), target :: this
    class(Life), pointer :: jresult
        jresult => this%f_lifeInterface
        return
  end function
end module LivesHudWidget_m

