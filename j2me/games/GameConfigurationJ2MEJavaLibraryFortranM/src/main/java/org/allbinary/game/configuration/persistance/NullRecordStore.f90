! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.game.configuration.persistance
module NullRecordStore_m
  use JR_m
  implicit none

  type, extends(RecordStore) :: NullRecordStore
  end type

  class(NullRecordStore), pointer, save :: NullRecordStore_jcell_NULL_RECORD_STORE => null()
  logical, save :: NullRecordStore_jset_NULL_RECORD_STORE = .false.

contains

  function NullRecordStore_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullRecordStore), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullRecordStore)
      jresult => object
    end select
  end function

  function NullRecordStore_jstatic_NULL_RECORD_STORE() result(jresult)
    class(NullRecordStore), pointer :: jresult
    if (.not. NullRecordStore_jset_NULL_RECORD_STORE) then
      NullRecordStore_jset_NULL_RECORD_STORE = .true.
      NullRecordStore_jcell_NULL_RECORD_STORE => NullRecordStore_jnew_0()
    end if
    jresult => NullRecordStore_jcell_NULL_RECORD_STORE
  end function

  subroutine NullRecordStore_jsetstatic_NULL_RECORD_STORE(jvalue)
    class(NullRecordStore), target, optional :: jvalue
    NullRecordStore_jset_NULL_RECORD_STORE = .true.
    if (present(jvalue)) then
      NullRecordStore_jcell_NULL_RECORD_STORE => jvalue
    else
      NullRecordStore_jcell_NULL_RECORD_STORE => null()
    end if
  end subroutine

  function NullRecordStore_jnew_0() result(this)
    class(NullRecordStore), pointer :: this
    allocate(this)
    this%jclass = 'NullRecordStore'
  end function
end module NullRecordStore_m

function NullRecordStore_jnew_0_jext() result(this)
  use NullRecordStore_m, only: JObject, NullRecordStore_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullRecordStore_jnew_0()
end function

