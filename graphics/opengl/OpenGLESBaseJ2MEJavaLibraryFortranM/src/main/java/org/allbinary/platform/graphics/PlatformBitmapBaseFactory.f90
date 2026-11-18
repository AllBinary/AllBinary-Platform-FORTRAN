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
! package org.allbinary.platform.graphics
module PlatformBitmapBaseFactory_m
  use JR_m
  use PlatformBitmapBase_m
  implicit none

  type, extends(JObject) :: PlatformBitmapBaseFactory
  contains
    procedure :: jm_createBitmap_1 => PlatformBitmapBaseFactory_jm_createBitmap_1
  end type

  class(PlatformBitmapBaseFactory), pointer, save :: PlatformBitmapBaseFactory_jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY => null()
  logical, save :: PlatformBitmapBaseFactory_jset_NULL_PLATFORM_BITMAP_BASE_FACTORY = .false.

contains

  function PlatformBitmapBaseFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformBitmapBaseFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformBitmapBaseFactory)
      jresult => object
    end select
  end function

  function PlatformBitmapBaseFactory_jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY() result(jresult)
    class(PlatformBitmapBaseFactory), pointer :: jresult
    if (.not. PlatformBitmapBaseFactory_jset_NULL_PLATFORM_BITMAP_BASE_FACTORY) then
      PlatformBitmapBaseFactory_jset_NULL_PLATFORM_BITMAP_BASE_FACTORY = .true.
      PlatformBitmapBaseFactory_jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY => PlatformBitmapBaseFactory_jnew_0()
    end if
    jresult => PlatformBitmapBaseFactory_jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY
  end function

  subroutine PlatformBitmapBaseFactory_jsetstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY(jvalue)
    class(PlatformBitmapBaseFactory), target, optional :: jvalue
    PlatformBitmapBaseFactory_jset_NULL_PLATFORM_BITMAP_BASE_FACTORY = .true.
    if (present(jvalue)) then
      PlatformBitmapBaseFactory_jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY => jvalue
    else
      PlatformBitmapBaseFactory_jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY => null()
    end if
  end subroutine

  function PlatformBitmapBaseFactory_jnew_0() result(this)
    class(PlatformBitmapBaseFactory), pointer :: this
    allocate(this)
    this%jclass = 'PlatformBitmapBaseFactory'
  end function

  recursive function PlatformBitmapBaseFactory_jm_createBitmap_1(this, j_image) result(jresult)
    class(PlatformBitmapBaseFactory), target :: this
    class(Image), target, optional :: j_image
    class(PlatformBitmapBase), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module PlatformBitmapBaseFactory_m

