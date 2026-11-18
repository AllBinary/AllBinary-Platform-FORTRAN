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
module UrlGlobalsInterface_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: UrlGlobalsInterface
  contains
    procedure :: jm_getMainPath_0 => UrlGlobalsInterface_jm_getMainPath_0
    procedure :: jm_getTestHtmlPath_0 => UrlGlobalsInterface_jm_getTestHtmlPath_0
    procedure :: jm_getWebappPath_0 => UrlGlobalsInterface_jm_getWebappPath_0
    procedure :: jm_isTestingMode_0 => UrlGlobalsInterface_jm_isTestingMode_0
  end type


contains

  function UrlGlobalsInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UrlGlobalsInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UrlGlobalsInterface)
      jresult => object
    end select
  end function

  function UrlGlobalsInterface_jnew_0() result(this)
    class(UrlGlobalsInterface), pointer :: this
    allocate(this)
    this%jclass = 'UrlGlobalsInterface'
  end function

  recursive function UrlGlobalsInterface_jm_getMainPath_0(this) result(jresult)
    class(UrlGlobalsInterface), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive function UrlGlobalsInterface_jm_getTestHtmlPath_0(this) result(jresult)
    class(UrlGlobalsInterface), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp2
        jtemp2 => StringUtil_jm_getInstance_0()
        jresult = jtemp2%f_EMPTY_STRING
        return
  end function

  recursive function UrlGlobalsInterface_jm_getWebappPath_0(this) result(jresult)
    class(UrlGlobalsInterface), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp3
        jtemp3 => StringUtil_jm_getInstance_0()
        jresult = jtemp3%f_EMPTY_STRING
        return
  end function

  recursive function UrlGlobalsInterface_jm_isTestingMode_0(this) result(jresult)
    class(UrlGlobalsInterface), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module UrlGlobalsInterface_m

