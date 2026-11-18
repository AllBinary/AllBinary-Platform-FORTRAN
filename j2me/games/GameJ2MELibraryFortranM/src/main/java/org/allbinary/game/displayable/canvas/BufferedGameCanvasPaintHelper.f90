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
module BufferedGameCanvasPaintHelper_m
  use JR_m
  use NullCanvas_m
  use NullImage_m
  use Anchor_m
  use MyCanvas_m
  use ProcessPaintable_m
  use CircularIndexUtil_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(ProcessPaintable) :: BufferedGameCanvasPaintHelper
    class(Canvas), pointer :: f_gameCanvas => null()
    type(JRef), allocatable :: f_offScreenImage(:)
    class(Image), pointer :: f_previousImage => null()
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    class(CircularIndexUtil), pointer :: f_drawCircularIndexUtil => null()
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_process_0 => BufferedGameCanvasPaintHelper_jm_process_0
    procedure :: jm_paint_1 => BufferedGameCanvasPaintHelper_jm_paint_1
  end type

  integer(4), save :: BufferedGameCanvasPaintHelper_jcell_MAX_IMAGES
  logical, save :: BufferedGameCanvasPaintHelper_jset_MAX_IMAGES = .false.

contains

  function BufferedGameCanvasPaintHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BufferedGameCanvasPaintHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BufferedGameCanvasPaintHelper)
      jresult => object
    end select
  end function

  function BufferedGameCanvasPaintHelper_jstatic_MAX_IMAGES() result(jresult)
    integer(4) :: jresult
    if (.not. BufferedGameCanvasPaintHelper_jset_MAX_IMAGES) then
      BufferedGameCanvasPaintHelper_jset_MAX_IMAGES = .true.
      BufferedGameCanvasPaintHelper_jcell_MAX_IMAGES = 4
    end if
    jresult = BufferedGameCanvasPaintHelper_jcell_MAX_IMAGES
  end function

  subroutine BufferedGameCanvasPaintHelper_jsetstatic_MAX_IMAGES(jvalue)
    integer(4), value :: jvalue
    BufferedGameCanvasPaintHelper_jset_MAX_IMAGES = .true.
    BufferedGameCanvasPaintHelper_jcell_MAX_IMAGES = jvalue
  end subroutine

  recursive function BufferedGameCanvasPaintHelper_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(BufferedGameCanvasPaintHelper), pointer :: this
    allocate(this)
    this%jclass = 'BufferedGameCanvasPaintHelper'
    this%f_gameCanvas => NullCanvas_jstatic_NULL_CANVAS()
    this%f_offScreenImage = JR_newRefArray(BufferedGameCanvasPaintHelper_jstatic_MAX_IMAGES())
    this%f_previousImage => NullImage_jstatic_NULL_IMAGE()
    this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(BufferedGameCanvasPaintHelper_jstatic_MAX_IMAGES())
    this%f_drawCircularIndexUtil => CircularIndexUtil_jm_createInstanceAt_2((BufferedGameCanvasPaintHelper_jstatic_MAX_IMAGES() - 1), BufferedGameCanvasPaintHelper_jstatic_MAX_IMAGES())
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive subroutine BufferedGameCanvasPaintHelper_jm_process_0(this)
    class(BufferedGameCanvasPaintHelper), target :: this
    class(MyCanvas), pointer :: j_myCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_myCanvas => MyCanvas_jcast(this%f_gameCanvas)
        associate (jstaticref1 => Image_jcast(this%f_offScreenImage((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call j_myCanvas%jm_draw_1(jstaticref1%jm_getGraphics_0())
        end associate
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
        jdiscardInt = this%f_drawCircularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine BufferedGameCanvasPaintHelper_jm_paint_1(this, j_graphics)
    class(BufferedGameCanvasPaintHelper), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_previousImage => Image_jcast(this%f_offScreenImage((this%f_drawCircularIndexUtil%jm_getIndex_0()) + 1)%v)
        call j_graphics%jm_drawImage_4(this%f_previousImage, 0, 0, this%f_anchor)
  end subroutine
end module BufferedGameCanvasPaintHelper_m

