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
module FeatureResourceInitializationUtil_m
  use JR_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use LogUtil_m
  use CommonStrings_m
  use FeaturedResourceFactory_m
  use FeaturedResourceRelativeRelationshipFactory_m
  implicit none

  type, extends(JObject) :: FeatureResourceInitializationUtil
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_init_1 => FeatureResourceInitializationUtil_jm_init_1
  end type

  class(FeatureResourceInitializationUtil), pointer, save :: FeatureResourceInitializationUtil_jcell_instance => null()
  logical, save :: FeatureResourceInitializationUtil_jset_instance = .false.

contains

  function FeatureResourceInitializationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FeatureResourceInitializationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FeatureResourceInitializationUtil)
      jresult => object
    end select
  end function

  function FeatureResourceInitializationUtil_jstatic_instance() result(jresult)
    class(FeatureResourceInitializationUtil), pointer :: jresult
    if (.not. FeatureResourceInitializationUtil_jset_instance) then
      FeatureResourceInitializationUtil_jset_instance = .true.
      FeatureResourceInitializationUtil_jcell_instance => FeatureResourceInitializationUtil_jnew_0()
    end if
    jresult => FeatureResourceInitializationUtil_jcell_instance
  end function

  subroutine FeatureResourceInitializationUtil_jsetstatic_instance(jvalue)
    class(FeatureResourceInitializationUtil), target, optional :: jvalue
    FeatureResourceInitializationUtil_jset_instance = .true.
    if (present(jvalue)) then
      FeatureResourceInitializationUtil_jcell_instance => jvalue
    else
      FeatureResourceInitializationUtil_jcell_instance => null()
    end if
  end subroutine

  function FeatureResourceInitializationUtil_jnew_0() result(this)
    class(FeatureResourceInitializationUtil), pointer :: this
    allocate(this)
    this%jclass = 'FeatureResourceInitializationUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function FeatureResourceInitializationUtil_jm_getInstance_0() result(jresult)
    class(FeatureResourceInitializationUtil), pointer :: jresult
        jresult => FeatureResourceInitializationUtil_jstatic_instance()
        return
  end function

  recursive subroutine FeatureResourceInitializationUtil_jm_init_1(this, j_level)
    class(FeatureResourceInitializationUtil), target :: this
    integer(4), value :: j_level
    class(CommonStrings), pointer :: j_commonStrings
    class(FeaturedResourceFactory), pointer :: j_featuredResourceFactory
    class(FeaturedResourceRelativeRelationshipFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3(j_commonStrings%f_START, this, j_commonStrings%f_INIT)
        j_featuredResourceFactory => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        call j_featuredResourceFactory%jm_init_1(j_level)
        jtemp1 => FeaturedResourceRelativeRelationshipFactory_jm_getInstance_0()
        call jtemp1%jm_init_1(j_level)
  end subroutine
end module FeatureResourceInitializationUtil_m

