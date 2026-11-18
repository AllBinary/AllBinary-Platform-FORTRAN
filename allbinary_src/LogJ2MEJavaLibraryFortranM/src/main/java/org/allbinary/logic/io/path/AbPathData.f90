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
! package org.allbinary.logic.io.path
module AbPathData_m
  use JR_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: AbPathData
    character(len=:), allocatable :: f_EXTENSION_SEP
    integer(4) :: f_SEPARATORCHAR = 0
    character(len=:), allocatable :: f_SEPARATOR
  end type

  class(AbPathData), pointer, save :: AbPathData_jcell_instance => null()
  logical, save :: AbPathData_jset_instance = .false.

contains

  function AbPathData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbPathData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbPathData)
      jresult => object
    end select
  end function

  function AbPathData_jstatic_instance() result(jresult)
    class(AbPathData), pointer :: jresult
    if (.not. AbPathData_jset_instance) then
      AbPathData_jset_instance = .true.
      AbPathData_jcell_instance => AbPathData_jnew_0()
    end if
    jresult => AbPathData_jcell_instance
  end function

  subroutine AbPathData_jsetstatic_instance(jvalue)
    class(AbPathData), target, optional :: jvalue
    AbPathData_jset_instance = .true.
    if (present(jvalue)) then
      AbPathData_jcell_instance => jvalue
    else
      AbPathData_jcell_instance => null()
    end if
  end subroutine

  recursive function AbPathData_jnew_0() result(this)
    class(AbPathData), pointer :: this
    class(CommonSeps), pointer :: jtemp1
    class(CommonSeps), pointer :: jtemp2
    allocate(this)
    this%jclass = 'AbPathData'
    this%f_EXTENSION_SEP = ''
    this%f_SEPARATOR = ''
    jtemp1 => CommonSeps_jm_getInstance_0()
    this%f_EXTENSION_SEP = jtemp1%f_PERIOD
    this%f_SEPARATORCHAR = iachar('/')
    jtemp2 => CommonSeps_jm_getInstance_0()
    this%f_SEPARATOR = jtemp2%f_FORWARD_SLASH
        continue
  end function

  recursive function AbPathData_jm_getInstance_0() result(jresult)
    class(AbPathData), pointer :: jresult
        jresult => AbPathData_jstatic_instance()
        return
  end function
end module AbPathData_m

