! Generated Code Do Not Modify
! package org.allbinary.graphics.form
module PaintableForm_m
  use JR_m
  use GPoint_m
  use Rectangle_m
  use RectangleFactory_m
  use BasicColor_m
  use BasicColorFactory_m
  use CanvasStrings_m
  use ABCustomItem_m
  use NullUtil_m
  use StringUtil_m
  use ABCustomForm_m
  use FormTypeFactory_m
  use FormType_m
  implicit none

  type, extends(ABCustomForm) :: PaintableForm
    class(CanvasStrings), pointer :: f_canvasStrings => null()
    class(Rectangle), pointer :: f_rectangle => null()
    integer(4) :: f_x = 0
    integer(4) :: f_y = 0
    class(FormType), pointer :: f_formType => null()
  contains
    procedure :: jm_init_2 => PaintableForm_jm_init_2
    procedure :: jm_getWidth_0 => PaintableForm_jm_getWidth_0
  end type

  class(JObject), pointer, save :: PaintableForm_jcell_NULL_PAINTABLE_FORM => null()
  logical, save :: PaintableForm_jset_NULL_PAINTABLE_FORM = .false.

contains

  function PaintableForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PaintableForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PaintableForm)
      jresult => object
    end select
  end function

  function PaintableForm_jstatic_NULL_PAINTABLE_FORM() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. PaintableForm_jset_NULL_PAINTABLE_FORM) then
      PaintableForm_jset_NULL_PAINTABLE_FORM = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    PaintableForm_jcell_NULL_PAINTABLE_FORM => jtemp1%f_NULL_OBJECT
    end if
    jresult => PaintableForm_jcell_NULL_PAINTABLE_FORM
  end function

  subroutine PaintableForm_jsetstatic_NULL_PAINTABLE_FORM(jvalue)
    class(JObject), target, optional :: jvalue
    PaintableForm_jset_NULL_PAINTABLE_FORM = .true.
    if (present(jvalue)) then
      PaintableForm_jcell_NULL_PAINTABLE_FORM => jvalue
    else
      PaintableForm_jcell_NULL_PAINTABLE_FORM => null()
    end if
  end subroutine

  recursive function PaintableForm_jnew_4(j_title, j_items, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(PaintableForm), pointer :: this
    class(FormTypeFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PaintableForm'
    this%f_canvasStrings => CanvasStrings_jm_getInstance_0()
    this%f_rectangle => RectangleFactory_jstatic_SINGLETON()
    
    
    jtemp6 => FormTypeFactory_jm_getInstance_0()
    this%f_formType => jtemp6%f_NULL_FORM_TYPE
        continue ! super()
        call this%jm_setSelectedIndex_1(0)
  end function

  recursive function PaintableForm_jm_getNullPaintableForm_0() result(jresult)
    class(PaintableForm), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(BasicColorFactory), pointer :: jtemp4
    class(BasicColorFactory), pointer :: jtemp5
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(PaintableForm_jstatic_NULL_PAINTABLE_FORM(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => StringUtil_jm_getInstance_0()
            jtemp4 => BasicColorFactory_jm_getInstance_0()
            jtemp5 => BasicColorFactory_jm_getInstance_0()
            call PaintableForm_jsetstatic_NULL_PAINTABLE_FORM(PaintableForm_jnew_4(jtemp3%f_EMPTY_STRING, JR_newRefArray(0), jtemp4%f_BLACK, jtemp5%f_WHITE))
        end if
        jresult => PaintableForm_jcast(PaintableForm_jstatic_NULL_PAINTABLE_FORM())
        return
  end function

  recursive subroutine PaintableForm_jm_init_2(this, j_rectangle, j_formType)
    class(PaintableForm), target :: this
    class(Rectangle), target, optional :: j_rectangle
    class(FormType), target, optional :: j_formType
    class(GPoint), pointer :: j_point
        this%f_rectangle => j_rectangle
        j_point => this%f_rectangle%jm_getPoint_0()
        this%f_x = j_point%jm_getX_0()
        this%f_y = j_point%jm_getY_0()
        this%f_formType => j_formType
  end subroutine

  recursive function PaintableForm_jm_getWidth_0(this) result(jresult)
    class(PaintableForm), target :: this
    integer(4) :: jresult
        jresult = this%f_rectangle%jm_getWidth_0()
        return
  end function
end module PaintableForm_m

