! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package javax.microedition.lcdui
module PlatformImage_m
  use JR_m
  use NullUtil_m
  use NullImage_m
  use Image_m
  use Graphics_m
  implicit none

  type, extends(JObject) :: PlatformImage
  contains
    procedure :: jm_getImage_1 => PlatformImage_jm_getImage_1
    procedure :: jm_getSurfaceWidth_2 => PlatformImage_jm_getSurfaceWidth_2
    procedure :: jm_getSurfaceHeight_2 => PlatformImage_jm_getSurfaceHeight_2
    procedure :: jm_getWidth_2 => PlatformImage_jm_getWidth_2
    procedure :: jm_getHeight_2 => PlatformImage_jm_getHeight_2
    procedure :: jm_getGraphics_4 => PlatformImage_jm_getGraphics_4
    procedure :: jm_drawImage_6 => PlatformImage_jm_drawImage_6
    procedure :: jm_drawRegion_10 => PlatformImage_jm_drawRegion_10
    procedure :: jm_getRGB_8 => PlatformImage_jm_getRGB_8
    procedure :: jm_setRGB_8 => PlatformImage_jm_setRGB_8
    procedure :: jm_getData_1 => PlatformImage_jm_getData_1
  end type


contains

  function PlatformImage_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformImage), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformImage)
      jresult => object
    end select
  end function

  function PlatformImage_jnew_0() result(this)
    class(PlatformImage), pointer :: this
    allocate(this)
    this%jclass = 'PlatformImage'
  end function

  recursive function PlatformImage_jm_getImage_1(this, j_graphicsSurface2) result(jresult)
    class(PlatformImage), target :: this
    class(JObject), target, optional :: j_graphicsSurface2
    class(JObject), pointer :: jresult
        jresult => NullImage_jstatic_NULL_IMAGE()
        return
  end function

  recursive function PlatformImage_jm_getSurfaceWidth_2(this, j_graphicsSurface2, j_width) result(jresult)
    class(PlatformImage), target :: this
    class(JObject), target, optional :: j_graphicsSurface2
    integer(4), value :: j_width
    integer(4) :: jresult
        jresult = j_width
        return
  end function

  recursive function PlatformImage_jm_getSurfaceHeight_2(this, j_graphicsSurface2, j_height) result(jresult)
    class(PlatformImage), target :: this
    class(JObject), target, optional :: j_graphicsSurface2
    integer(4), value :: j_height
    integer(4) :: jresult
        jresult = j_height
        return
  end function

  recursive function PlatformImage_jm_getWidth_2(this, j_image, j_width) result(jresult)
    class(PlatformImage), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4) :: jresult
        jresult = j_width
        return
  end function

  recursive function PlatformImage_jm_getHeight_2(this, j_image, j_height) result(jresult)
    class(PlatformImage), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_height
    integer(4) :: jresult
        jresult = j_height
        return
  end function

  recursive function PlatformImage_jm_getGraphics_4(this, j_graphicsSurface, j_width, j_height, j_image) result(jresult)
    class(PlatformImage), target :: this
    class(JObject), target, optional :: j_graphicsSurface
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), target, optional :: j_image
    class(Graphics), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine PlatformImage_jm_drawImage_6(this, j_image, j_x, j_y, j_anchor, j_g2, j_g)
    class(PlatformImage), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_anchor
    class(Graphics), target, optional :: j_g2
    class(JObject), target, optional :: j_g
    continue
  end subroutine

  recursive subroutine PlatformImage_jm_drawRegion_10(this, j_image, j_x_src, j_y_src, j_width, j_height, j_transform, j_x_dst, j_y_dst, j_anchor, j_g)
    class(PlatformImage), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_x_src
    integer(4), value :: j_y_src
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_transform
    integer(4), value :: j_x_dst
    integer(4), value :: j_y_dst
    integer(4), value :: j_anchor
    class(Graphics), target, optional :: j_g
    continue
  end subroutine

  recursive subroutine PlatformImage_jm_getRGB_8(this, j_argb, j_offset, j_scanlength, j_x, j_y, j_width, j_height, j_image)
    class(PlatformImage), target :: this
    integer(4) :: j_argb(:)
    integer(4), value :: j_offset
    integer(4), value :: j_scanlength
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), target, optional :: j_image
    continue
  end subroutine

  recursive subroutine PlatformImage_jm_setRGB_8(this, j_argb, j_offset, j_scanlength, j_x, j_y, j_width, j_height, j_image)
    class(PlatformImage), target :: this
    integer(4) :: j_argb(:)
    integer(4), value :: j_offset
    integer(4), value :: j_scanlength
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), target, optional :: j_image
    continue
  end subroutine

  recursive function PlatformImage_jm_getData_1(this, j_image) result(jresult)
    class(PlatformImage), target :: this
    class(Image), target, optional :: j_image
    integer(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult = jtemp1%f_NULL_INT_ARRAY
        return
  end function
end module PlatformImage_m

