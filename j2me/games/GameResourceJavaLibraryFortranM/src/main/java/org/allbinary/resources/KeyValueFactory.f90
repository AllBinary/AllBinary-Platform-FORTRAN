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
! package org.allbinary.resources
module KeyValueFactory_m
  use JR_m
  use StdUtil_m
  use ABHashtable_m
  implicit none

  type, extends(JObject) :: KeyValueFactory
    class(ABHashtable), pointer :: f_MAP => null()
  contains
    procedure :: jm_get_1 => KeyValueFactory_jm_get_1
  end type

  class(KeyValueFactory), pointer, save :: KeyValueFactory_jcell_instance => null()
  logical, save :: KeyValueFactory_jset_instance = .false.

contains

  function KeyValueFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeyValueFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeyValueFactory)
      jresult => object
    end select
  end function

  function KeyValueFactory_jstatic_instance() result(jresult)
    class(KeyValueFactory), pointer :: jresult
    if (.not. KeyValueFactory_jset_instance) then
      KeyValueFactory_jset_instance = .true.
      KeyValueFactory_jcell_instance => KeyValueFactory_jnew_0()
    end if
    jresult => KeyValueFactory_jcell_instance
  end function

  subroutine KeyValueFactory_jsetstatic_instance(jvalue)
    class(KeyValueFactory), target, optional :: jvalue
    KeyValueFactory_jset_instance = .true.
    if (present(jvalue)) then
      KeyValueFactory_jcell_instance => jvalue
    else
      KeyValueFactory_jcell_instance => null()
    end if
  end subroutine

  function KeyValueFactory_jnew_0() result(this)
    class(KeyValueFactory), pointer :: this
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'KeyValueFactory'
    jtemp1 => StdUtil_jm_getInstance_0()
    this%f_MAP => jtemp1%jm_createHashtable_0()
  end function

  recursive function KeyValueFactory_jm_getInstance_0() result(jresult)
    class(KeyValueFactory), pointer :: jresult
        jresult => KeyValueFactory_jstatic_instance()
        return
  end function

  recursive function KeyValueFactory_jm_get_1(this, j_key) result(jresult)
    class(KeyValueFactory), target :: this
    character(len=*), intent(in) :: j_key
    character(len=:), allocatable :: jresult
        if ((.not. this%f_MAP%jm_containsKey_1(j_key))) then
            jresult = j_key
            return
        end if
        jresult = this%f_MAP%jm_get_1(j_key)
        return
  end function
end module KeyValueFactory_m

