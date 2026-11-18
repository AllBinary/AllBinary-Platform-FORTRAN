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
! package org.allbinary
module AppletUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: AppletUtil
  end type

  logical, save :: AppletUtil_jcell_applet
  logical, save :: AppletUtil_jset_applet = .false.

contains

  function AppletUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AppletUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AppletUtil)
      jresult => object
    end select
  end function

  function AppletUtil_jstatic_applet() result(jresult)
    logical :: jresult
    if (.not. AppletUtil_jset_applet) then
      AppletUtil_jset_applet = .true.
      AppletUtil_jcell_applet = .false.
    end if
    jresult = AppletUtil_jcell_applet
  end function

  subroutine AppletUtil_jsetstatic_applet(jvalue)
    logical, value :: jvalue
    AppletUtil_jset_applet = .true.
    AppletUtil_jcell_applet = jvalue
  end subroutine

  recursive function AppletUtil_jnew_0() result(this)
    class(AppletUtil), pointer :: this
    allocate(this)
    this%jclass = 'AppletUtil'
        continue
  end function

  recursive subroutine AppletUtil_jm_setApplet_0()
        call AppletUtil_jsetstatic_applet(.true.)
  end subroutine

  recursive function AppletUtil_jm_isAppletLoader_1(j_anyType) result(jresult)
    class(JObject), target, optional :: j_anyType
    logical :: jresult
        jresult = AppletUtil_jstatic_applet()
        return
  end function
end module AppletUtil_m

