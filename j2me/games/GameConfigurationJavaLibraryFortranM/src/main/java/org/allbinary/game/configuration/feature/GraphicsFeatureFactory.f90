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
! package org.allbinary.game.configuration.feature
module GraphicsFeatureFactory_m
  use JR_m
  use StringUtil_m
  use GraphicsFeature_m
  implicit none

  type, extends(JObject) :: GraphicsFeatureFactory
    class(GraphicsFeature), pointer :: f_NONE => null()
    class(GraphicsFeature), pointer :: f_TRANSPARENT_IMAGE_CREATION => null()
    class(GraphicsFeature), pointer :: f_IMAGE_GRAPHICS => null()
    class(GraphicsFeature), pointer :: f_IMAGE_ROTATION_ON_THE_FLY => null()
    class(GraphicsFeature), pointer :: f_IMAGE_TO_ARRAY_GRAPHICS => null()
    class(GraphicsFeature), pointer :: f_SPRITE_QUARTER_ROTATION_GRAPHICS => null()
    class(GraphicsFeature), pointer :: f_SPRITE_FULL_GRAPHICS => null()
    class(GraphicsFeature), pointer :: f_VECTOR_GRAPHICS => null()
    class(GraphicsFeature), pointer :: f_VECTOR_TO_IMAGE_GRAPHICS => null()
  end type

  class(GraphicsFeatureFactory), pointer, save :: GraphicsFeatureFactory_jcell_instance => null()
  logical, save :: GraphicsFeatureFactory_jset_instance = .false.

contains

  function GraphicsFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GraphicsFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GraphicsFeatureFactory)
      jresult => object
    end select
  end function

  function GraphicsFeatureFactory_jstatic_instance() result(jresult)
    class(GraphicsFeatureFactory), pointer :: jresult
    if (.not. GraphicsFeatureFactory_jset_instance) then
      GraphicsFeatureFactory_jset_instance = .true.
      GraphicsFeatureFactory_jcell_instance => GraphicsFeatureFactory_jnew_0()
    end if
    jresult => GraphicsFeatureFactory_jcell_instance
  end function

  subroutine GraphicsFeatureFactory_jsetstatic_instance(jvalue)
    class(GraphicsFeatureFactory), target, optional :: jvalue
    GraphicsFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      GraphicsFeatureFactory_jcell_instance => jvalue
    else
      GraphicsFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GraphicsFeatureFactory_jnew_0() result(this)
    class(GraphicsFeatureFactory), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GraphicsFeatureFactory'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_NONE => GraphicsFeature_jnew_1(jtemp1%f_NULL_STRING)
    this%f_TRANSPARENT_IMAGE_CREATION => GraphicsFeature_jnew_1('Transparent Image Creation')
    this%f_IMAGE_GRAPHICS => GraphicsFeature_jnew_1('Image Graphics')
    this%f_IMAGE_ROTATION_ON_THE_FLY => GraphicsFeature_jnew_1('Image Rotated On The Fly')
    this%f_IMAGE_TO_ARRAY_GRAPHICS => GraphicsFeature_jnew_1('Image To Array Graphics')
    this%f_SPRITE_QUARTER_ROTATION_GRAPHICS => GraphicsFeature_jnew_1('Sprite Quarter Rotation Graphics')
    this%f_SPRITE_FULL_GRAPHICS => GraphicsFeature_jnew_1('Sprite Full Rotation Graphics')
    this%f_VECTOR_GRAPHICS => GraphicsFeature_jnew_1('BasicArrayList Graphics')
    this%f_VECTOR_TO_IMAGE_GRAPHICS => GraphicsFeature_jnew_1('BasicArrayList To Image Graphics')
        continue
  end function

  recursive function GraphicsFeatureFactory_jm_getInstance_0() result(jresult)
    class(GraphicsFeatureFactory), pointer :: jresult
        jresult => GraphicsFeatureFactory_jstatic_instance()
        return
  end function
end module GraphicsFeatureFactory_m

