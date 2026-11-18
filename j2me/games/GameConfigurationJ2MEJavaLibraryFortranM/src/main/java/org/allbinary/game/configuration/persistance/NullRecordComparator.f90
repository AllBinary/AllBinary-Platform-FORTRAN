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
module NullRecordComparator_m
  use JR_m
  implicit none

  type, extends(RecordComparator) :: NullRecordComparator
  contains
    procedure :: jm_compare_2 => NullRecordComparator_jm_compare_2
  end type

  class(NullRecordComparator), pointer, save :: NullRecordComparator_jcell_NULL_RECORD_COMPARATOR => null()
  logical, save :: NullRecordComparator_jset_NULL_RECORD_COMPARATOR = .false.

contains

  function NullRecordComparator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullRecordComparator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullRecordComparator)
      jresult => object
    end select
  end function

  function NullRecordComparator_jstatic_NULL_RECORD_COMPARATOR() result(jresult)
    class(NullRecordComparator), pointer :: jresult
    if (.not. NullRecordComparator_jset_NULL_RECORD_COMPARATOR) then
      NullRecordComparator_jset_NULL_RECORD_COMPARATOR = .true.
      NullRecordComparator_jcell_NULL_RECORD_COMPARATOR => NullRecordComparator_jnew_0()
    end if
    jresult => NullRecordComparator_jcell_NULL_RECORD_COMPARATOR
  end function

  subroutine NullRecordComparator_jsetstatic_NULL_RECORD_COMPARATOR(jvalue)
    class(NullRecordComparator), target, optional :: jvalue
    NullRecordComparator_jset_NULL_RECORD_COMPARATOR = .true.
    if (present(jvalue)) then
      NullRecordComparator_jcell_NULL_RECORD_COMPARATOR => jvalue
    else
      NullRecordComparator_jcell_NULL_RECORD_COMPARATOR => null()
    end if
  end subroutine

  function NullRecordComparator_jnew_0() result(this)
    class(NullRecordComparator), pointer :: this
    allocate(this)
    this%jclass = 'NullRecordComparator'
  end function

  recursive function NullRecordComparator_jm_compare_2(this, j_rec1, j_rec2) result(jresult)
    class(NullRecordComparator), target :: this
    integer(4) :: j_rec1(:)
    integer(4) :: j_rec2(:)
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module NullRecordComparator_m

