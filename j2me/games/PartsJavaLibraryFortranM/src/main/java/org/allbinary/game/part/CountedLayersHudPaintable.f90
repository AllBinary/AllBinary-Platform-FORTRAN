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
! package org.allbinary.game.part
module CountedLayersHudPaintable_m
  use JR_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use PaintableInterface_m
  use AllBinaryLayer_m
  use PartInterface_m
  use CountedLayerInterfaceFactoryPart_m
  implicit none

  type, extends(PaintableInterface) :: CountedLayersHudPaintable
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    type(JRef), allocatable :: f_partInterfaceArray(:)
    integer(4) :: f_countedTotalStringColor = 0
    integer(4) :: f_countedPartsBorder = 0
    integer(4) :: f_startIndex = 0
    integer(4) :: f_dropSize = 0
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_height = 0
  contains
    procedure :: jm_updateMeasurement_1 => CountedLayersHudPaintable_jm_updateMeasurement_1
    procedure :: jm_paint_1 => CountedLayersHudPaintable_jm_paint_1
    procedure :: jm_paintThreed_1 => CountedLayersHudPaintable_jm_paintThreed_1
  end type

  ! CountedLayersHudPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: CountedLayersHudPaintable_jas_UpdateMyFontInterface
    class(CountedLayersHudPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => CountedLayersHudPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type

  integer(4), save :: CountedLayersHudPaintable_jcell_XXStringWidth
  logical, save :: CountedLayersHudPaintable_jset_XXStringWidth = .false.

contains

  function CountedLayersHudPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CountedLayersHudPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CountedLayersHudPaintable)
      jresult => object
    end select
  end function

  function CountedLayersHudPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(CountedLayersHudPaintable), target :: object
    class(CountedLayersHudPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CountedLayersHudPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine CountedLayersHudPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(CountedLayersHudPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function CountedLayersHudPaintable_jstatic_XXStringWidth() result(jresult)
    integer(4) :: jresult
    if (.not. CountedLayersHudPaintable_jset_XXStringWidth) then
      CountedLayersHudPaintable_jset_XXStringWidth = .true.
      CountedLayersHudPaintable_jcell_XXStringWidth = 0
    end if
    jresult = CountedLayersHudPaintable_jcell_XXStringWidth
  end function

  subroutine CountedLayersHudPaintable_jsetstatic_XXStringWidth(jvalue)
    integer(4), value :: jvalue
    CountedLayersHudPaintable_jset_XXStringWidth = .true.
    CountedLayersHudPaintable_jcell_XXStringWidth = jvalue
  end subroutine

  recursive function CountedLayersHudPaintable_jnew_5(j_partInterfaceArray, j_dropSize, j_startIndex, j_countedTotalStringColor, j_countedPartsBorder) result(this)
    type(JRef) :: j_partInterfaceArray(:)
    integer(4), value :: j_dropSize
    integer(4), value :: j_startIndex
    integer(4), value :: j_countedTotalStringColor
    integer(4), value :: j_countedPartsBorder
    class(CountedLayersHudPaintable), pointer :: this
    allocate(this)
    this%jclass = 'CountedLayersHudPaintable'
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    
    
    
    
    
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    
        this%f_partInterfaceArray = j_partInterfaceArray
        this%f_startIndex = j_startIndex
        this%f_countedTotalStringColor = j_countedTotalStringColor
        this%f_countedPartsBorder = j_countedPartsBorder
        this%f_dropSize = j_dropSize
  end function

  recursive subroutine CountedLayersHudPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(CountedLayersHudPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    character(len=:), allocatable :: j_XXString
        j_font => j_graphics%jm_getFont_0()
        this%f_height = j_font%jm_getHeight_0()
        if ((this%f_dropSize > j_font%jm_getHeight_0())) then
            this%f_height = this%f_dropSize
        end if
        if ((CountedLayersHudPaintable_jstatic_XXStringWidth() == 0)) then
            j_XXString = 'XX'
            call CountedLayersHudPaintable_jsetstatic_XXStringWidth(j_font%jm_stringWidth_1(j_XXString))
        end if
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine CountedLayersHudPaintable_jm_paint_1(this, j_graphics)
    class(CountedLayersHudPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_lastWidth
    integer(4) :: j_widthEdge
    integer(4) :: j_size
    integer(4) :: j_count
    integer(4) :: j_y
    class(CountedLayerInterfaceFactoryPart), pointer :: j_countedLayerInterfaceFactory
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: j_pickedUpLayerInterfaceFactoryInterface
    class(AllBinaryLayer), pointer :: j_layerInterface
    integer(4), allocatable :: j_charArray(:)
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_lastWidth = this%f_displayInfoSingleton%jm_getLastWidth_0()
        j_widthEdge = (j_lastWidth - this%f_dropSize)
        j_size = size(this%f_partInterfaceArray, 1)
        j_count = 0
        continue
        continue
        continue
        continue
        continue
        j_index = this%f_startIndex
        do while ((j_index < j_size))
            j_countedLayerInterfaceFactory => CountedLayerInterfaceFactoryPart_jcast(PartInterface_jcast(this%f_partInterfaceArray((j_index) + 1)%v))
            if ((j_countedLayerInterfaceFactory%jm_getTotal_0() > 0)) then
                j_pickedUpLayerInterfaceFactoryInterface => j_countedLayerInterfaceFactory%jm_getCountedPickedUpLayerInterfaceFactory_0()
                j_layerInterface => j_pickedUpLayerInterfaceFactoryInterface%jm_getIconLayer_0()
                j_y = (40 + ((j_count * this%f_height)))
                call j_layerInterface%jm_setPosition_3(j_widthEdge, j_y, j_layerInterface%jm_getZP_0())
                call j_layerInterface%jm_paint_1(j_graphics)
                call j_graphics%jm_setColor_1(this%f_countedTotalStringColor)
                call j_countedLayerInterfaceFactory%jm_paint_1(j_graphics)
                j_charArray = j_countedLayerInterfaceFactory%jm_getTotalString_0()
                call j_graphics%jm_drawChars_6(j_charArray, 0, size(j_charArray, 1), (j_widthEdge - j_countedLayerInterfaceFactory%jm_getXOffset_0()), j_y, 0)
                j_count = j_count + 1
            end if
            j_index = j_index + 1
        end do
        if ((j_count > 0)) then
            call j_graphics%jm_setColor_1(this%f_countedPartsBorder)
            call j_graphics%jm_drawRect_4((j_lastWidth - ((CountedLayersHudPaintable_jstatic_XXStringWidth() + this%f_dropSize))), 40, (CountedLayersHudPaintable_jstatic_XXStringWidth() + this%f_dropSize), (((j_count * this%f_height)) + 3))
        end if
  end subroutine

  recursive subroutine CountedLayersHudPaintable_jm_paintThreed_1(this, j_graphics)
    class(CountedLayersHudPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module CountedLayersHudPaintable_m

