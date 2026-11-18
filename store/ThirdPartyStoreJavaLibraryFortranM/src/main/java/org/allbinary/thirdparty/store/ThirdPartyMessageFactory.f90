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
! package org.allbinary.thirdparty.store
module ThirdPartyMessageFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: ThirdPartyMessageFactory
    character(len=:), allocatable :: f_AUTHORIZED
    character(len=:), allocatable :: f_NOT_AUTHORIZED
    character(len=:), allocatable :: f_LINKAGE_ERROR
  end type

  class(ThirdPartyMessageFactory), pointer, save :: ThirdPartyMessageFactory_jcell_instance => null()
  logical, save :: ThirdPartyMessageFactory_jset_instance = .false.

contains

  function ThirdPartyMessageFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThirdPartyMessageFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThirdPartyMessageFactory)
      jresult => object
    end select
  end function

  function ThirdPartyMessageFactory_jstatic_instance() result(jresult)
    class(ThirdPartyMessageFactory), pointer :: jresult
    if (.not. ThirdPartyMessageFactory_jset_instance) then
      ThirdPartyMessageFactory_jset_instance = .true.
      ThirdPartyMessageFactory_jcell_instance => ThirdPartyMessageFactory_jnew_0()
    end if
    jresult => ThirdPartyMessageFactory_jcell_instance
  end function

  subroutine ThirdPartyMessageFactory_jsetstatic_instance(jvalue)
    class(ThirdPartyMessageFactory), target, optional :: jvalue
    ThirdPartyMessageFactory_jset_instance = .true.
    if (present(jvalue)) then
      ThirdPartyMessageFactory_jcell_instance => jvalue
    else
      ThirdPartyMessageFactory_jcell_instance => null()
    end if
  end subroutine

  function ThirdPartyMessageFactory_jnew_0() result(this)
    class(ThirdPartyMessageFactory), pointer :: this
    allocate(this)
    this%jclass = 'ThirdPartyMessageFactory'
    this%f_AUTHORIZED = ''
    this%f_NOT_AUTHORIZED = ''
    this%f_LINKAGE_ERROR = ''
    this%f_AUTHORIZED = 'Authorized'
    this%f_NOT_AUTHORIZED = 'Not Authorized'
    this%f_LINKAGE_ERROR = 'Linkage Error'
  end function

  recursive function ThirdPartyMessageFactory_jm_getInstance_0() result(jresult)
    class(ThirdPartyMessageFactory), pointer :: jresult
        jresult => ThirdPartyMessageFactory_jstatic_instance()
        return
  end function
end module ThirdPartyMessageFactory_m

