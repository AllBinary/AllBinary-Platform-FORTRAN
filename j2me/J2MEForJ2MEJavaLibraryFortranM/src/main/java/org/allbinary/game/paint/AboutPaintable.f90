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
! package org.allbinary.game.paint
module AboutPaintable_m
  use JR_m
  use Anchor_m
  use CanvasStrings_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: AboutPaintable
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    character(len=:), allocatable :: f_ABOUT
    type(JString), allocatable :: f_info(:)
    type(JString), allocatable :: f_developers(:)
    type(JRef), allocatable :: f_paintableArray(:)
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_charHeight = 0
    integer(4) :: f_aboutBeginWidth = 0
    integer(4), allocatable :: f_infoBeginWidth(:)
    integer(4), allocatable :: f_developersBeginWidth(:)
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_updateMeasurement_1 => AboutPaintable_jm_updateMeasurement_1
    procedure :: jm_getPaintableArrayInstance_0 => AboutPaintable_jm_getPaintableArrayInstance_0
    procedure :: jm_paint_1 => AboutPaintable_jm_paint_1
  end type

  ! AboutPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: AboutPaintable_jas_UpdateMyFontInterface
    class(AboutPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => AboutPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function AboutPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AboutPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AboutPaintable)
      jresult => object
    end select
  end function

  function AboutPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(AboutPaintable), target :: object
    class(AboutPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AboutPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine AboutPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(AboutPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function AboutPaintable_jnew_2(j_info, j_developers) result(this)
    type(JString) :: j_info(:)
    type(JString) :: j_developers(:)
    class(AboutPaintable), pointer :: this
    class(CanvasStrings), pointer :: jtemp1
    allocate(this)
    this%jclass = 'AboutPaintable'
    this%f_ABOUT = ''
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    jtemp1 => CanvasStrings_jm_getInstance_0()
    this%f_ABOUT = jtemp1%f_ABOUT
    
    
    this%f_paintableArray = [JRef :: JRef(this)]
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    
    
    
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        this%f_info = j_info
        this%f_infoBeginWidth = JR_newIntArray(size(this%f_info, 1))
        this%f_developers = j_developers
        this%f_developersBeginWidth = JR_newIntArray(size(this%f_developers, 1))
  end function

  recursive function AboutPaintable_jm_getInstance_2(j_info, j_developers) result(jresult)
    type(JString) :: j_info(:)
    type(JString) :: j_developers(:)
    class(AboutPaintable), pointer :: jresult
        jresult => AboutPaintable_jnew_2(j_info, j_developers)
        return
  end function

  recursive subroutine AboutPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(AboutPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    integer(4) :: j_infoSize
    integer(4) :: j_index
    integer(4) :: j_size
        j_font => j_graphics%jm_getFont_0()
        this%f_charHeight = j_font%jm_getHeight_0()
        this%f_aboutBeginWidth = (shifta(j_font%jm_stringWidth_1(this%f_ABOUT), iand(1, 31)))
        j_infoSize = size(this%f_info, 1)
        j_index = 0
        do while ((j_index < j_infoSize))
            this%f_infoBeginWidth((j_index) + 1) = (shifta(j_font%jm_stringWidth_1(this%f_info((j_index) + 1)%v), iand(1, 31)))
            j_index = j_index + 1
        end do
        j_size = size(this%f_developers, 1)
        j_index = 0
        do while ((j_index < j_size))
            this%f_developersBeginWidth((j_index) + 1) = (shifta(j_font%jm_stringWidth_1(this%f_developers((j_index) + 1)%v), iand(1, 31)))
            j_index = j_index + 1
        end do
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive function AboutPaintable_jm_getPaintableArrayInstance_0(this) result(jresult)
    class(AboutPaintable), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_paintableArray
        return
  end function

  recursive subroutine AboutPaintable_jm_paint_1(this, j_graphics)
    class(AboutPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_halfWidth
    integer(4) :: j_infoSize
    integer(4) :: j_index
    integer(4) :: j_size
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_halfWidth = this%f_displayInfoSingleton%jm_getLastHalfWidth_0()
        call j_graphics%jm_drawString_4(this%f_ABOUT, (j_halfWidth - this%f_aboutBeginWidth), (2 * this%f_charHeight), this%f_anchor)
        j_infoSize = size(this%f_info, 1)
        j_index = 0
        do while ((j_index < j_infoSize))
            call j_graphics%jm_drawString_4(this%f_info((j_index) + 1)%v, (j_halfWidth - this%f_infoBeginWidth((j_index) + 1)), (((4 + j_index)) * this%f_charHeight), this%f_anchor)
            j_index = j_index + 1
        end do
        j_size = size(this%f_developers, 1)
        j_index = 0
        do while ((j_index < j_size))
            call j_graphics%jm_drawString_4(this%f_developers((j_index) + 1)%v, (j_halfWidth - this%f_developersBeginWidth((j_index) + 1)), ((((5 + j_infoSize) + j_index)) * this%f_charHeight), this%f_anchor)
            j_index = j_index + 1
        end do
  end subroutine
end module AboutPaintable_m

