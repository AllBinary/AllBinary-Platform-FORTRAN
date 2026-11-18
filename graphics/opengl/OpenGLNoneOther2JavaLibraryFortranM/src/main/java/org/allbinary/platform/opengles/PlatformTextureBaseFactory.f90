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
! package org.allbinary.platform.opengles
module PlatformTextureBaseFactory_m
  use JR_m
  use GL10_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: PlatformTextureBaseFactory
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_load_6 => PlatformTextureBaseFactory_jm_load_6
  end type

  class(PlatformTextureBaseFactory), pointer, save :: PlatformTextureBaseFactory_jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY => null()
  logical, save :: PlatformTextureBaseFactory_jset_NULL_PLATFORM_TEXTURE_BASE_FACTORY = .false.

contains

  function PlatformTextureBaseFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformTextureBaseFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformTextureBaseFactory)
      jresult => object
    end select
  end function

  function PlatformTextureBaseFactory_jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY() result(jresult)
    class(PlatformTextureBaseFactory), pointer :: jresult
    if (.not. PlatformTextureBaseFactory_jset_NULL_PLATFORM_TEXTURE_BASE_FACTORY) then
      PlatformTextureBaseFactory_jset_NULL_PLATFORM_TEXTURE_BASE_FACTORY = .true.
      PlatformTextureBaseFactory_jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY => PlatformTextureBaseFactory_jnew_0()
    end if
    jresult => PlatformTextureBaseFactory_jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY
  end function

  subroutine PlatformTextureBaseFactory_jsetstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY(jvalue)
    class(PlatformTextureBaseFactory), target, optional :: jvalue
    PlatformTextureBaseFactory_jset_NULL_PLATFORM_TEXTURE_BASE_FACTORY = .true.
    if (present(jvalue)) then
      PlatformTextureBaseFactory_jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY => jvalue
    else
      PlatformTextureBaseFactory_jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY => null()
    end if
  end subroutine

  function PlatformTextureBaseFactory_jnew_0() result(this)
    class(PlatformTextureBaseFactory), pointer :: this
    allocate(this)
    this%jclass = 'PlatformTextureBaseFactory'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
  end function

  recursive subroutine PlatformTextureBaseFactory_jm_load_6(this, j_gl, j_target, j_level, j_image, j_border, j_flip)
    class(PlatformTextureBaseFactory), target :: this
    class(GL10), target, optional :: j_gl
    integer(4), value :: j_target
    integer(4), value :: j_level
    class(Image), target, optional :: j_image
    integer(4), value :: j_border
    logical, value :: j_flip
    continue
  end subroutine
end module PlatformTextureBaseFactory_m

