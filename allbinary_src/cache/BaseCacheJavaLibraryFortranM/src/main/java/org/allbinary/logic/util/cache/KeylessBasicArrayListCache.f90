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
! package org.allbinary.logic.util.cache
module KeylessBasicArrayListCache_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  use IndexedBasicArrayListCache_m
  implicit none

  type, extends(IndexedBasicArrayListCache) :: KeylessBasicArrayListCache
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayListUtil), pointer :: f_basicArrayListUtil => null()
  contains
    procedure :: jm_get_0 => KeylessBasicArrayListCache_jm_get_0
    procedure :: jm_clear_0 => KeylessBasicArrayListCache_jm_clear_0
    procedure :: jm_log_0 => KeylessBasicArrayListCache_jm_log_0
  end type


contains

  function KeylessBasicArrayListCache_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeylessBasicArrayListCache), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeylessBasicArrayListCache)
      jresult => object
    end select
  end function

  recursive function KeylessBasicArrayListCache_jnew_0() result(this)
    class(KeylessBasicArrayListCache), pointer :: this
    allocate(this)
    this%jclass = 'KeylessBasicArrayListCache'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_basicArrayListUtil => BasicArrayListUtil_jm_getInstance_0()
        continue
  end function

  recursive function KeylessBasicArrayListCache_jm_get_0(this) result(jresult)
    class(KeylessBasicArrayListCache), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if ((this%f_index >= this%f_list%jm_size_0())) then
                call this%jm_addDefault_0()
            end if
            jtemp1 = this%f_index
            this%f_index = this%f_index + 1
            j_list => BasicArrayList_jcast(this%jm_getAt_1(jtemp1))
            jresult => j_list
            return
  end function

  recursive subroutine KeylessBasicArrayListCache_jm_clear_0(this)
    class(KeylessBasicArrayListCache), target :: this
    class(BasicArrayList), pointer :: j_basicArrayList
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%IndexedBasicArrayListCache%jm_clear_0()
        continue
        j_index = (this%f_list%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_basicArrayList => BasicArrayList_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
            call j_basicArrayList%jm_clear_0()
            j_index = j_index - 1
        end do
  end subroutine

  recursive function KeylessBasicArrayListCache_jm_log_0(this) result(jresult)
    class(KeylessBasicArrayListCache), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_S_LABEL
    class(BasicArrayList), pointer :: j_basicArrayList
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('S: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_list%jm_size_0())
        j_S_LABEL = ' s: '
        continue
        j_index = (this%f_list%jm_size_0() - 1)
        do while ((j_index >= 0))
            jdiscardRef => j_stringBuffer%jm_append_1(j_S_LABEL)
            j_basicArrayList => BasicArrayList_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_basicArrayList%jm_size_0())
            j_index = j_index - 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module KeylessBasicArrayListCache_m

function KeylessBasicArrayListCache_jnew_0_jext() result(this)
  use KeylessBasicArrayListCache_m, only: JObject, KeylessBasicArrayListCache_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => KeylessBasicArrayListCache_jnew_0()
end function

