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
module ImmutableBasicArrayList_m
  use JR_m
  use ForcedLogUtil_m
  use BasicArrayListS_m
  implicit none

  type, extends(BasicArrayListS) :: ImmutableBasicArrayList
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_add_1 => ImmutableBasicArrayList_jm_add_1
    procedure :: jm_addAt_2 => ImmutableBasicArrayList_jm_addAt_2
    procedure :: jm_toString_0 => ImmutableBasicArrayList_jm_toString_0
  end type


contains

  function ImmutableBasicArrayList_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImmutableBasicArrayList), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImmutableBasicArrayList)
      jresult => object
    end select
  end function

  recursive function ImmutableBasicArrayList_jnew_2(j_name, j_size) result(this)
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_size
    class(ImmutableBasicArrayList), pointer :: this
    allocate(this)
    this%jclass = 'ImmutableBasicArrayList'
    this%f_name = ''
    
        continue ! super()
        this%f_name = j_name
  end function

  recursive function ImmutableBasicArrayList_jm_add_1(this, j_anyType) result(jresult)
    class(ImmutableBasicArrayList), target :: this
    class(JObject), target, optional :: j_anyType
    logical :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_name, this)
        jresult = .true.
        return
  end function

  recursive subroutine ImmutableBasicArrayList_jm_addAt_2(this, j_index, j_element)
    class(ImmutableBasicArrayList), target :: this
    integer(4), value :: j_index
    class(JObject), target, optional :: j_element
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_name, this)
  end subroutine

  recursive function ImmutableBasicArrayList_jm_toString_0(this) result(jresult)
    class(ImmutableBasicArrayList), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module ImmutableBasicArrayList_m

function ImmutableBasicArrayList_jnew_2_jext(p1, p2) result(this)
  use ImmutableBasicArrayList_m, only: JObject, ImmutableBasicArrayList_jnew_2
  implicit none
      character(len=*), intent(in) :: p1
      integer(4), value :: p2
  class(JObject), pointer :: this
  this => ImmutableBasicArrayList_jnew_2(p1, p2)
end function

