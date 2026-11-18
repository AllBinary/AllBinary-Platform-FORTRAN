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
module URLGLOBALS_m
  use JR_m
  use AppUrlGlobals_m
  use UrlGlobalsInterface_m
  implicit none

  type, extends(JObject) :: URLGLOBALS
  end type

  class(UrlGlobalsInterface), pointer, save :: URLGLOBALS_jcell_urlGlobalsInterface => null()
  logical, save :: URLGLOBALS_jset_urlGlobalsInterface = .false.

contains

  function URLGLOBALS_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(URLGLOBALS), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (URLGLOBALS)
      jresult => object
    end select
  end function

  function URLGLOBALS_jstatic_urlGlobalsInterface() result(jresult)
    class(UrlGlobalsInterface), pointer :: jresult
    if (.not. URLGLOBALS_jset_urlGlobalsInterface) then
      URLGLOBALS_jset_urlGlobalsInterface = .true.
      URLGLOBALS_jcell_urlGlobalsInterface => AppUrlGlobals_jstatic_NULL_APP_URL_GLOBALS()
    end if
    jresult => URLGLOBALS_jcell_urlGlobalsInterface
  end function

  subroutine URLGLOBALS_jsetstatic_urlGlobalsInterface(jvalue)
    class(UrlGlobalsInterface), target, optional :: jvalue
    URLGLOBALS_jset_urlGlobalsInterface = .true.
    if (present(jvalue)) then
      URLGLOBALS_jcell_urlGlobalsInterface => jvalue
    else
      URLGLOBALS_jcell_urlGlobalsInterface => null()
    end if
  end subroutine

  function URLGLOBALS_jnew_0() result(this)
    class(URLGLOBALS), pointer :: this
    allocate(this)
    this%jclass = 'URLGLOBALS'
  end function

  recursive subroutine URLGLOBALS_jm_init_1(j_urlGlobalsInterface)
    class(UrlGlobalsInterface), target, optional :: j_urlGlobalsInterface
        call URLGLOBALS_jsetstatic_urlGlobalsInterface(j_urlGlobalsInterface)
  end subroutine

  recursive function URLGLOBALS_jm_isTestingMode_0() result(jresult)
    logical :: jresult
        associate (jstaticref1 => URLGLOBALS_jstatic_urlGlobalsInterface())
        jresult = jstaticref1%jm_isTestingMode_0()
        end associate
        return
  end function

  recursive function URLGLOBALS_jm_getWebappPath_0() result(jresult)
    character(len=:), allocatable :: jresult
        associate (jstaticref2 => URLGLOBALS_jstatic_urlGlobalsInterface())
        jresult = jstaticref2%jm_getWebappPath_0()
        end associate
        return
  end function

  recursive function URLGLOBALS_jm_getTestHtmlPath_0() result(jresult)
    character(len=:), allocatable :: jresult
        associate (jstaticref3 => URLGLOBALS_jstatic_urlGlobalsInterface())
        jresult = jstaticref3%jm_getTestHtmlPath_0()
        end associate
        return
  end function

  recursive function URLGLOBALS_jm_getMainPath_0() result(jresult)
    character(len=:), allocatable :: jresult
        associate (jstaticref4 => URLGLOBALS_jstatic_urlGlobalsInterface())
        jresult = jstaticref4%jm_getMainPath_0()
        end associate
        return
  end function
end module URLGLOBALS_m

