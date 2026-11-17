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
module BaseBasicArrayListCache_m
  use JR_m
  use StringMaker_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: BaseBasicArrayListCache
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_log_0 => BaseBasicArrayListCache_jm_log_0
  end type


contains

  function BaseBasicArrayListCache_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseBasicArrayListCache), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseBasicArrayListCache)
      jresult => object
    end select
  end function

  function BaseBasicArrayListCache_jnew_0() result(this)
    class(BaseBasicArrayListCache), pointer :: this
    allocate(this)
    this%jclass = 'BaseBasicArrayListCache'
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive function BaseBasicArrayListCache_jm_log_0(this) result(jresult)
    class(BaseBasicArrayListCache), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
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
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module BaseBasicArrayListCache_m

