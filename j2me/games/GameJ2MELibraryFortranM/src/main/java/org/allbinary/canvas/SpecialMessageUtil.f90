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
! package org.allbinary.canvas
module SpecialMessageUtil_m
  use JR_m
  use Features_m
  use OpenGLFeatureFactory_m
  use StringMaker_m
  use CommonSeps_m
  use Memory_m
  use GameStatisticsFactory_m
  implicit none

  type, extends(JObject) :: SpecialMessageUtil
  contains
    procedure :: jm_get_0 => SpecialMessageUtil_jm_get_0
  end type

  class(SpecialMessageUtil), pointer, save :: SpecialMessageUtil_jcell_SINGLETON => null()
  logical, save :: SpecialMessageUtil_jset_SINGLETON = .false.

contains

  function SpecialMessageUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialMessageUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialMessageUtil)
      jresult => object
    end select
  end function

  function SpecialMessageUtil_jstatic_SINGLETON() result(jresult)
    class(SpecialMessageUtil), pointer :: jresult
    if (.not. SpecialMessageUtil_jset_SINGLETON) then
      SpecialMessageUtil_jset_SINGLETON = .true.
      SpecialMessageUtil_jcell_SINGLETON => SpecialMessageUtil_jnew_0()
    end if
    jresult => SpecialMessageUtil_jcell_SINGLETON
  end function

  subroutine SpecialMessageUtil_jsetstatic_SINGLETON(jvalue)
    class(SpecialMessageUtil), target, optional :: jvalue
    SpecialMessageUtil_jset_SINGLETON = .true.
    if (present(jvalue)) then
      SpecialMessageUtil_jcell_SINGLETON => jvalue
    else
      SpecialMessageUtil_jcell_SINGLETON => null()
    end if
  end subroutine

  function SpecialMessageUtil_jnew_0() result(this)
    class(SpecialMessageUtil), pointer :: this
    allocate(this)
    this%jclass = 'SpecialMessageUtil'
  end function

  recursive function SpecialMessageUtil_jm_getInstance_0() result(jresult)
    class(SpecialMessageUtil), pointer :: jresult
        jresult => SpecialMessageUtil_jstatic_SINGLETON()
        return
  end function

  recursive function SpecialMessageUtil_jm_get_0(this) result(jresult)
    class(SpecialMessageUtil), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp1
    class(GameStatisticsFactory), pointer :: jtemp2
    class(CommonSeps), pointer :: jtemp3
    class(Features), pointer :: jtemp4
    class(OpenGLFeatureFactory), pointer :: jtemp5
    class(OpenGLFeatureFactory), pointer :: jtemp6
    class(OpenGLFeatureFactory), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(Memory_jm_getInfo_0())
        jtemp1 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%f_SPACE)
        jtemp2 => GameStatisticsFactory_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%jm_toString_0())
        jtemp3 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(' Option: ')
        jtemp5 => OpenGLFeatureFactory_jm_getInstance_0()
        jtemp4 => Features_jm_getInstance_0()
        if (jtemp4%jm_isDefault_1(jtemp5%f_OPENGL_AUTO_SELECT)) then
            jtemp7 => OpenGLFeatureFactory_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp7%f_OPENGL_AUTO_SELECT%jm_getName_0())
        else
            jtemp6 => OpenGLFeatureFactory_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp6%f_OPENGL_MINIMUM%jm_getName_0())
        end if
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module SpecialMessageUtil_m

