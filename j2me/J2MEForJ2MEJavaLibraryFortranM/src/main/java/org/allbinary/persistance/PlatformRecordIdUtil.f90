! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.persistance
module PlatformRecordIdUtil_m
  use JR_m
  use StringMaker_m
  use AbeClientInformationInterface_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: PlatformRecordIdUtil
    character(len=:), allocatable :: f_PLATFORM_SHORT_NAME
  contains
    procedure :: jm_getRecordId_2 => PlatformRecordIdUtil_jm_getRecordId_2
  end type

  class(PlatformRecordIdUtil), pointer, save :: PlatformRecordIdUtil_jcell_instance => null()
  logical, save :: PlatformRecordIdUtil_jset_instance = .false.

contains

  function PlatformRecordIdUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformRecordIdUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformRecordIdUtil)
      jresult => object
    end select
  end function

  function PlatformRecordIdUtil_jstatic_instance() result(jresult)
    class(PlatformRecordIdUtil), pointer :: jresult
    if (.not. PlatformRecordIdUtil_jset_instance) then
      PlatformRecordIdUtil_jset_instance = .true.
      PlatformRecordIdUtil_jcell_instance => PlatformRecordIdUtil_jnew_0()
    end if
    jresult => PlatformRecordIdUtil_jcell_instance
  end function

  subroutine PlatformRecordIdUtil_jsetstatic_instance(jvalue)
    class(PlatformRecordIdUtil), target, optional :: jvalue
    PlatformRecordIdUtil_jset_instance = .true.
    if (present(jvalue)) then
      PlatformRecordIdUtil_jcell_instance => jvalue
    else
      PlatformRecordIdUtil_jcell_instance => null()
    end if
  end subroutine

  function PlatformRecordIdUtil_jnew_0() result(this)
    class(PlatformRecordIdUtil), pointer :: this
    allocate(this)
    this%jclass = 'PlatformRecordIdUtil'
    this%f_PLATFORM_SHORT_NAME = ''
    this%f_PLATFORM_SHORT_NAME = 'JME'
  end function

  recursive function PlatformRecordIdUtil_jm_getInstance_0() result(jresult)
    class(PlatformRecordIdUtil), pointer :: jresult
        jresult => PlatformRecordIdUtil_jstatic_instance()
        return
  end function

  recursive function PlatformRecordIdUtil_jm_getRecordId_2(this, j_abeClientInformation, j_baseRecordId) result(jresult)
    class(PlatformRecordIdUtil), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    character(len=*), intent(in) :: j_baseRecordId
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonSeps), pointer :: jtemp6
        jtemp6 => CommonSeps_jm_getInstance_0()
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1(j_abeClientInformation%jm_toShortString_0())
        jtemp3 => jtemp4%jm_append_1(jtemp6%f_UNDERSCORE)
        jtemp2 => jtemp3%jm_append_1(this%f_PLATFORM_SHORT_NAME)
        jtemp1 => jtemp2%jm_append_1(j_baseRecordId)
        jresult = jtemp1%jm_toString_0()
        return
  end function
end module PlatformRecordIdUtil_m

