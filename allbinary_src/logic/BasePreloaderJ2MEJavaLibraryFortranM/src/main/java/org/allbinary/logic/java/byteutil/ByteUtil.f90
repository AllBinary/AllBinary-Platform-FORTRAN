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
! package org.allbinary.logic.java.byteutil
module ByteUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: ByteUtil
  contains
    procedure :: jm_xor_2 => ByteUtil_jm_xor_2
    procedure :: jm_not_1 => ByteUtil_jm_not_1
    procedure :: jm_xorByte_2 => ByteUtil_jm_xorByte_2
    procedure :: jm_compare_2 => ByteUtil_jm_compare_2
    procedure :: jm_compareWithStats_4 => ByteUtil_jm_compareWithStats_4
  end type

  class(ByteUtil), pointer, save :: ByteUtil_jcell_instance => null()
  logical, save :: ByteUtil_jset_instance = .false.

contains

  function ByteUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ByteUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ByteUtil)
      jresult => object
    end select
  end function

  function ByteUtil_jstatic_instance() result(jresult)
    class(ByteUtil), pointer :: jresult
    if (.not. ByteUtil_jset_instance) then
      ByteUtil_jset_instance = .true.
      ByteUtil_jcell_instance => ByteUtil_jnew_0()
    end if
    jresult => ByteUtil_jcell_instance
  end function

  subroutine ByteUtil_jsetstatic_instance(jvalue)
    class(ByteUtil), target, optional :: jvalue
    ByteUtil_jset_instance = .true.
    if (present(jvalue)) then
      ByteUtil_jcell_instance => jvalue
    else
      ByteUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ByteUtil_jnew_0() result(this)
    class(ByteUtil), pointer :: this
    allocate(this)
    this%jclass = 'ByteUtil'
        continue
  end function

  recursive function ByteUtil_jm_getInstance_0() result(jresult)
    class(ByteUtil), pointer :: jresult
        jresult => ByteUtil_jstatic_instance()
        return
  end function

  recursive function ByteUtil_jm_xor_2(this, j_array, j_mask) result(jresult)
    class(ByteUtil), target :: this
    integer(4) :: j_array(:)
    integer(4), value :: j_mask
    integer(4), allocatable :: jresult(:)
    integer(4), allocatable :: j_bytes(:)
    integer(4) :: j_size
    integer(4) :: j_index
    integer(4) :: j_currentByte
        j_bytes = JR_newIntArray(size(j_array, 1))
        j_size = size(j_array, 1)
        j_index = 0
        continue
        do while ((j_index < j_size))
            j_currentByte = j_array((j_index) + 1)
            j_bytes((j_index) + 1) = JR_i8((ieor(j_currentByte, j_mask)))
            j_index = j_index + 1
        end do
        jresult = j_bytes
        return
  end function

  recursive function ByteUtil_jm_not_1(this, j_array) result(jresult)
    class(ByteUtil), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    integer(4), allocatable :: j_bytes(:)
    integer(4) :: j_size
    integer(4) :: j_index
        j_bytes = JR_newIntArray(size(j_array, 1))
        j_size = size(j_array, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_bytes((j_index) + 1) = JR_i8(not(j_array((j_index) + 1)))
            j_index = j_index + 1
        end do
        jresult = j_bytes
        return
  end function

  recursive function ByteUtil_jm_xorByte_2(this, j_array, j_index) result(jresult)
    class(ByteUtil), target :: this
    integer(4) :: j_array(:)
    integer(4), value :: j_index
    integer(4), allocatable :: jresult(:)
    integer(4) :: j_mask
        j_mask = 0
        if ((j_index == 0)) then
            j_mask = 1
        end if
        if ((j_index == 1)) then
            j_mask = 2
        end if
        if ((j_index == 2)) then
            j_mask = 4
        end if
        if ((j_index == 3)) then
            j_mask = 8
        end if
        if ((j_index == 4)) then
            j_mask = 16
        end if
        if ((j_index == 5)) then
            j_mask = 32
        end if
        if ((j_index == 6)) then
            j_mask = 64
        end if
        if ((j_index == 7)) then
            j_mask = JR_i8((-127))
        end if
        jresult = this%jm_xor_2(j_array, j_mask)
        return
  end function

  recursive function ByteUtil_jm_compare_2(this, j_newByteArray, j_oldByteArray) result(jresult)
    class(ByteUtil), target :: this
    integer(4) :: j_newByteArray(:)
    integer(4) :: j_oldByteArray(:)
    logical :: jresult
    integer(4) :: j_size
    integer(4) :: j_index
        if ((size(j_newByteArray, 1) /= size(j_oldByteArray, 1))) then
            jresult = .false.
            return
        else
            continue
        end if
        j_size = size(j_newByteArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            if ((j_newByteArray((j_index) + 1) /= j_oldByteArray((j_index) + 1))) then
                jresult = .false.
                return
            end if
            j_index = j_index + 1
        end do
        jresult = .true.
        return
  end function

  recursive function ByteUtil_jm_compareWithStats_4(this, j_newByteArray, j_newSize, j_oldByteArray, j_stats) result(jresult)
    class(ByteUtil), target :: this
    integer(4) :: j_newByteArray(:)
    integer(4), value :: j_newSize
    integer(4) :: j_oldByteArray(:)
    integer(4) :: j_stats(:)
    logical :: jresult
    integer(4) :: j_size
    integer(4) :: j_index
        if ((j_newSize /= size(j_oldByteArray, 1))) then
            j_stats((0) + 1) = (-1)
            j_stats((2) + 1) = j_newSize
            j_stats((3) + 1) = size(j_oldByteArray, 1)
            jresult = .false.
            return
        else
            j_stats((0) + 1) = j_newSize
        end if
        j_stats((1) + 1) = 0
        j_size = j_newSize
        j_index = 0
        do while ((j_index < j_size))
            if ((j_newByteArray((j_index) + 1) /= j_oldByteArray((j_index) + 1))) then
                jresult = .false.
                return
            end if
            j_stats((1) + 1) = j_stats((1) + 1) + 1
            j_index = j_index + 1
        end do
        jresult = .true.
        return
  end function
end module ByteUtil_m

