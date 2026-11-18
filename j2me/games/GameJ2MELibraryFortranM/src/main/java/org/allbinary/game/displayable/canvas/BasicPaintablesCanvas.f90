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
! package org.allbinary.game.displayable.canvas
module BasicPaintablesCanvas_m
  use JR_m
  use AllBinaryGameLayerManager_m
  use ColorFillBasePaintable_m
  use ColorFillPaintableFactory_m
  use Paintable_m
  use GameCommandCanvas_m
  implicit none

  type, extends(GameCommandCanvas) :: BasicPaintablesCanvas
    type(JRef), allocatable :: f_paintableArray(:)
    class(ColorFillBasePaintable), pointer :: f_colorFillPaintable => null()
  contains
    procedure :: jm_paint_1 => BasicPaintablesCanvas_jm_paint_1
  end type


contains

  function BasicPaintablesCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicPaintablesCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicPaintablesCanvas)
      jresult => object
    end select
  end function

  recursive function BasicPaintablesCanvas_jnew_4(j_cmdListener, j_name, j_allBinaryGameLayerManager, j_paintableArray) result(this)
    class(CommandListener), target, optional :: j_cmdListener
    character(len=*), intent(in) :: j_name
    class(AllBinaryGameLayerManager), target, optional :: j_allBinaryGameLayerManager
    type(JRef) :: j_paintableArray(:)
    class(BasicPaintablesCanvas), pointer :: this
    class(ColorFillPaintableFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'BasicPaintablesCanvas'
    
    
        continue ! super()
        this%f_paintableArray = j_paintableArray
        jtemp1 => ColorFillPaintableFactory_jm_getInstance_0()
        this%f_colorFillPaintable => jtemp1%jm_getInstance_2(j_allBinaryGameLayerManager%jm_getBackgroundBasicColor_0(), .false.)
  end function

  recursive subroutine BasicPaintablesCanvas_jm_paint_1(this, j_graphics)
    class(BasicPaintablesCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_colorFillPaintable%jm_paint_1(j_graphics)
        call j_graphics%jm_setColor_1(this%f_foregroundColor)
        j_index = (size(this%f_paintableArray, 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref1 => Paintable_jcast(this%f_paintableArray((j_index) + 1)%v))
            call jstaticref1%jm_paint_1(j_graphics)
            end associate
            j_index = j_index - 1
        end do
        call this%GameCommandCanvas%jm_paint_1(j_graphics)
  end subroutine
end module BasicPaintablesCanvas_m

