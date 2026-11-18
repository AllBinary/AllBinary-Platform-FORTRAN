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
! package org.allbinary.logic.system.security.licensing
module PartnerIdentifierFileUtil_m
  use JR_m
  use InputStream_m
  use InputStreamReader_m
  use ResourceUtil_m
  use LogUtil_m
  use StringUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: PartnerIdentifierFileUtil
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_FILE_NAME
  contains
    procedure :: jm_get_0 => PartnerIdentifierFileUtil_jm_get_0
  end type

  class(PartnerIdentifierFileUtil), pointer, save :: PartnerIdentifierFileUtil_jcell_instance => null()
  logical, save :: PartnerIdentifierFileUtil_jset_instance = .false.

contains

  function PartnerIdentifierFileUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PartnerIdentifierFileUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PartnerIdentifierFileUtil)
      jresult => object
    end select
  end function

  function PartnerIdentifierFileUtil_jstatic_instance() result(jresult)
    class(PartnerIdentifierFileUtil), pointer :: jresult
    if (.not. PartnerIdentifierFileUtil_jset_instance) then
      PartnerIdentifierFileUtil_jset_instance = .true.
      PartnerIdentifierFileUtil_jcell_instance => PartnerIdentifierFileUtil_jnew_0()
    end if
    jresult => PartnerIdentifierFileUtil_jcell_instance
  end function

  subroutine PartnerIdentifierFileUtil_jsetstatic_instance(jvalue)
    class(PartnerIdentifierFileUtil), target, optional :: jvalue
    PartnerIdentifierFileUtil_jset_instance = .true.
    if (present(jvalue)) then
      PartnerIdentifierFileUtil_jcell_instance => jvalue
    else
      PartnerIdentifierFileUtil_jcell_instance => null()
    end if
  end subroutine

  function PartnerIdentifierFileUtil_jnew_0() result(this)
    class(PartnerIdentifierFileUtil), pointer :: this
    allocate(this)
    this%jclass = 'PartnerIdentifierFileUtil'
    this%f_FILE_NAME = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_FILE_NAME = 'partner.txt'
  end function

  recursive function PartnerIdentifierFileUtil_jm_getInstance_0() result(jresult)
    class(PartnerIdentifierFileUtil), pointer :: jresult
        jresult => PartnerIdentifierFileUtil_jstatic_instance()
        return
  end function

  recursive function PartnerIdentifierFileUtil_jm_get_0(this) result(jresult)
    class(PartnerIdentifierFileUtil), target :: this
    character(len=:), allocatable :: jresult
    class(ResourceUtil), pointer :: j_resourceUtil
    class(InputStream), pointer :: j_inputStream
    class(InputStreamReader), pointer :: j_inputStreamReader
    integer(4), allocatable :: j_chars(:)
    integer(4) :: j_size
    character(len=:), allocatable :: j_partnerString
    class(CommonStrings), pointer :: j_commonStrings
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_resourceUtil => ResourceUtil_jm_getInstance_0()
            j_inputStream => j_resourceUtil%jm_getResourceAsStream_1(this%f_FILE_NAME)
            j_inputStreamReader => InputStreamReader_jnew_1(j_inputStream)
            j_chars = JR_newIntArray(30)
            j_size = j_inputStreamReader%jm_read_1(j_chars)
            jtemp1 => StringUtil_jm_getInstance_0()
            j_partnerString = jtemp1%f_EMPTY_STRING
            if ((j_size > 0)) then
                j_partnerString = JR_fromChars(j_chars, 0, j_size)
            end if
            call j_inputStreamReader%jm_close_0()
            jresult = j_partnerString
            return
  end function
end module PartnerIdentifierFileUtil_m

