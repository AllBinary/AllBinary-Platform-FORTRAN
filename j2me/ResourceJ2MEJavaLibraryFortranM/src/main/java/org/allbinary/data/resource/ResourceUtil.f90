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
  use LogUtil_m
  use StringMaker_m
  use CommonSeps_m
  use CommonStrings_m
  use Integer_m
  implicit none

  type, extends(JObject) :: ResourceUtil
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_setLoadingPaths_2 => ResourceUtil_jm_setLoadingPaths_2
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
    class(CommonStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => CommonStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3(jtemp1%f_NOT_IMPLEMENTED, this, 'setLoadingPaths')
  end subroutine

  recursive function ResourceUtil_jm_getResourceAsStream_1(this, j_resource) result(jresult)
    class(ResourceUtil), target :: this
    character(len=*), intent(in) :: j_resource
    class(InputStream), pointer :: jresult
    class(InputStream), pointer :: j_inputStream
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_index
    character(len=:), allocatable :: j_resourcePath
    character(len=:), allocatable :: j_RES
    character(len=:), allocatable :: j_COLON
    character(len=:), allocatable :: j_RESOURCE_STRING
    character(len=:), allocatable :: jtemp2
    character(len=:), allocatable :: jtemp3
    character(len=:), allocatable :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    character(len=:), allocatable :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    character(len=:), allocatable :: jtemp11
    class(CommonSeps), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    character(len=:), allocatable :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(StringMaker), pointer :: jtemp19
    character(len=:), allocatable :: jtemp20
    class(StringMaker), pointer :: jtemp21
    class(StringMaker), pointer :: jtemp22
    class(StringMaker), pointer :: jtemp23
    character(len=:), allocatable :: jtemp24
    class(StringMaker), pointer :: jtemp25
    class(StringMaker), pointer :: jtemp26
    class(StringMaker), pointer :: jtemp27
    character(len=:), allocatable :: jtemp28
    class(StringMaker), pointer :: jtemp29
    class(StringMaker), pointer :: jtemp30
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 = JR_className(j_resource)
        j_inputStream => jtemp2%jm_getResourceAsStream_1(j_resource)
        if ((.not. associated(j_inputStream))) then
            j_inputStream => this%jm_getResourceAsStreamAtStart_2(j_resource, 2)
            if ((.not. associated(j_inputStream))) then
                j_inputStream => this%jm_getResourceAsStreamAtStart_2(j_resource, 1)
                if ((.not. associated(j_inputStream))) then
                    j_stringMaker => StringMaker_jnew_0()
                    j_index = JR_lastIndexOf(j_resource, iachar('/'))
                    j_resourcePath = JR_substring(j_resource, (j_index + 1))
                    jtemp3 = JR_className(j_resource)
                    j_inputStream => jtemp3%jm_getResourceAsStream_1(j_resourcePath)
                    if ((.not. associated(j_inputStream))) then
                        j_resourcePath = JR_substring(j_resource, j_index)
                        jtemp4 = JR_className(j_resource)
                        j_inputStream => jtemp4%jm_getResourceAsStream_1(j_resourcePath)
                        if ((.not. associated(j_inputStream))) then
                            j_RES = 'res'
                            jtemp6 => j_stringMaker%jm_append_1(j_RES)
                            jtemp5 => jtemp6%jm_append_1(JR_substring(j_resource, j_index))
                            j_resourcePath = jtemp5%jm_toString_0()
                            jtemp7 = JR_className(j_resource)
                            j_inputStream => jtemp7%jm_getResourceAsStream_1(j_resourcePath)
                            if ((.not. associated(j_inputStream))) then
                                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                                jtemp10 => j_stringMaker%jm_append_1('/')
                                jtemp9 => jtemp10%jm_append_1(j_RES)
                                jtemp8 => jtemp9%jm_append_1(JR_substring(j_resource, j_index))
                                j_resourcePath = jtemp8%jm_toString_0()
                                jtemp11 = JR_className(j_resource)
                                j_inputStream => jtemp11%jm_getResourceAsStream_1(j_resourcePath)
                                jtemp12 => CommonSeps_jm_getInstance_0()
                                j_COLON = jtemp12%f_COLON
                                if ((.not. associated(j_inputStream))) then
                                    jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                                    jtemp15 => j_stringMaker%jm_append_1(j_RES)
                                    jtemp14 => jtemp15%jm_append_1(j_COLON)
                                    jtemp13 => jtemp14%jm_append_1(JR_substring(j_resource, j_index))
                                    j_resourcePath = jtemp13%jm_toString_0()
                                    jtemp16 = JR_className(j_resource)
                                    j_inputStream => jtemp16%jm_getResourceAsStream_1(j_resourcePath)
                                    if ((.not. associated(j_inputStream))) then
                                        jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                                        jtemp19 => j_stringMaker%jm_append_1(j_RES)
                                        jtemp18 => jtemp19%jm_append_1(j_COLON)
                                        jtemp17 => jtemp18%jm_append_1(JR_substring(j_resource, (j_index + 1)))
                                        j_resourcePath = jtemp17%jm_toString_0()
                                        jtemp20 = JR_className(j_resource)
                                        j_inputStream => jtemp20%jm_getResourceAsStream_1(j_resourcePath)
                                        if ((.not. associated(j_inputStream))) then
                                            j_RESOURCE_STRING = 'resource'
                                            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                                            jtemp23 => j_stringMaker%jm_append_1(j_RESOURCE_STRING)
                                            jtemp22 => jtemp23%jm_append_1(j_COLON)
                                            jtemp21 => jtemp22%jm_append_1(JR_substring(j_resource, j_index))
                                            j_resourcePath = jtemp21%jm_toString_0()
                                            jtemp24 = JR_className(j_resource)
                                            j_inputStream => jtemp24%jm_getResourceAsStream_1(j_resourcePath)
                                            if ((.not. associated(j_inputStream))) then
                                                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                                                jtemp27 => j_stringMaker%jm_append_1(j_RESOURCE_STRING)
                                                jtemp26 => jtemp27%jm_append_1(j_COLON)
                                                jtemp25 => jtemp26%jm_append_1(JR_substring(j_resource, (j_index + 1)))
                                                j_resourcePath = jtemp25%jm_toString_0()
                                                jtemp28 = JR_className(j_resource)
                                                j_inputStream => jtemp28%jm_getResourceAsStream_1(j_resourcePath)
                                                if ((.not. associated(j_inputStream))) then
                                                    jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                                                    jtemp30 => j_stringMaker%jm_append_1('Unable to obtain: ')
                                                    jtemp29 => jtemp30%jm_append_1(j_resource)
                                                    error stop JR_toString(JR_newJObject('Exception'))
                                                end if
                                            end if
                                        end if
                                    end if
                                end if
                            end if
                        end if
                    end if
                end if
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
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_index
    character(len=:), allocatable :: j_resourcePath
    class(InputStream), pointer :: j_inputStream
    class(CommonSeps), pointer :: jtemp31
    character(len=:), allocatable :: jtemp32
        j_stringMaker => StringMaker_jnew_0()
        jtemp31 => CommonSeps_jm_getInstance_0()
        j_index = JR_indexOf(j_resource, jtemp31%f_COLON)
        j_resourcePath = JR_substring(j_resource, (j_index + j_startIndex))
        jtemp32 = JR_className(j_resource)
        j_inputStream => jtemp32%jm_getResourceAsStream_1(j_resourcePath)
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

