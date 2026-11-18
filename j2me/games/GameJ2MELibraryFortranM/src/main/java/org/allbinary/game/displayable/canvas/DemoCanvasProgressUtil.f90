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
module DemoCanvasProgressUtil_m
  use JR_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use PaintableComposite_m
  use PaintableInterface_m
  use DemoCanvas_m
  implicit none

  type, extends(JObject) :: DemoCanvasProgressUtil
  end type


contains

  function DemoCanvasProgressUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoCanvasProgressUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoCanvasProgressUtil)
      jresult => object
    end select
  end function

  function DemoCanvasProgressUtil_jnew_0() result(this)
    class(DemoCanvasProgressUtil), pointer :: this
    allocate(this)
    this%jclass = 'DemoCanvasProgressUtil'
  end function

  recursive subroutine DemoCanvasProgressUtil_jm_showProgress_1(j_demoCanvas)
    class(DemoCanvas), target, optional :: j_demoCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call DemoCanvasProgressUtil_jm_showProgressOptionallyInTheBackground_2(j_demoCanvas, .false.)
  end subroutine

  recursive subroutine DemoCanvasProgressUtil_jm_showProgressOptionallyInTheBackground_2(j_demoCanvas, j_background)
    class(DemoCanvas), target, optional :: j_demoCanvas
    logical, value :: j_background
    class(ProgressCanvas), pointer :: j_progressCanvas
    type(JRef), allocatable :: j_paintableArray(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        call j_progressCanvas%jm_startBackground_1(j_background)
        j_paintableArray = JR_newRefArray(2)
        j_paintableArray((0) + 1)%v => j_progressCanvas
        j_paintableArray((1) + 1)%v => j_demoCanvas%jm_getDefaultPaintableInterface_0()
        call j_demoCanvas%jm_setDefaultPaintableInterface_1(PaintableComposite_jnew_1(j_paintableArray))
        call j_demoCanvas%jm_setPaintableInterface_1(j_demoCanvas%jm_getDefaultPaintableInterface_0())
  end subroutine
end module DemoCanvasProgressUtil_m

