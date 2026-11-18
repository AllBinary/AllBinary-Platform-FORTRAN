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
! package org.allbinary.android
module AndroidInfoFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: AndroidInfoFactory
    integer(4) :: f_version = 0
  contains
    procedure :: jm_getVersion_0 => AndroidInfoFactory_jm_getVersion_0
  end type

  class(AndroidInfoFactory), pointer, save :: AndroidInfoFactory_jcell_instance => null()
  logical, save :: AndroidInfoFactory_jset_instance = .false.

contains

  function AndroidInfoFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AndroidInfoFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AndroidInfoFactory)
      jresult => object
    end select
  end function

  function AndroidInfoFactory_jstatic_instance() result(jresult)
    class(AndroidInfoFactory), pointer :: jresult
    if (.not. AndroidInfoFactory_jset_instance) then
      AndroidInfoFactory_jset_instance = .true.
      AndroidInfoFactory_jcell_instance => AndroidInfoFactory_jnew_0()
    end if
    jresult => AndroidInfoFactory_jcell_instance
  end function

  subroutine AndroidInfoFactory_jsetstatic_instance(jvalue)
    class(AndroidInfoFactory), target, optional :: jvalue
    AndroidInfoFactory_jset_instance = .true.
    if (present(jvalue)) then
      AndroidInfoFactory_jcell_instance => jvalue
    else
      AndroidInfoFactory_jcell_instance => null()
    end if
  end subroutine

  function AndroidInfoFactory_jnew_0() result(this)
    class(AndroidInfoFactory), pointer :: this
    allocate(this)
    this%jclass = 'AndroidInfoFactory'
    this%f_version = 8
  end function

  recursive function AndroidInfoFactory_jm_getInstance_0() result(jresult)
    class(AndroidInfoFactory), pointer :: jresult
        jresult => AndroidInfoFactory_jstatic_instance()
        return
  end function

  recursive function AndroidInfoFactory_jm_getVersion_0(this) result(jresult)
    class(AndroidInfoFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_version
        return
  end function
end module AndroidInfoFactory_m

