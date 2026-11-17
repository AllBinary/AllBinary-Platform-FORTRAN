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
module SmallBasicColorCacheFactory_m
  use JR_m
  use StringUtil_m
  use BasicColor_m
  use BasicColorFactory_m
  implicit none

  type, extends(JObject) :: SmallBasicColorCacheFactory
    integer(4) :: f_SIZE = 0
    integer(4), allocatable :: f_INDEX_TO_COLOR(:)
    type(JRef), allocatable :: f_BASIC_COLOR_ARRAY(:)
    integer(4) :: f_colorIndex = 0
  contains
    procedure :: jm_add_1 => SmallBasicColorCacheFactory_jm_add_1
    procedure :: jm_getAndOrCreate_1 => SmallBasicColorCacheFactory_jm_getAndOrCreate_1
  end type

  class(SmallBasicColorCacheFactory), pointer, save :: SmallBasicColorCacheFactory_jcell_instance => null()
  logical, save :: SmallBasicColorCacheFactory_jset_instance = .false.

contains

  function SmallBasicColorCacheFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SmallBasicColorCacheFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SmallBasicColorCacheFactory)
      jresult => object
    end select
  end function

  function SmallBasicColorCacheFactory_jstatic_instance() result(jresult)
    class(SmallBasicColorCacheFactory), pointer :: jresult
    if (.not. SmallBasicColorCacheFactory_jset_instance) then
      SmallBasicColorCacheFactory_jset_instance = .true.
      SmallBasicColorCacheFactory_jcell_instance => SmallBasicColorCacheFactory_jnew_0()
    end if
    jresult => SmallBasicColorCacheFactory_jcell_instance
  end function

  recursive function SmallBasicColorCacheFactory_jnew_0() result(this)
    class(SmallBasicColorCacheFactory), pointer :: this
    allocate(this)
    this%jclass = 'SmallBasicColorCacheFactory'
    this%f_SIZE = 255
    this%f_INDEX_TO_COLOR = JR_newIntArray(this%f_SIZE)
    this%f_BASIC_COLOR_ARRAY = JR_newRefArray(this%f_SIZE)
    this%f_colorIndex = 0
        continue
  end function

  recursive function SmallBasicColorCacheFactory_jm_getInstance_0() result(jresult)
    class(SmallBasicColorCacheFactory), pointer :: jresult
        jresult => SmallBasicColorCacheFactory_jstatic_instance()
        return
  end function

  recursive subroutine SmallBasicColorCacheFactory_jm_add_1(this, j_basicDefaultColor)
    class(SmallBasicColorCacheFactory), target :: this
    class(BasicColor), target, optional :: j_basicDefaultColor
        this%f_BASIC_COLOR_ARRAY((this%f_colorIndex) + 1)%v => j_basicDefaultColor
        this%f_INDEX_TO_COLOR((this%f_colorIndex) + 1) = j_basicDefaultColor%jm_intValue_0()
        this%f_colorIndex = this%f_colorIndex + 1
  end subroutine

  recursive function SmallBasicColorCacheFactory_jm_getAndOrCreate_1(this, j_colorAsInt) result(jresult)
    class(SmallBasicColorCacheFactory), target :: this
    integer(4), value :: j_colorAsInt
    class(BasicColor), pointer :: jresult
    class(BasicColor), pointer :: j_basicColor
    integer(4) :: j_index
    integer(4) :: j_ALPHA_MASK
    class(BasicColorFactory), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_index = 0
        do while ((j_index < this%f_SIZE))
            if ((this%f_INDEX_TO_COLOR((j_index) + 1) == j_colorAsInt)) then
                jresult => BasicColor_jcast(this%f_BASIC_COLOR_ARRAY((j_index) + 1)%v)
                return
            end if
            j_index = j_index + 1
        end do
        j_ALPHA_MASK = int(z'FF000000', 4)
        jtemp2 => StringUtil_jm_getInstance_0()
        jtemp1 => BasicColorFactory_jm_getInstance_0()
        j_basicColor => jtemp1%jm_createInstanceAN_3(iand(j_colorAsInt, j_ALPHA_MASK), iand(j_colorAsInt, int(z'00FFFFFF', 4)), jtemp2%f_EMPTY_STRING)
        call this%jm_add_1(j_basicColor)
        jresult => j_basicColor
        return
  end function
end module SmallBasicColorCacheFactory_m

