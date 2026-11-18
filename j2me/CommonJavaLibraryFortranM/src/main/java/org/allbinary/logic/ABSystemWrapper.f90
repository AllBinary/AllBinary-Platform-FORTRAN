! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.logic
module ABSystemWrapper_m
  use JR_m
  use System_m
  implicit none

  type, extends(JObject) :: ABSystemWrapper
  contains
    procedure :: jm_arraycopy_5 => ABSystemWrapper_jm_arraycopy_5
    procedure :: jm_currentTimeMillis_0 => ABSystemWrapper_jm_currentTimeMillis_0
  end type

  class(ABSystemWrapper), pointer, save :: ABSystemWrapper_jcell_instance => null()
  logical, save :: ABSystemWrapper_jset_instance = .false.

contains

  function ABSystemWrapper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABSystemWrapper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABSystemWrapper)
      jresult => object
    end select
  end function

  function ABSystemWrapper_jstatic_instance() result(jresult)
    class(ABSystemWrapper), pointer :: jresult
    if (.not. ABSystemWrapper_jset_instance) then
      ABSystemWrapper_jset_instance = .true.
      ABSystemWrapper_jcell_instance => ABSystemWrapper_jnew_0()
    end if
    jresult => ABSystemWrapper_jcell_instance
  end function

  subroutine ABSystemWrapper_jsetstatic_instance(jvalue)
    class(ABSystemWrapper), target, optional :: jvalue
    ABSystemWrapper_jset_instance = .true.
    if (present(jvalue)) then
      ABSystemWrapper_jcell_instance => jvalue
    else
      ABSystemWrapper_jcell_instance => null()
    end if
  end subroutine

  function ABSystemWrapper_jnew_0() result(this)
    class(ABSystemWrapper), pointer :: this
    allocate(this)
    this%jclass = 'ABSystemWrapper'
  end function

  recursive function ABSystemWrapper_jm_getInstance_0() result(jresult)
    class(ABSystemWrapper), pointer :: jresult
        jresult => ABSystemWrapper_jstatic_instance()
        return
  end function

  recursive subroutine ABSystemWrapper_jm_arraycopy_5(this, j_src, j_srcPos, j_dest, j_destPos, j_length)
    class(ABSystemWrapper), target :: this
    class(JObject), target, optional :: j_src
    integer(4), value :: j_srcPos
    class(JObject), target, optional :: j_dest
    integer(4), value :: j_destPos
    integer(4), value :: j_length
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call JR_arraycopy(j_src, j_srcPos, j_dest, j_destPos, j_length)
  end subroutine

  recursive function ABSystemWrapper_jm_currentTimeMillis_0(this) result(jresult)
    class(ABSystemWrapper), target :: this
    integer(8) :: jresult
        jresult = JR_currentTimeMillis()
        return
  end function
end module ABSystemWrapper_m

