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
! package org.allbinary.globals
module AppUrlGlobals_m
  use JR_m
  use StringUtil_m
  use UrlGlobalsInterface_m
  implicit none

  type, extends(UrlGlobalsInterface) :: AppUrlGlobals
    character(len=:), allocatable :: f_path
  contains
    procedure :: jm_isTestingMode_0 => AppUrlGlobals_jm_isTestingMode_0
    procedure :: jm_getWebappPath_0 => AppUrlGlobals_jm_getWebappPath_0
    procedure :: jm_setWebappPath_1 => AppUrlGlobals_jm_setWebappPath_1
    procedure :: jm_getTestHtmlPath_0 => AppUrlGlobals_jm_getTestHtmlPath_0
    procedure :: jm_getMainPath_0 => AppUrlGlobals_jm_getMainPath_0
  end type

  class(AppUrlGlobals), pointer, save :: AppUrlGlobals_jcell_NULL_APP_URL_GLOBALS => null()
  logical, save :: AppUrlGlobals_jset_NULL_APP_URL_GLOBALS = .false.

contains

  function AppUrlGlobals_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AppUrlGlobals), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AppUrlGlobals)
      jresult => object
    end select
  end function

  function AppUrlGlobals_jstatic_NULL_APP_URL_GLOBALS() result(jresult)
    class(AppUrlGlobals), pointer :: jresult
    if (.not. AppUrlGlobals_jset_NULL_APP_URL_GLOBALS) then
      AppUrlGlobals_jset_NULL_APP_URL_GLOBALS = .true.
      AppUrlGlobals_jcell_NULL_APP_URL_GLOBALS => AppUrlGlobals_jnew_0()
    end if
    jresult => AppUrlGlobals_jcell_NULL_APP_URL_GLOBALS
  end function

  subroutine AppUrlGlobals_jsetstatic_NULL_APP_URL_GLOBALS(jvalue)
    class(AppUrlGlobals), target, optional :: jvalue
    AppUrlGlobals_jset_NULL_APP_URL_GLOBALS = .true.
    if (present(jvalue)) then
      AppUrlGlobals_jcell_NULL_APP_URL_GLOBALS => jvalue
    else
      AppUrlGlobals_jcell_NULL_APP_URL_GLOBALS => null()
    end if
  end subroutine

  function AppUrlGlobals_jnew_0() result(this)
    class(AppUrlGlobals), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'AppUrlGlobals'
    this%f_path = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_path = jtemp1%f_EMPTY_STRING
  end function

  recursive function AppUrlGlobals_jm_isTestingMode_0(this) result(jresult)
    class(AppUrlGlobals), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function AppUrlGlobals_jm_getWebappPath_0(this) result(jresult)
    class(AppUrlGlobals), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_path
        return
  end function

  recursive subroutine AppUrlGlobals_jm_setWebappPath_1(this, j_path)
    class(AppUrlGlobals), target :: this
    character(len=*), intent(in) :: j_path
        this%f_path = j_path
        if ((.not. ((JR_endsWith(this%f_path, JR_unescape('\\')) .or. JR_endsWith(this%f_path, '/'))))) then
            this%f_path = (this%f_path // JR_unescape('\\'))
        end if
  end subroutine

  recursive function AppUrlGlobals_jm_getTestHtmlPath_0(this) result(jresult)
    class(AppUrlGlobals), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp2
        jtemp2 => StringUtil_jm_getInstance_0()
        jresult = jtemp2%f_EMPTY_STRING
        return
  end function

  recursive function AppUrlGlobals_jm_getMainPath_0(this) result(jresult)
    class(AppUrlGlobals), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_path
        return
  end function
end module AppUrlGlobals_m

function AppUrlGlobals_jnew_0_jext() result(this)
  use AppUrlGlobals_m, only: JObject, AppUrlGlobals_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AppUrlGlobals_jnew_0()
end function

