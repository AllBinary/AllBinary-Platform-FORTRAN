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
! package org.allbinary.game.layer
module PaintableLayerComposite_m
  use JR_m
  use Paintable_m
  use PaintableInterface_m
  use ABLayer_m
  implicit none

  type, extends(Paintable) :: PaintableLayerComposite
    type(JRef), allocatable :: f_paintableArray(:)
  contains
    procedure :: jm_paint_1 => PaintableLayerComposite_jm_paint_1
    procedure :: jm_paintThreed_1 => PaintableLayerComposite_jm_paintThreed_1
  end type


contains

  function PaintableLayerComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PaintableLayerComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PaintableLayerComposite)
      jresult => object
    end select
  end function

  recursive function PaintableLayerComposite_jnew_1(j_paintableArray) result(this)
    type(JRef) :: j_paintableArray(:)
    class(PaintableLayerComposite), pointer :: this
    allocate(this)
    this%jclass = 'PaintableLayerComposite'
    
        this%f_paintableArray = j_paintableArray
  end function

  recursive subroutine PaintableLayerComposite_jm_paint_1(this, j_graphics)
    class(PaintableLayerComposite), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_index
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = size(this%f_paintableArray, 1)
        do while ((jtemp1 >= 0))
            associate (jstaticref1 => ABLayer_jcast(this%f_paintableArray((j_index) + 1)%v))
            call jstaticref1%jm_paint_1(j_graphics)
            end associate
        end do
  end subroutine

  recursive subroutine PaintableLayerComposite_jm_paintThreed_1(this, j_graphics)
    class(PaintableLayerComposite), target :: this
    class(Graphics), target, optional :: j_graphics
    class(PaintableInterface), pointer :: j_paintableInterface
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = size(this%f_paintableArray, 1)
        do while ((jtemp2 >= 0))
            j_paintableInterface => PaintableInterface_jcast(ABLayer_jcast(this%f_paintableArray((j_index) + 1)%v))
            call j_paintableInterface%jm_paintThreed_1(j_graphics)
        end do
  end subroutine
end module PaintableLayerComposite_m

