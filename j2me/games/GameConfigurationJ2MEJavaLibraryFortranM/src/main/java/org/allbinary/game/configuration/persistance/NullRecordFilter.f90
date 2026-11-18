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
module NullRecordFilter_m
  use JR_m
  implicit none

  type, extends(RecordFilter) :: NullRecordFilter
  contains
    procedure :: jm_matches_1 => NullRecordFilter_jm_matches_1
  end type

  class(NullRecordFilter), pointer, save :: NullRecordFilter_jcell_NULL_RECORD_FILTER => null()
  logical, save :: NullRecordFilter_jset_NULL_RECORD_FILTER = .false.

contains

  function NullRecordFilter_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullRecordFilter), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullRecordFilter)
      jresult => object
    end select
  end function

  function NullRecordFilter_jstatic_NULL_RECORD_FILTER() result(jresult)
    class(NullRecordFilter), pointer :: jresult
    if (.not. NullRecordFilter_jset_NULL_RECORD_FILTER) then
      NullRecordFilter_jset_NULL_RECORD_FILTER = .true.
      NullRecordFilter_jcell_NULL_RECORD_FILTER => NullRecordFilter_jnew_0()
    end if
    jresult => NullRecordFilter_jcell_NULL_RECORD_FILTER
  end function

  subroutine NullRecordFilter_jsetstatic_NULL_RECORD_FILTER(jvalue)
    class(NullRecordFilter), target, optional :: jvalue
    NullRecordFilter_jset_NULL_RECORD_FILTER = .true.
    if (present(jvalue)) then
      NullRecordFilter_jcell_NULL_RECORD_FILTER => jvalue
    else
      NullRecordFilter_jcell_NULL_RECORD_FILTER => null()
    end if
  end subroutine

  function NullRecordFilter_jnew_0() result(this)
    class(NullRecordFilter), pointer :: this
    allocate(this)
    this%jclass = 'NullRecordFilter'
  end function

  recursive function NullRecordFilter_jm_matches_1(this, j_candidate) result(jresult)
    class(NullRecordFilter), target :: this
    integer(4) :: j_candidate(:)
    logical :: jresult
        jresult = .true.
        return
  end function
end module NullRecordFilter_m

