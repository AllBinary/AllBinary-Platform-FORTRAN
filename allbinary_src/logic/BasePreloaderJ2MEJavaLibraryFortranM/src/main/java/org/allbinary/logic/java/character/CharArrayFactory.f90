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
! package org.allbinary.logic.java.character
module CharArrayFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: CharArrayFactory
    integer(4), allocatable :: f_zeroCharArray(:)
  contains
    procedure :: jm_getZeroCharArray_0 => CharArrayFactory_jm_getZeroCharArray_0
  end type

  class(CharArrayFactory), pointer, save :: CharArrayFactory_jcell_instance => null()
  logical, save :: CharArrayFactory_jset_instance = .false.

contains

  function CharArrayFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CharArrayFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CharArrayFactory)
      jresult => object
    end select
  end function

  function CharArrayFactory_jstatic_instance() result(jresult)
    class(CharArrayFactory), pointer :: jresult
    if (.not. CharArrayFactory_jset_instance) then
      CharArrayFactory_jset_instance = .true.
      CharArrayFactory_jcell_instance => CharArrayFactory_jnew_0()
    end if
    jresult => CharArrayFactory_jcell_instance
  end function

  subroutine CharArrayFactory_jsetstatic_instance(jvalue)
    class(CharArrayFactory), target, optional :: jvalue
    CharArrayFactory_jset_instance = .true.
    if (present(jvalue)) then
      CharArrayFactory_jcell_instance => jvalue
    else
      CharArrayFactory_jcell_instance => null()
    end if
  end subroutine

  function CharArrayFactory_jnew_0() result(this)
    class(CharArrayFactory), pointer :: this
    allocate(this)
    this%jclass = 'CharArrayFactory'
    this%f_zeroCharArray = JR_newIntArray(0)
  end function

  recursive function CharArrayFactory_jm_getInstance_0() result(jresult)
    class(CharArrayFactory), pointer :: jresult
        jresult => CharArrayFactory_jstatic_instance()
        return
  end function

  recursive function CharArrayFactory_jm_getZeroCharArray_0(this) result(jresult)
    class(CharArrayFactory), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_zeroCharArray
        return
  end function
end module CharArrayFactory_m

