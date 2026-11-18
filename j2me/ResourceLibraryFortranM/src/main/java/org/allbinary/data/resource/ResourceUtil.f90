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
! package org.allbinary.data.resource
module ResourceUtil_m
  use JR_m
  use InputStream_m
  use NullUtil_m
  use LogUtil_m
  use StringMaker_m
  use CommonSeps_m
  use CommonStrings_m
  use Integer_m
  use Thread_m
  implicit none

  type, extends(JObject) :: ResourceUtil
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_setLoadingPaths_2 => ResourceUtil_jm_setLoadingPaths_2
    procedure :: jm_setClassLoader_1 => ResourceUtil_jm_setClassLoader_1
    procedure :: jm_getResourceAsStream_1 => ResourceUtil_jm_getResourceAsStream_1
    procedure :: jm_getResourceAsStreamAtStart_2 => ResourceUtil_jm_getResourceAsStreamAtStart_2
    procedure :: jm_addResource_2 => ResourceUtil_jm_addResource_2
  end type

  class(JObject), pointer, save :: ResourceUtil_jcell_classLoader => null()
  logical, save :: ResourceUtil_jset_classLoader = .false.
  class(ResourceUtil), pointer, save :: ResourceUtil_jcell_instance => null()
  logical, save :: ResourceUtil_jset_instance = .false.

contains

  function ResourceUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResourceUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResourceUtil)
      jresult => object
    end select
  end function

  function ResourceUtil_jstatic_classLoader() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. ResourceUtil_jset_classLoader) then
      ResourceUtil_jset_classLoader = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    ResourceUtil_jcell_classLoader => jtemp1%f_NULL_OBJECT
    end if
    jresult => ResourceUtil_jcell_classLoader
  end function

  subroutine ResourceUtil_jsetstatic_classLoader(jvalue)
    class(JObject), target, optional :: jvalue
    ResourceUtil_jset_classLoader = .true.
    if (present(jvalue)) then
      ResourceUtil_jcell_classLoader => jvalue
    else
      ResourceUtil_jcell_classLoader => null()
    end if
  end subroutine

  function ResourceUtil_jstatic_instance() result(jresult)
    class(ResourceUtil), pointer :: jresult
    if (.not. ResourceUtil_jset_instance) then
      ResourceUtil_jset_instance = .true.
      ResourceUtil_jcell_instance => ResourceUtil_jnew_0()
    end if
    jresult => ResourceUtil_jcell_instance
  end function

  subroutine ResourceUtil_jsetstatic_instance(jvalue)
    class(ResourceUtil), target, optional :: jvalue
    ResourceUtil_jset_instance = .true.
    if (present(jvalue)) then
      ResourceUtil_jcell_instance => jvalue
    else
      ResourceUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ResourceUtil_jnew_0() result(this)
    class(ResourceUtil), pointer :: this
    allocate(this)
    this%jclass = 'ResourceUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function ResourceUtil_jm_getInstance_0() result(jresult)
    class(ResourceUtil), pointer :: jresult
        jresult => ResourceUtil_jstatic_instance()
        return
  end function

  recursive subroutine ResourceUtil_jm_setLoadingPaths_2(this, j_path, j_ext)
    class(ResourceUtil), target :: this
    character(len=*), intent(in) :: j_path
    character(len=*), intent(in) :: j_ext
    class(CommonStrings), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => CommonStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3(jtemp2%f_NOT_IMPLEMENTED, this, 'setLoadingPaths')
  end subroutine

  recursive subroutine ResourceUtil_jm_setClassLoader_1(this, j_classLoader)
    class(ResourceUtil), target :: this
    class(ClassLoader), target, optional :: j_classLoader
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    character(len=:), allocatable :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 = JR_className(j_classLoader)
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1('Resource Loader: ')
        jtemp3 => jtemp4%jm_append_1(jtemp6)
        call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, 'setClassLoader')
        call ResourceUtil_jsetstatic_classLoader(j_classLoader)
  end subroutine

  recursive function ResourceUtil_jm_getResourceAsStream_1(this, j_resource) result(jresult)
    class(ResourceUtil), target :: this
    character(len=*), intent(in) :: j_resource
    class(InputStream), pointer :: jresult
    class(InputStream), pointer :: j_inputStream
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
        j_inputStream => this%jm_getResourceAsStreamAtStart_2(j_resource, 2)
        if ((.not. associated(j_inputStream))) then
            j_inputStream => this%jm_getResourceAsStreamAtStart_2(j_resource, 1)
            if ((.not. associated(j_inputStream))) then
                jtemp9 => StringMaker_jnew_0()
                jtemp8 => jtemp9%jm_append_1('Unable to obtain: ')
                jtemp7 => jtemp8%jm_append_1(j_resource)
                error stop JR_toString(JR_newJObject('Exception'))
            end if
        end if
        jresult => j_inputStream
        return
  end function

  recursive function ResourceUtil_jm_getResourceAsStreamAtStart_2(this, j_resource, j_startIndex) result(jresult)
    class(ResourceUtil), target :: this
    character(len=*), intent(in) :: j_resource
    integer(4), value :: j_startIndex
    class(InputStream), pointer :: jresult
    class(CommonSeps), pointer :: j_commonSeps
    integer(4) :: j_index
    character(len=:), allocatable :: j_resourcePath
    class(InputStream), pointer :: j_inputStream
    class(ClassLoader), pointer :: j_classLoader
    character(len=:), allocatable :: jtemp10
    class(JObject), pointer :: jtemp11
    class(Thread), pointer :: jtemp12
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_index = JR_indexOf(j_resource, j_commonSeps%f_COLON)
        j_resourcePath = JR_substring(j_resource, (j_index + j_startIndex))
        jtemp10 = JR_className(j_resource)
        j_inputStream => jtemp10%jm_getResourceAsStream_1(j_resourcePath)
        if (associated(j_inputStream)) then
            jresult => j_inputStream
            return
        end if
        j_classLoader => ClassLoader_jcast(ResourceUtil_jstatic_classLoader())
        j_inputStream => j_classLoader%jm_getResourceAsStream_1(j_resourcePath)
        if (associated(j_inputStream)) then
            jresult => j_inputStream
            return
        end if
        jtemp12 => Thread_jm_currentThread_0()
        jtemp11 => jtemp12%jm_getContextClassLoader_0()
        j_inputStream => jtemp11%jm_getResourceAsStream_1(j_resourcePath)
        if (associated(j_inputStream)) then
            jresult => j_inputStream
            return
        end if
        jresult => j_inputStream
        return
  end function

  recursive subroutine ResourceUtil_jm_addResource_2(this, j_resource, j_value)
    class(ResourceUtil), target :: this
    character(len=*), intent(in) :: j_resource
    integer(4), value :: j_value
    continue
  end subroutine
end module ResourceUtil_m

