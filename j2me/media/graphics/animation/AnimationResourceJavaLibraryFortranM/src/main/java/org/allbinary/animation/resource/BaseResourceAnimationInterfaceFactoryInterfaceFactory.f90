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
! package org.allbinary.animation.resource
module BaseResourceAnimationInterfaceFactoryInterfaceFactory_m
  use JR_m
  use BasicAnimationInterfaceFactoryInterface_m
  use NullAnimationFactory_m
  use ResourceLoadingLevelFactory_m
  use Rectangle_m
  use RectangleFactory_m
  use ImageCache_m
  use LogUtil_m
  use StringMaker_m
  use CommonSeps_m
  use CommonStrings_m
  use ABHashtable_m
  use FeatureResourceAnimationInterfaceFactoryInterface_m
  implicit none

  type, extends(FeatureResourceAnimationInterfaceFactoryInterface) :: BaseResourceAnimationInterfaceFactoryInterfaceFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(ABHashtable), pointer :: f_hashtable => null()
    class(ABHashtable), pointer :: f_rectangleHashtable => null()
    class(ABHashtable), pointer :: f_rectangleArrayOfArraysHashtable => null()
    character(len=:), allocatable :: f_name
    logical :: f_initialized = .false.
  contains
    procedure :: jm_getName_0 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getName_0
    procedure :: jm_init_1 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_init_1
    procedure :: jm_initImageCache_2 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_initImageCache_2
    procedure :: jm_add_2 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_add_2
    procedure :: jm_getBasicAnimationInterfaceFactoryInstance_1 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInstance_1
    procedure :: jm_getRectangle_1 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangle_1
    procedure :: jm_addRectangle_2 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_addRectangle_2
    procedure :: jm_getRectangleArrayOfArrays_1 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleArrayOfArrays_1
    procedure :: jm_addRectangleArrayOfArrays_2 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_addRectangleArrayOfArrays_2
    procedure :: jm_isFeature_0 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_isFeature_0
    procedure :: jm_isLoadingLevel_1 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_isLoadingLevel_1
    procedure :: jm_toString_0 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_toString_0
    procedure :: jm_getHashtable_0 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getHashtable_0
    procedure :: jm_getRectangleHashtable_0 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleHashtable_0
    procedure :: jm_getRectangleArrayOfArraysHashtable_0 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleArrayOfArraysHashtable_0
    procedure :: jm_setInitialized_1 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_setInitialized_1
    procedure :: jm_isInitialized_0 => BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_isInitialized_0
  end type


