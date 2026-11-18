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
! package org.allbinary.logic.system
module PlatformAssetManager_m
  use JR_m
  use InputStream_m
  use ResourceUtil_m
  implicit none

  type, extends(JObject) :: PlatformAssetManager
  contains
    procedure :: jm_getResourceAsStream_1 => PlatformAssetManager_jm_getResourceAsStream_1
  end type

  class(PlatformAssetManager), pointer, save :: PlatformAssetManager_jcell_instance => null()
  logical, save :: PlatformAssetManager_jset_instance = .false.

contains

  function PlatformAssetManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformAssetManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformAssetManager)
      jresult => object
    end select
  end function

  function PlatformAssetManager_jstatic_instance() result(jresult)
    class(PlatformAssetManager), pointer :: jresult
    if (.not. PlatformAssetManager_jset_instance) then
      PlatformAssetManager_jset_instance = .true.
      PlatformAssetManager_jcell_instance => PlatformAssetManager_jnew_0()
    end if
    jresult => PlatformAssetManager_jcell_instance
  end function

  subroutine PlatformAssetManager_jsetstatic_instance(jvalue)
    class(PlatformAssetManager), target, optional :: jvalue
    PlatformAssetManager_jset_instance = .true.
    if (present(jvalue)) then
      PlatformAssetManager_jcell_instance => jvalue
    else
      PlatformAssetManager_jcell_instance => null()
    end if
  end subroutine

  function PlatformAssetManager_jnew_0() result(this)
    class(PlatformAssetManager), pointer :: this
    allocate(this)
    this%jclass = 'PlatformAssetManager'
  end function

  recursive function PlatformAssetManager_jm_getInstance_0() result(jresult)
    class(PlatformAssetManager), pointer :: jresult
        jresult => PlatformAssetManager_jstatic_instance()
        return
  end function

  recursive function PlatformAssetManager_jm_getResourceAsStream_1(this, j_resource) result(jresult)
    class(PlatformAssetManager), target :: this
    character(len=*), intent(in) :: j_resource
    class(InputStream), pointer :: jresult
    class(ResourceUtil), pointer :: j_resourceUtil
    class(InputStream), pointer :: j_inputStream
        j_resourceUtil => ResourceUtil_jm_getInstance_0()
        j_inputStream => j_resourceUtil%jm_getResourceAsStream_1(j_resource)
        jresult => j_inputStream
        return
  end function
end module PlatformAssetManager_m

