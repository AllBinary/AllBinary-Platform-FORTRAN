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
! package org.allbinary.game.layer.resources
module GameGraphicsResourceUtil_m
  use JR_m
  use Features_m
  use GraphicsFeature_m
  use GraphicsFeatureFactory_m
  use CanvasStrings_m
  use OpenGLFeatureUtil_m
  use NullUtil_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: GameGraphicsResourceUtil
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_SPRITE
    character(len=:), allocatable :: f_QUARTER
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_getString_0 => GameGraphicsResourceUtil_jm_getString_0
    procedure :: jm_getStringForFeature_1 => GameGraphicsResourceUtil_jm_getStringForFeature_1
    procedure :: jm_getName_0 => GameGraphicsResourceUtil_jm_getName_0
  end type

  class(JObject), pointer, save :: GameGraphicsResourceUtil_jcell_instance => null()
  logical, save :: GameGraphicsResourceUtil_jset_instance = .false.

contains

  function GameGraphicsResourceUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameGraphicsResourceUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameGraphicsResourceUtil)
      jresult => object
    end select
  end function

  function GameGraphicsResourceUtil_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameGraphicsResourceUtil_jset_instance) then
      GameGraphicsResourceUtil_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameGraphicsResourceUtil_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => GameGraphicsResourceUtil_jcell_instance
  end function

  subroutine GameGraphicsResourceUtil_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    GameGraphicsResourceUtil_jset_instance = .true.
    if (present(jvalue)) then
      GameGraphicsResourceUtil_jcell_instance => jvalue
    else
      GameGraphicsResourceUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function GameGraphicsResourceUtil_jnew_0() result(this)
    class(GameGraphicsResourceUtil), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameGraphicsResourceUtil'
    this%f_SPRITE = ''
    this%f_QUARTER = ''
    this%f_name = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_SPRITE = '_sprite'
    this%f_QUARTER = '_quarter'
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp3%f_EMPTY_STRING
        continue ! try
            this%f_name = this%jm_getString_0()
  end function

  recursive function GameGraphicsResourceUtil_jm_getInstance_0() result(jresult)
    class(GameGraphicsResourceUtil), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GameGraphicsResourceUtil_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call GameGraphicsResourceUtil_jsetstatic_instance(GameGraphicsResourceUtil_jnew_0())
        end if
        jresult => GameGraphicsResourceUtil_jcast(GameGraphicsResourceUtil_jstatic_instance())
        return
  end function

  recursive function GameGraphicsResourceUtil_jm_getString_0(this) result(jresult)
    class(GameGraphicsResourceUtil), target :: this
    character(len=:), allocatable :: jresult
    class(GraphicsFeatureFactory), pointer :: j_graphicsFeatureFactory
    class(GraphicsFeature), pointer :: j_graphicsFeature
    class(Features), pointer :: j_features
        j_graphicsFeatureFactory => GraphicsFeatureFactory_jm_getInstance_0()
        j_graphicsFeature => j_graphicsFeatureFactory%f_NONE
        j_features => Features_jm_getInstance_0()
        if (j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_IMAGE_TO_ARRAY_GRAPHICS)) then
            j_graphicsFeature => j_graphicsFeatureFactory%f_IMAGE_TO_ARRAY_GRAPHICS
        else if (j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_SPRITE_FULL_GRAPHICS)) then
            j_graphicsFeature => j_graphicsFeatureFactory%f_SPRITE_FULL_GRAPHICS
        else if (j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_SPRITE_QUARTER_ROTATION_GRAPHICS)) then
            j_graphicsFeature => j_graphicsFeatureFactory%f_SPRITE_QUARTER_ROTATION_GRAPHICS
        else if (j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_IMAGE_ROTATION_ON_THE_FLY)) then
            j_graphicsFeature => j_graphicsFeatureFactory%f_IMAGE_ROTATION_ON_THE_FLY
        end if
        jresult = this%jm_getStringForFeature_1(j_graphicsFeature)
        return
  end function

  recursive function GameGraphicsResourceUtil_jm_getStringForFeature_1(this, j_graphicsFeature) result(jresult)
    class(GameGraphicsResourceUtil), target :: this
    class(GraphicsFeature), target, optional :: j_graphicsFeature
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(GraphicsFeatureFactory), pointer :: j_graphicsFeatureFactory
    class(Features), pointer :: j_features
    class(OpenGLFeatureUtil), pointer :: jtemp4
    class(CanvasStrings), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_graphicsFeatureFactory => GraphicsFeatureFactory_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        j_features => Features_jm_getInstance_0()
        if (j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_VECTOR_GRAPHICS)) then
            continue
        else if (j_features%jm_isFeature_1(j_graphicsFeatureFactory%f_IMAGE_GRAPHICS)) then
            if ((JR_same(j_graphicsFeature, j_graphicsFeatureFactory%f_IMAGE_TO_ARRAY_GRAPHICS) .or. JR_same(j_graphicsFeature, j_graphicsFeatureFactory%f_IMAGE_ROTATION_ON_THE_FLY))) then
                continue
            else if (JR_same(j_graphicsFeature, j_graphicsFeatureFactory%f_SPRITE_FULL_GRAPHICS)) then
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPRITE)
            else if (JR_same(j_graphicsFeature, j_graphicsFeatureFactory%f_SPRITE_QUARTER_ROTATION_GRAPHICS)) then
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_QUARTER)
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPRITE)
            else
                error stop JR_toString(JR_newJObject('Exception'))
            end if
        else if (jtemp4%jm_isAnyThreed_0()) then
            jtemp5 => CanvasStrings_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp5%f_OBJ_MODEL)
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function GameGraphicsResourceUtil_jm_getName_0(this) result(jresult)
    class(GameGraphicsResourceUtil), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module GameGraphicsResourceUtil_m

