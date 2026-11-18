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
module Globals_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringValidationUtil_m
  use WebappClassLoaderInfo_m
  use CommonSeps_m
  use CommonStrings_m
  use AppUrlGlobals_m
  implicit none

  type, extends(JObject) :: Globals
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_init_2 => Globals_jm_init_2
  end type

  class(Globals), pointer, save :: Globals_jcell_instance => null()
  logical, save :: Globals_jset_instance = .false.

contains

  function Globals_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Globals), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Globals)
      jresult => object
    end select
  end function

  function Globals_jstatic_instance() result(jresult)
    class(Globals), pointer :: jresult
    if (.not. Globals_jset_instance) then
      Globals_jset_instance = .true.
      Globals_jcell_instance => Globals_jnew_0()
    end if
    jresult => Globals_jcell_instance
  end function

  subroutine Globals_jsetstatic_instance(jvalue)
    class(Globals), target, optional :: jvalue
    Globals_jset_instance = .true.
    if (present(jvalue)) then
      Globals_jcell_instance => jvalue
    else
      Globals_jcell_instance => null()
    end if
  end subroutine

  recursive function Globals_jnew_0() result(this)
    class(Globals), pointer :: this
    allocate(this)
    this%jclass = 'Globals'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function Globals_jm_getInstance_0() result(jresult)
    class(Globals), pointer :: jresult
        jresult => Globals_jstatic_instance()
        return
  end function

  recursive subroutine Globals_jm_init_2(this, j_classLoader, j_pathString)
    class(Globals), target :: this
    class(ClassLoader), target, optional :: j_classLoader
    character(len=*), intent(in) :: j_pathString
    class(CommonStrings), pointer :: j_commonStrings
    class(AppUrlGlobals), pointer :: j_appUrlGlobals
    class(StringMaker), pointer :: j_stringBuffer
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    character(len=:), allocatable :: jtemp1
    class(CommonSeps), pointer :: jtemp2
    class(CommonSeps), pointer :: jtemp3
    class(CommonSeps), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        j_appUrlGlobals => AppUrlGlobals_jnew_0()
        call j_appUrlGlobals%jm_setWebappPath_1(j_pathString)
        associate (jstatic_N67240 => _jstatic_URLGLOBALS())
        call jstatic_N67240%jm_init_1(j_appUrlGlobals)
        end associate
        call WebappClassLoaderInfo_jm_setLoader_1(j_classLoader)
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Setting Up AllBinary System Configuration Args: ')
        jdiscardRef => j_stringBuffer%jm_append_1(j_pathString)
        jdiscardRef => j_stringBuffer%jm_append_1(' ClassLoader: ')
        jtemp1 = JR_className(j_classLoader)
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_commonStrings%f_INIT)
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        if (j_stringValidationUtil%jm_isEmpty_1(j_pathString)) then
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jdiscardRef => j_stringBuffer%jm_append_1('No Path Provided. Using Process Path: ')
            jdiscardRef => j_stringBuffer%jm_append_1(j_pathString)
            jtemp2 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
            jtemp3 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%f_EQUALS)
            jtemp4 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp4%f_SPACE)
            associate (jstatic_N67885 => _jstatic_URLGLOBALS())
            jdiscardRef => j_stringBuffer%jm_append_1(jstatic_N67885%jm_getWebappPath_0())
            end associate
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_commonStrings%f_INIT)
        end if
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jdiscardRef => j_stringBuffer%jm_append_1('Webapp Path Set To: ')
        associate (jstatic_N68062 => _jstatic_URLGLOBALS())
        jdiscardRef => j_stringBuffer%jm_append_1(jstatic_N68062%jm_getWebappPath_0())
        end associate
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_commonStrings%f_INIT)
  end subroutine
end module Globals_m

