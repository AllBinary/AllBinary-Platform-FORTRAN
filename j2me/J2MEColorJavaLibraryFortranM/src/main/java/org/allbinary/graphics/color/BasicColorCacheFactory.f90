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
! package org.allbinary.graphics.color
module BasicColorCacheFactory_m
  use JR_m
  use StdUtil_m
  use ABHashtable_m
  use Integer_m
  use BasicColor_m
  use BasicColorFactory_m
  implicit none

  type, extends(JObject) :: BasicColorCacheFactory
    class(ABHashtable), pointer :: f_hashtable => null()
  contains
    procedure :: jm_add_1 => BasicColorCacheFactory_jm_add_1
    procedure :: jm_getAndOrCreate_1 => BasicColorCacheFactory_jm_getAndOrCreate_1
  end type

  class(BasicColorCacheFactory), pointer, save :: BasicColorCacheFactory_jcell_instance => null()
  logical, save :: BasicColorCacheFactory_jset_instance = .false.

contains

  function BasicColorCacheFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColorCacheFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColorCacheFactory)
      jresult => object
    end select
  end function

  function BasicColorCacheFactory_jstatic_instance() result(jresult)
    class(BasicColorCacheFactory), pointer :: jresult
    if (.not. BasicColorCacheFactory_jset_instance) then
      BasicColorCacheFactory_jset_instance = .true.
      BasicColorCacheFactory_jcell_instance => BasicColorCacheFactory_jnew_0()
    end if
    jresult => BasicColorCacheFactory_jcell_instance
  end function

  subroutine BasicColorCacheFactory_jsetstatic_instance(jvalue)
    class(BasicColorCacheFactory), target, optional :: jvalue
    BasicColorCacheFactory_jset_instance = .true.
    if (present(jvalue)) then
      BasicColorCacheFactory_jcell_instance => jvalue
    else
      BasicColorCacheFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function BasicColorCacheFactory_jnew_0() result(this)
    class(BasicColorCacheFactory), pointer :: this
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'BasicColorCacheFactory'
    jtemp1 => StdUtil_jm_getInstance_0()
    this%f_hashtable => jtemp1%jm_createHashtable_0()
        continue
  end function

  recursive function BasicColorCacheFactory_jm_getInstance_0() result(jresult)
    class(BasicColorCacheFactory), pointer :: jresult
        jresult => BasicColorCacheFactory_jstatic_instance()
        return
  end function

  recursive subroutine BasicColorCacheFactory_jm_add_1(this, j_basicDefaultColor)
    class(BasicColorCacheFactory), target :: this
    class(BasicColor), target, optional :: j_basicDefaultColor
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_hashtable%jm_put_2(j_basicDefaultColor%jm_intValue_0(), j_basicDefaultColor)
  end subroutine

  recursive function BasicColorCacheFactory_jm_getAndOrCreate_1(this, j_integer) result(jresult)
    class(BasicColorCacheFactory), target :: this
    integer(4), value :: j_integer
    class(BasicColor), pointer :: jresult
    class(BasicColor), pointer :: j_basicColor
    class(BasicColorFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_basicColor => BasicColor_jcast(this%f_hashtable%jm_get_1(j_integer))
        if ((.not. associated(j_basicColor))) then
            jtemp2 => BasicColorFactory_jm_getInstance_0()
            j_basicColor => jtemp2%jm_createInstance_1(int(j_integer, 4))
            jdiscardRef => this%f_hashtable%jm_put_2(j_integer, j_basicColor)
        end if
        jresult => j_basicColor
        return
  end function
end module BasicColorCacheFactory_m

