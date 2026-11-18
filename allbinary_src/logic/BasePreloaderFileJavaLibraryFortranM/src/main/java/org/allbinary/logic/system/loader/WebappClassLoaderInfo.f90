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
! package org.allbinary.logic.system.loader
module WebappClassLoaderInfo_m
  use JR_m
  use NullUtil_m
  implicit none

  type, extends(JObject) :: WebappClassLoaderInfo
  end type

  class(JObject), pointer, save :: WebappClassLoaderInfo_jcell_classLoader => null()
  logical, save :: WebappClassLoaderInfo_jset_classLoader = .false.

contains

  function WebappClassLoaderInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WebappClassLoaderInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WebappClassLoaderInfo)
      jresult => object
    end select
  end function

  function WebappClassLoaderInfo_jstatic_classLoader() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. WebappClassLoaderInfo_jset_classLoader) then
      WebappClassLoaderInfo_jset_classLoader = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    WebappClassLoaderInfo_jcell_classLoader => jtemp1%f_NULL_OBJECT
    end if
    jresult => WebappClassLoaderInfo_jcell_classLoader
  end function

  subroutine WebappClassLoaderInfo_jsetstatic_classLoader(jvalue)
    class(JObject), target, optional :: jvalue
    WebappClassLoaderInfo_jset_classLoader = .true.
    if (present(jvalue)) then
      WebappClassLoaderInfo_jcell_classLoader => jvalue
    else
      WebappClassLoaderInfo_jcell_classLoader => null()
    end if
  end subroutine

  recursive function WebappClassLoaderInfo_jnew_0() result(this)
    class(WebappClassLoaderInfo), pointer :: this
    allocate(this)
    this%jclass = 'WebappClassLoaderInfo'
        continue
  end function

  recursive subroutine WebappClassLoaderInfo_jm_setLoader_1(j_classLoader)
    class(ClassLoader), target, optional :: j_classLoader
        call WebappClassLoaderInfo_jsetstatic_classLoader(j_classLoader)
  end subroutine

  recursive function WebappClassLoaderInfo_jm_getLoader_0() result(jresult)
    class(ClassLoader), pointer :: jresult
        jresult => ClassLoader_jcast(WebappClassLoaderInfo_jstatic_classLoader())
        return
  end function
end module WebappClassLoaderInfo_m

