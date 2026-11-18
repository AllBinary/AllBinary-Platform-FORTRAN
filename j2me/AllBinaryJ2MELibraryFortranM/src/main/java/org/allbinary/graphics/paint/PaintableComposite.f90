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
! package org.allbinary.graphics.paint
module PaintableComposite_m
  use JR_m
  use Paintable_m
  use PaintableInterface_m
  implicit none

  type, extends(Paintable) :: PaintableComposite
    type(JRef), allocatable :: f_paintableArray(:)
  contains
    procedure :: jm_paint_1 => PaintableComposite_jm_paint_1
    procedure :: jm_paintThreed_1 => PaintableComposite_jm_paintThreed_1
  end type


contains

  function PaintableComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PaintableComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PaintableComposite)
      jresult => object
    end select
  end function

  recursive function PaintableComposite_jnew_1(j_paintableArray) result(this)
    type(JRef) :: j_paintableArray(:)
    class(PaintableComposite), pointer :: this
    allocate(this)
    this%jclass = 'PaintableComposite'
    
        this%f_paintableArray = j_paintableArray
  end function

  recursive subroutine PaintableComposite_jm_paint_1(this, j_graphics)
    class(PaintableComposite), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = (size(this%f_paintableArray, 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref1 => PaintableInterface_jcast(this%f_paintableArray((j_index) + 1)%v))
            call jstaticref1%jm_paint_1(j_graphics)
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine PaintableComposite_jm_paintThreed_1(this, j_graphics)
    class(PaintableComposite), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = (size(this%f_paintableArray, 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref2 => PaintableInterface_jcast(this%f_paintableArray((j_index) + 1)%v))
            call jstaticref2%jm_paintThreed_1(j_graphics)
            end associate
            j_index = j_index - 1
        end do
  end subroutine
end module PaintableComposite_m