contains

  function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseResourceAnimationInterfaceFactoryInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jnew_4(j_name, j_hashtable, j_rectangleHashtable, j_rectangleArrayHashtable) result(this)
    character(len=*), intent(in) :: j_name
    class(ABHashtable), target, optional :: j_hashtable
    class(ABHashtable), target, optional :: j_rectangleHashtable
    class(ABHashtable), target, optional :: j_rectangleArrayHashtable
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'BaseResourceAnimationInterfaceFactoryInterfaceFactory'
    this%f_name = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    
    
    
        this%f_hashtable => j_hashtable
        this%f_rectangleHashtable => j_rectangleHashtable
        this%f_rectangleArrayOfArraysHashtable => j_rectangleArrayHashtable
        this%f_name = j_name
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getName_0(this) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive subroutine BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_init_1(this, j_level)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    integer(4), value :: j_level
    class(CommonStrings), pointer :: j_commonStrings
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1('Available List of Animations: ')
        jtemp1 => jtemp2%jm_append_1(this%f_hashtable%jm_toString_0())
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, j_commonStrings%f_INIT)
        call this%jm_setInitialized_1(.true.)
  end subroutine

  recursive subroutine BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_initImageCache_2(this, j_imageCache, j_level)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    class(ImageCache), target, optional :: j_imageCache
    integer(4), value :: j_level
    continue
  end subroutine

  recursive subroutine BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_add_2(this, j_resource, j_animationInterfaceFactoryInterface)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(BasicAnimationInterfaceFactoryInterface), target, optional :: j_animationInterfaceFactoryInterface
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_hashtable%jm_containsKey_1(j_resource)) then
            jtemp6 => StringMaker_jnew_0()
            jtemp5 => jtemp6%jm_append_1('Resource Already Created: ')
            jtemp4 => jtemp5%jm_append_1(j_resource)
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        jdiscardRef => this%f_hashtable%jm_put_2(j_resource, j_animationInterfaceFactoryInterface)
  end subroutine

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInstance_1(this, j_resource) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(BasicAnimationInterfaceFactoryInterface), pointer :: jresult
    class(JObject), pointer :: j_basicAnimationInterfaceFactoryInterfaceCanBeNull
        j_basicAnimationInterfaceFactoryInterfaceCanBeNull => this%f_hashtable%jm_get_1(j_resource)
        if ((.not. associated(j_basicAnimationInterfaceFactoryInterfaceCanBeNull))) then
            jresult => NullAnimationFactory_jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY()
            return
        end if
        jresult => BasicAnimationInterfaceFactoryInterface_jcast(j_basicAnimationInterfaceFactoryInterfaceCanBeNull)
        return
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangle_1(this, j_resource) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(Rectangle), pointer :: jresult
    class(JObject), pointer :: j_rectangleCanBeNull
        j_rectangleCanBeNull => this%f_rectangleHashtable%jm_get_1(j_resource)
        if ((.not. associated(j_rectangleCanBeNull))) then
            jresult => RectangleFactory_jstatic_SINGLETON()
            return
        end if
        jresult => Rectangle_jcast(j_rectangleCanBeNull)
        return
  end function

  recursive subroutine BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_addRectangle_2(this, j_resource, j_rectangle)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(Rectangle), target, optional :: j_rectangle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_rectangleHashtable%jm_put_2(j_resource, j_rectangle)
  end subroutine

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleArrayOfArrays_1(this, j_resource) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    type(JRef), allocatable :: jresult(:,:)
    class(JObject), pointer :: j_valueCanBeNull
    type(JRef), allocatable :: j_rectangleArrayOfArrays(:,:)
        j_valueCanBeNull => this%f_rectangleArrayOfArraysHashtable%jm_get_1(j_resource)
        if (associated(j_valueCanBeNull)) then
            j_rectangleArrayOfArrays = j_valueCanBeNull
            jresult = j_rectangleArrayOfArrays
            return
        else
            jresult = RectangleFactory_jstatic_ARRAY_OF_ARRAYS()
            return
        end if
  end function

  recursive subroutine BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_addRectangleArrayOfArrays_2(this, j_resource, j_rectangleArrayOfArrays)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    type(JRef) :: j_rectangleArrayOfArrays(:,:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_rectangleArrayOfArraysHashtable%jm_put_2(j_resource, j_rectangleArrayOfArrays)
  end subroutine

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_isFeature_0(this) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_isLoadingLevel_1(this, j_level) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    integer(4), value :: j_level
    logical :: jresult
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        if ((j_level == j_resourceLoadingLevelFactory%f_LOAD_ALL%jm_getLevel_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_toString_0(this) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    character(len=:), allocatable :: jtemp12
    class(CommonSeps), pointer :: jtemp13
    class(CommonSeps), pointer :: jtemp14
        jtemp12 = JR_className(this)
        jtemp13 => CommonSeps_jm_getInstance_0()
        jtemp11 => StringMaker_jnew_0()
        jtemp14 => CommonSeps_jm_getInstance_0()
        jtemp10 => jtemp11%jm_append_1(jtemp12)
        jtemp9 => jtemp10%jm_append_1(jtemp13%f_SEMICOLON)
        jtemp8 => jtemp9%jm_append_1(jtemp14%f_SPACE)
        jtemp7 => jtemp8%jm_append_1(this%f_name)
        jresult = jtemp7%jm_toString_0()
        return
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getHashtable_0(this) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_hashtable
        return
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleHashtable_0(this) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_rectangleHashtable
        return
  end function

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleArrayOfArraysHashtable_0(this) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_rectangleArrayOfArraysHashtable
        return
  end function

  recursive subroutine BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_setInitialized_1(this, j_initialized)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    logical, value :: j_initialized
        this%f_initialized = j_initialized
  end subroutine

  recursive function BaseResourceAnimationInterfaceFactoryInterfaceFactory_jm_isInitialized_0(this) result(jresult)
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    logical :: jresult
        jresult = this%f_initialized
        return
  end function
end module BaseResourceAnimationInterfaceFactoryInterfaceFactory_m

