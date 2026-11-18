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
! package org.allbinary.input.motion.button
module TouchButtonsPaintable_m
  use JR_m
  use BasicColor_m
  use BasicColorSetUtil_m
  use Paintable_m
  use BasicArrayList_m
  use TouchButtonFactory_m
  use TouchButton_m
  implicit none

  type, extends(Paintable) :: TouchButtonsPaintable
    class(BasicColor), pointer :: f_foregroundBasicColor => null()
    integer(4) :: f_foregroundColor = 0
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(TouchButtonFactory), pointer :: f_touchButtonFactory => null()
  contains
    procedure :: jm_paint_1 => TouchButtonsPaintable_jm_paint_1
  end type


contains

  function TouchButtonsPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonsPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonsPaintable)
      jresult => object
    end select
  end function

  recursive function TouchButtonsPaintable_jnew_1(j_basicColor) result(this)
    class(BasicColor), target, optional :: j_basicColor
    class(TouchButtonsPaintable), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonsPaintable'
    
    
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    this%f_touchButtonFactory => TouchButtonFactory_jm_getInstance_0()
        this%f_foregroundBasicColor => j_basicColor
        this%f_foregroundColor = j_basicColor%jm_intValue_0()
  end function

  recursive subroutine TouchButtonsPaintable_jm_paint_1(this, j_graphics)
    class(TouchButtonsPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(BasicArrayList), pointer :: j_list
    class(TouchButton), pointer :: j_touchButton
    integer(4) :: j_index
    integer(4) :: jtemp1
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%f_touchButtonFactory%jm_getList_0()
        call this%f_basicSetColorUtil%jm_setBasicColorP3_3(j_graphics, this%f_foregroundBasicColor, this%f_foregroundColor)
        continue
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = j_list%jm_size_0()
        do while ((jtemp1 >= 0))
            j_touchButton => TouchButton_jcast(j_list%f_objectArray((j_index) + 1)%v)
            call j_touchButton%jm_paint_1(j_graphics)
        end do
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = j_list%jm_size_0()
        do while ((jtemp2 >= 0))
            j_touchButton => TouchButton_jcast(j_list%f_objectArray((j_index) + 1)%v)
            call j_touchButton%jm_paintHint_1(j_graphics)
        end do
  end subroutine
end module TouchButtonsPaintable_m

