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
! package org.allbinary.util
module HashtableUtil_m
  use JR_m
  use Enumeration_m
  use EnumerationUtil_m
  use ABHashtable_m
  use BasicArrayListS_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: HashtableUtil
    class(EnumerationUtil), pointer :: f_enumerationUtil => null()
  contains
    procedure :: jm_putAll_2 => HashtableUtil_jm_putAll_2
    procedure :: jm_getKeysAsArray_1 => HashtableUtil_jm_getKeysAsArray_1
    procedure :: jm_getKeysAsList_1 => HashtableUtil_jm_getKeysAsList_1
  end type

  class(HashtableUtil), pointer, save :: HashtableUtil_jcell_instance => null()
  logical, save :: HashtableUtil_jset_instance = .false.

contains

  function HashtableUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HashtableUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HashtableUtil)
      jresult => object
    end select
  end function

  function HashtableUtil_jstatic_instance() result(jresult)
    class(HashtableUtil), pointer :: jresult
    if (.not. HashtableUtil_jset_instance) then
      HashtableUtil_jset_instance = .true.
      HashtableUtil_jcell_instance => HashtableUtil_jnew_0()
    end if
    jresult => HashtableUtil_jcell_instance
  end function

  subroutine HashtableUtil_jsetstatic_instance(jvalue)
    class(HashtableUtil), target, optional :: jvalue
    HashtableUtil_jset_instance = .true.
    if (present(jvalue)) then
      HashtableUtil_jcell_instance => jvalue
    else
      HashtableUtil_jcell_instance => null()
    end if
  end subroutine

  function HashtableUtil_jnew_0() result(this)
    class(HashtableUtil), pointer :: this
    allocate(this)
    this%jclass = 'HashtableUtil'
    this%f_enumerationUtil => EnumerationUtil_jm_getInstance_0()
  end function

  recursive function HashtableUtil_jm_getInstance_0() result(jresult)
    class(HashtableUtil), pointer :: jresult
        jresult => HashtableUtil_jstatic_instance()
        return
  end function

  recursive subroutine HashtableUtil_jm_putAll_2(this, j_fromHashtable, j_hashtable)
    class(HashtableUtil), target :: this
    class(ABHashtable), target, optional :: j_fromHashtable
    class(ABHashtable), target, optional :: j_hashtable
    class(Enumeration), pointer :: j_enumeration
    class(JObject), pointer :: j_keyCanBeNull
    class(JObject), pointer :: j_valueCanBeNull
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_enumeration => j_fromHashtable%jm_keys_0()
        continue
        continue
        do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
            j_keyCanBeNull => this%f_enumerationUtil%jm_nextElement_1(j_enumeration)
            j_valueCanBeNull => j_hashtable%jm_get_1(j_keyCanBeNull)
            if ((.not. associated(j_valueCanBeNull))) then
                continue
            else
                jdiscardRef => j_hashtable%jm_put_2(j_keyCanBeNull, j_valueCanBeNull)
            end if
        end do
  end subroutine

  recursive function HashtableUtil_jm_getKeysAsArray_1(this, j_hashtable) result(jresult)
    class(HashtableUtil), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_objectArray(:)
    integer(4) :: j_index
    class(Enumeration), pointer :: j_enumeration
    integer(4) :: jtemp1
        j_objectArray = JR_newRefArray(j_hashtable%jm_size_0())
        j_index = 0
        j_enumeration => j_hashtable%jm_keys_0()
        do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
            jtemp1 = j_index
            j_index = j_index + 1
            j_objectArray((jtemp1) + 1)%v => this%f_enumerationUtil%jm_nextElement_1(j_enumeration)
        end do
        jresult = j_objectArray
        return
  end function

  recursive function HashtableUtil_jm_getKeysAsList_1(this, j_hashtable) result(jresult)
    class(HashtableUtil), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    class(Enumeration), pointer :: j_enumeration
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => BasicArrayListS_jnew_1(j_hashtable%jm_size_0())
        j_enumeration => j_hashtable%jm_keys_0()
        do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
            jdiscardBoolean = j_list%jm_add_1(this%f_enumerationUtil%jm_nextElement_1(j_enumeration))
        end do
        jresult => j_list
        return
  end function
end module HashtableUtil_m

