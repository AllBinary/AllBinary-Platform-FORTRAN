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
module AnimationFrameToImageUtil_m
  use JR_m
  use Animation_m
  use GameFeatureImageCacheFactory_m
  implicit none

  type, extends(JObject) :: AnimationFrameToImageUtil
  contains
    procedure :: jm_getInstanceTranslate_3 => AnimationFrameToImageUtil_jm_getInstanceTranslate_3
    procedure :: jm_getInstanceWH_3 => AnimationFrameToImageUtil_jm_getInstanceWH_3
  end type

  class(AnimationFrameToImageUtil), pointer, save :: AnimationFrameToImageUtil_jcell_instance => null()
  logical, save :: AnimationFrameToImageUtil_jset_instance = .false.

contains

  function AnimationFrameToImageUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationFrameToImageUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationFrameToImageUtil)
      jresult => object
    end select
  end function

  function AnimationFrameToImageUtil_jstatic_instance() result(jresult)
    class(AnimationFrameToImageUtil), pointer :: jresult
    if (.not. AnimationFrameToImageUtil_jset_instance) then
      AnimationFrameToImageUtil_jset_instance = .true.
      AnimationFrameToImageUtil_jcell_instance => AnimationFrameToImageUtil_jnew_0()
    end if
    jresult => AnimationFrameToImageUtil_jcell_instance
  end function

  subroutine AnimationFrameToImageUtil_jsetstatic_instance(jvalue)
    class(AnimationFrameToImageUtil), target, optional :: jvalue
    AnimationFrameToImageUtil_jset_instance = .true.
    if (present(jvalue)) then
      AnimationFrameToImageUtil_jcell_instance => jvalue
    else
      AnimationFrameToImageUtil_jcell_instance => null()
    end if
  end subroutine

  function AnimationFrameToImageUtil_jnew_0() result(this)
    class(AnimationFrameToImageUtil), pointer :: this
    allocate(this)
    this%jclass = 'AnimationFrameToImageUtil'
  end function

  recursive function AnimationFrameToImageUtil_jm_getInstance_0() result(jresult)
    class(AnimationFrameToImageUtil), pointer :: jresult
        jresult => AnimationFrameToImageUtil_jstatic_instance()
        return
  end function

  recursive function AnimationFrameToImageUtil_jm_getInstanceTranslate_3(this, j_width, j_height, j_animationInterface) result(jresult)
    class(AnimationFrameToImageUtil), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Animation), target, optional :: j_animationInterface
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(Graphics), pointer :: j_graphics
    integer(4) :: j_tranlateX
    integer(4) :: j_tranlateY
    class(GameFeatureImageCacheFactory), pointer :: jtemp1
    character(len=:), allocatable :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 = JR_className(AnimationFrameToImageUtil_jstatic_instance())
        jtemp1 => GameFeatureImageCacheFactory_jm_getInstance_0()
        j_image => jtemp1%jm_get_3(jtemp2, (shifta(((j_width * 3)), iand(1, 31))), (shifta(((j_height * 3)), iand(1, 31))))
        j_graphics => j_image%jm_getGraphics_0()
        j_tranlateX = (shifta(j_width, iand(2, 31)))
        j_tranlateY = (shifta(j_height, iand(2, 31)))
        call j_graphics%jm_translate_2(j_tranlateX, j_tranlateY)
        call j_animationInterface%jm_paintXY_3(j_graphics, 0, 0)
        call j_graphics%jm_translate_2((-j_tranlateX), (-j_tranlateY))
        jresult => j_image
        return
  end function

  recursive function AnimationFrameToImageUtil_jm_getInstanceWH_3(this, j_width, j_height, j_animationInterface) result(jresult)
    class(AnimationFrameToImageUtil), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Animation), target, optional :: j_animationInterface
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(Graphics), pointer :: j_graphics
    class(GameFeatureImageCacheFactory), pointer :: jtemp3
    character(len=:), allocatable :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 = JR_className(AnimationFrameToImageUtil_jstatic_instance())
        jtemp3 => GameFeatureImageCacheFactory_jm_getInstance_0()
        j_image => jtemp3%jm_get_3(jtemp4, j_width, j_height)
        j_graphics => j_image%jm_getGraphics_0()
        call j_animationInterface%jm_paintXY_3(j_graphics, 0, 0)
        jresult => j_image
        return
  end function
end module AnimationFrameToImageUtil_m

