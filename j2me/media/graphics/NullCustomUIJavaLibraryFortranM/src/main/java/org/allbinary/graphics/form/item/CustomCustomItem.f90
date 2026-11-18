! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module CustomCustomItem_m
  use JR_m
  use BasicColor_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use ABCustomItem_m
  implicit none

  type, extends(ABCustomItem) :: CustomCustomItem
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
  contains
    procedure :: jm_updateMeasurement_1 => CustomCustomItem_jm_updateMeasurement_1
  end type

  ! CustomCustomItem used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: CustomCustomItem_jas_UpdateMyFontInterface
    class(CustomCustomItem), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => CustomCustomItem_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function CustomCustomItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomCustomItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomCustomItem)
      jresult => object
    end select
  end function

  function CustomCustomItem_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(CustomCustomItem), target :: object
    class(CustomCustomItem_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CustomCustomItem'
    jresult%jtarget => object
  end function

  recursive subroutine CustomCustomItem_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(CustomCustomItem_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function CustomCustomItem_jnew_3(j_label, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_label
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CustomCustomItem), pointer :: this
    allocate(this)
    this%jclass = 'CustomCustomItem'
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
        continue ! super()
  end function

  recursive subroutine CustomCustomItem_jm_updateMeasurement_1(this, j_graphics)
    class(CustomCustomItem), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module CustomCustomItem_m

