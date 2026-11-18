! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABCustomImageItem_m
  use JR_m
  use NullImage_m
  use BasicColor_m
  use ABCustomItem_m
  implicit none

  type, extends(ABCustomItem) :: ABCustomImageItem
    integer(4) :: f_yOffset = 0
  contains
    procedure :: jm_getImage_0 => ABCustomImageItem_jm_getImage_0
  end type


contains

  function ABCustomImageItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCustomImageItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCustomImageItem)
      jresult => object
    end select
  end function

  recursive function ABCustomImageItem_jnew_6(j_label, j_image, j_layout, j_altText, j_basicColor, j_yOffset) result(this)
    character(len=*), intent(in) :: j_label
    class(Image), target, optional :: j_image
    integer(4), value :: j_layout
    character(len=*), intent(in) :: j_altText
    class(BasicColor), target, optional :: j_basicColor
    integer(4), value :: j_yOffset
    class(ABCustomImageItem), pointer :: this
    allocate(this)
    this%jclass = 'ABCustomImageItem'
    this%f_yOffset = 0
        continue ! super()
  end function

  recursive function ABCustomImageItem_jm_getImage_0(this) result(jresult)
    class(ABCustomImageItem), target :: this
    class(Image), pointer :: jresult
        jresult => NullImage_jstatic_NULL_IMAGE()
        return
  end function
end module ABCustomImageItem_m

