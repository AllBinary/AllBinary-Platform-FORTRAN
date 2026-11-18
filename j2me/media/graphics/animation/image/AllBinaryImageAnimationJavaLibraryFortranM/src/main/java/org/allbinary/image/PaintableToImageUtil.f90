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
! package org.allbinary.image
module PaintableToImageUtil_m
  use JR_m
  use PaintableInterface_m
  use GameFeatureImageCacheFactory_m
  implicit none

  type, extends(JObject) :: PaintableToImageUtil
  end type

  class(PaintableToImageUtil), pointer, save :: PaintableToImageUtil_jcell_instance => null()
  logical, save :: PaintableToImageUtil_jset_instance = .false.

contains

  function PaintableToImageUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PaintableToImageUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PaintableToImageUtil)
      jresult => object
    end select
  end function

  function PaintableToImageUtil_jstatic_instance() result(jresult)
    class(PaintableToImageUtil), pointer :: jresult
    if (.not. PaintableToImageUtil_jset_instance) then
      PaintableToImageUtil_jset_instance = .true.
      PaintableToImageUtil_jcell_instance => PaintableToImageUtil_jnew_0()
    end if
    jresult => PaintableToImageUtil_jcell_instance
  end function

  subroutine PaintableToImageUtil_jsetstatic_instance(jvalue)
    class(PaintableToImageUtil), target, optional :: jvalue
    PaintableToImageUtil_jset_instance = .true.
    if (present(jvalue)) then
      PaintableToImageUtil_jcell_instance => jvalue
    else
      PaintableToImageUtil_jcell_instance => null()
    end if
  end subroutine

  function PaintableToImageUtil_jnew_0() result(this)
    class(PaintableToImageUtil), pointer :: this
    allocate(this)
    this%jclass = 'PaintableToImageUtil'
  end function

  recursive function PaintableToImageUtil_jm_getImage_3(j_paintableInterface, j_width, j_height) result(jresult)
    class(PaintableInterface), target, optional :: j_paintableInterface
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(Graphics), pointer :: j_graphics
    class(GameFeatureImageCacheFactory), pointer :: jtemp1
    character(len=:), allocatable :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 = JR_className(PaintableToImageUtil_jstatic_instance())
        jtemp1 => GameFeatureImageCacheFactory_jm_getInstance_0()
        j_image => jtemp1%jm_get_3(jtemp2, j_width, j_height)
        j_graphics => j_image%jm_getGraphics_0()
        call j_paintableInterface%jm_paint_1(j_graphics)
        jresult => j_image
        return
  end function
end module PaintableToImageUtil_m

