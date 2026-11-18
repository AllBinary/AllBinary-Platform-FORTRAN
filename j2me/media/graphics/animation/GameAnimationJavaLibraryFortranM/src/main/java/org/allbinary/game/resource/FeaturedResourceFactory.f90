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
! package org.allbinary.game.resource
module FeaturedResourceFactory_m
  use JR_m
  use Features_m
  use GameFeatureControlledInterface_m
  use GraphicsFeatureFactory_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  use CommonSeps_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use ResourceLoadingLevelFactory_m
  implicit none

  type, extends(JObject) :: FeaturedResourceFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_list => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    character(len=:), allocatable :: f_ANIMATION_FEATURES
    character(len=:), allocatable :: f_IMAGE_LABEL
    character(len=:), allocatable :: f_IMAGE_GRAPHICS_ARRAY
    character(len=:), allocatable :: f_IMAGE_GRAPHICS_ROTATION
    character(len=:), allocatable :: f_SPRITE_QUARTER
    character(len=:), allocatable :: f_SPRITE_FULL
    character(len=:), allocatable :: f_IS_LOADING_LEVEL_LABEL
    character(len=:), allocatable :: f_IS_FEATURE
    character(len=:), allocatable :: f_GAME_FEATURE_CONTROLLED
  contains
    procedure :: jm_init_1 => FeaturedResourceFactory_jm_init_1
    procedure :: jm_clear_0 => FeaturedResourceFactory_jm_clear_0
    procedure :: jm_add_1 => FeaturedResourceFactory_jm_add_1
    procedure :: jm_getList_0 => FeaturedResourceFactory_jm_getList_0
  end type


contains

  function FeaturedResourceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FeaturedResourceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FeaturedResourceFactory)
      jresult => object
    end select
  end function

  recursive function FeaturedResourceFactory_jnew_0() result(this)
    class(FeaturedResourceFactory), pointer :: this
    allocate(this)
    this%jclass = 'FeaturedResourceFactory'
    this%f_ANIMATION_FEATURES = ''
    this%f_IMAGE_LABEL = ''
    this%f_IMAGE_GRAPHICS_ARRAY = ''
    this%f_IMAGE_GRAPHICS_ROTATION = ''
    this%f_SPRITE_QUARTER = ''
    this%f_SPRITE_FULL = ''
    this%f_IS_LOADING_LEVEL_LABEL = ''
    this%f_IS_FEATURE = ''
    this%f_GAME_FEATURE_CONTROLLED = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_list => BasicArrayListD_jnew_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_ANIMATION_FEATURES = 'Animation Features: Vector: '
    this%f_IMAGE_LABEL = ' Image: '
    this%f_IMAGE_GRAPHICS_ARRAY = 'Image Array: '
    this%f_IMAGE_GRAPHICS_ROTATION = 'Image Rotate: '
    this%f_SPRITE_QUARTER = ' Sprite Quarter: '
    this%f_SPRITE_FULL = ' Sprite Full: '
    this%f_IS_LOADING_LEVEL_LABEL = ' isLoadingLevel '
    this%f_IS_FEATURE = ' isFeature: '
    this%f_GAME_FEATURE_CONTROLLED = 'GameFeatureControlledInterface: '
        continue
  end function

  recursive subroutine FeaturedResourceFactory_jm_init_1(this, j_level)
    class(FeaturedResourceFactory), target :: this
    integer(4), value :: j_level
    integer(4) :: j_size
    class(GameFeatureControlledInterface), pointer :: j_featureInterface
    logical :: j_isLoadingLevel
    logical :: j_isFeature
    integer(4) :: j_index
    class(Features), pointer :: j_features
    class(GraphicsFeatureFactory), pointer :: j_graphicsFeatureFactory
    class(StringMaker), pointer :: j_stringBuffer
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(ResourceLoadingLevelFactory), pointer :: jtemp10
    class(CommonSeps), pointer :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = this%f_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_featureInterface => GameFeatureControlledInterface_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
            j_isLoadingLevel = j_featureInterface%jm_isLoadingLevel_1(j_level)
            j_isFeature = j_featureInterface%jm_isFeature_0()
            jtemp9 => StringMaker_jnew_0()
            jtemp8 => jtemp9%jm_append_1(this%f_GAME_FEATURE_CONTROLLED)
            jtemp10 => ResourceLoadingLevelFactory_jm_getInstance_0()
            jtemp7 => jtemp8%jm_append_1(j_featureInterface%jm_toString_0())
            jtemp11 => CommonSeps_jm_getInstance_0()
            jtemp6 => jtemp7%jm_append_1(this%f_IS_LOADING_LEVEL_LABEL)
            jtemp5 => jtemp6%jm_append_1(jtemp10%jm_getLevelString_1(j_level))
            jtemp4 => jtemp5%jm_append_1(jtemp11%f_COLON_SEP)
            jtemp3 => jtemp4%jm_appendboolean_1(j_isLoadingLevel)
            jtemp2 => jtemp3%jm_append_1(this%f_IS_FEATURE)
            jtemp1 => jtemp2%jm_appendboolean_1(j_isFeature)
            call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_commonStrings%f_INIT)
            if ((j_isLoadingLevel .and. j_isFeature)) then
                call j_featureInterface%jm_init_1(j_level)
            end if
            j_index = j_index + 1
        end do
        j_features => Features_jm_getInstance_0()
        j_graphicsFeatureFactory => GraphicsFeatureFactory_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_ANIMATION_FEATURES)
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_VECTOR_GRAPHICS))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_IMAGE_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_IMAGE_GRAPHICS))
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, this%f_commonStrings%f_INIT)
        if (j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_IMAGE_GRAPHICS)) then
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_IMAGE_GRAPHICS_ARRAY)
            jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_IMAGE_TO_ARRAY_GRAPHICS))
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_IMAGE_GRAPHICS_ROTATION)
            jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_IMAGE_TO_ARRAY_GRAPHICS))
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPRITE_QUARTER)
            jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_SPRITE_QUARTER_ROTATION_GRAPHICS))
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPRITE_FULL)
            jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_SPRITE_FULL_GRAPHICS))
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, this%f_commonStrings%f_INIT)
        end if
  end subroutine

  recursive subroutine FeaturedResourceFactory_jm_clear_0(this)
    class(FeaturedResourceFactory), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
  end subroutine

  recursive subroutine FeaturedResourceFactory_jm_add_1(this, j_featureInterface)
    class(FeaturedResourceFactory), target :: this
    class(GameFeatureControlledInterface), target, optional :: j_featureInterface
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(CommonLabels), pointer :: jtemp15
    class(StringUtil), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp15 => CommonLabels_jm_getInstance_0()
        jtemp16 => StringUtil_jm_getInstance_0()
        jtemp14 => StringMaker_jnew_0()
        jtemp13 => jtemp14%jm_append_1(jtemp15%f_START_LABEL)
        jtemp12 => jtemp13%jm_append_1(jtemp16%jm_toString_1(j_featureInterface))
        call this%f_logUtil%jm_putF_3(jtemp12%jm_toString_0(), this, this%f_commonStrings%f_ADD)
        jdiscardBoolean = this%f_list%jm_add_1(j_featureInterface)
  end subroutine

  recursive function FeaturedResourceFactory_jm_getList_0(this) result(jresult)
    class(FeaturedResourceFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function
end module FeaturedResourceFactory_m

