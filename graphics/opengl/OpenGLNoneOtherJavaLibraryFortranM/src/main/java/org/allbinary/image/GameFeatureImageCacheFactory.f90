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
module GameFeatureImageCacheFactory_m
  use JR_m
  use ImageCacheFactory_m
  use ImageCache_m
  implicit none

  type, extends(JObject) :: GameFeatureImageCacheFactory
  end type


contains

  function GameFeatureImageCacheFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureImageCacheFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureImageCacheFactory)
      jresult => object
    end select
  end function

  function GameFeatureImageCacheFactory_jnew_0() result(this)
    class(GameFeatureImageCacheFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureImageCacheFactory'
  end function

  recursive function GameFeatureImageCacheFactory_jm_getInstance_0() result(jresult)
    class(ImageCache), pointer :: jresult
        jresult => ImageCacheFactory_jm_getInstance_0()
        return
  end function

  recursive subroutine GameFeatureImageCacheFactory_jm_init_0()
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ImageCacheFactory_jm_init_0()
  end subroutine

  recursive subroutine GameFeatureImageCacheFactory_jm_releaseAll_0()
    class(ImageCacheFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => ImageCacheFactory_jm_getInstance_0()
        call jtemp1%jm_releaseAll_0()
  end subroutine
end module GameFeatureImageCacheFactory_m

