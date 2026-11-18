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
  use ByteArrayInputStream_m
  use ByteArrayOutputStream_m
  use FileInputStream_m
  use InputStream_m
  use LogUtil_m
  use StreamUtil_m
  use StringMaker_m
  use StringUtil_m
  use Integer_m
  implicit none

  type, extends(JObject) :: ResourceUtil
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_path
    character(len=:), allocatable :: f_ext
  contains
    procedure :: jm_setLoadingPaths_2 => ResourceUtil_jm_setLoadingPaths_2
    procedure :: jm_setClassLoader_1 => ResourceUtil_jm_setClassLoader_1
    procedure :: jm_getResourceAsStream_1 => ResourceUtil_jm_getResourceAsStream_1
    procedure :: jm_getResourceAsStreamAtStart_2 => ResourceUtil_jm_getResourceAsStreamAtStart_2
    procedure :: jm_addResource_2 => ResourceUtil_jm_addResource_2
  end type

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
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'ResourceUtil'
    this%f_path = ''
    this%f_ext = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_path = jtemp1%f_EMPTY_STRING
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_ext = jtemp2%f_EMPTY_STRING
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
        this%f_path = j_path
        this%f_ext = j_ext
  end subroutine

  recursive subroutine ResourceUtil_jm_setClassLoader_1(this, j_classLoader)
    class(ResourceUtil), target :: this
    class(ClassLoader), target, optional :: j_classLoader
    continue
  end subroutine

  recursive function ResourceUtil_jm_getResourceAsStream_1(this, j_resource) result(jresult)
    class(ResourceUtil), target :: this
    character(len=*), intent(in) :: j_resource
    class(InputStream), pointer :: jresult
    class(InputStream), pointer :: j_inputStream
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
        j_inputStream => this%jm_getResourceAsStreamAtStart_2(j_resource, 2)
        if ((.not. associated(j_inputStream))) then
            j_inputStream => this%jm_getResourceAsStreamAtStart_2(j_resource, 1)
            if ((.not. associated(j_inputStream))) then
                jtemp5 => StringMaker_jnew_0()
                jtemp4 => jtemp5%jm_append_1('Unable to obtain: ')
                jtemp3 => jtemp4%jm_append_1(j_resource)
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
    class(InputStream), pointer :: j_inputStream
    integer(4), allocatable :: j_byteArray(:)
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StreamUtil), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp9 => StringMaker_jnew_0()
        jtemp8 => jtemp9%jm_append_1(this%f_path)
        jtemp7 => jtemp8%jm_append_1(j_resource)
        jtemp6 => jtemp7%jm_append_1(this%f_ext)
        j_inputStream => FileInputStream_jnew_1(jtemp6%jm_toString_0())
        if (associated(j_inputStream)) then
            j_byteArray = JR_newIntArray(j_inputStream%jm_available_0())
            jtemp10 => StreamUtil_jm_getInstance_0()
            call jtemp10%jm_getByteArray_3(j_inputStream, ByteArrayOutputStream_jnew_0(), j_byteArray)
            jresult => ByteArrayInputStream_jnew_1(j_byteArray)
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

