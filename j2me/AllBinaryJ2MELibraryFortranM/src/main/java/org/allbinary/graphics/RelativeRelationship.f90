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
! package org.allbinary.graphics
module RelativeRelationship_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  use PointFactory_m
  use GPoint_m
  implicit none

  type, extends(JObject) :: RelativeRelationship
    class(BasicArrayList), pointer :: f_typesAllowedList => null()
    integer(4) :: f_x = 0
    integer(4) :: f_y = 0
    integer(4) :: f_z = 0
  contains
    procedure :: jm_getX_0 => RelativeRelationship_jm_getX_0
    procedure :: jm_getY_0 => RelativeRelationship_jm_getY_0
    procedure :: jm_getZ_0 => RelativeRelationship_jm_getZ_0
    procedure :: jm_getTypesAllowedList_0 => RelativeRelationship_jm_getTypesAllowedList_0
    procedure :: jm_setTypesAllowedList_1 => RelativeRelationship_jm_setTypesAllowedList_1
  end type

  class(RelativeRelationship), pointer, save :: RelativeRelationship_jcell_NULL_RELATIVE_RELATIONSHIP => null()
  logical, save :: RelativeRelationship_jset_NULL_RELATIVE_RELATIONSHIP = .false.

contains

  function RelativeRelationship_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RelativeRelationship), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RelativeRelationship)
      jresult => object
    end select
  end function

  function RelativeRelationship_jstatic_NULL_RELATIVE_RELATIONSHIP() result(jresult)
    class(RelativeRelationship), pointer :: jresult
    class(PointFactory), pointer :: jtemp1
    class(BasicArrayListUtil), pointer :: jtemp2
    if (.not. RelativeRelationship_jset_NULL_RELATIVE_RELATIONSHIP) then
      RelativeRelationship_jset_NULL_RELATIVE_RELATIONSHIP = .true.
      jtemp1 => PointFactory_jm_getInstance_0()
    jtemp2 => BasicArrayListUtil_jm_getInstance_0()
    RelativeRelationship_jcell_NULL_RELATIVE_RELATIONSHIP => RelativeRelationship_jnew_2(jtemp1%f_ZERO_ZERO, jtemp2%jm_getImmutableInstance_0())
    end if
    jresult => RelativeRelationship_jcell_NULL_RELATIVE_RELATIONSHIP
  end function

  subroutine RelativeRelationship_jsetstatic_NULL_RELATIVE_RELATIONSHIP(jvalue)
    class(RelativeRelationship), target, optional :: jvalue
    RelativeRelationship_jset_NULL_RELATIVE_RELATIONSHIP = .true.
    if (present(jvalue)) then
      RelativeRelationship_jcell_NULL_RELATIVE_RELATIONSHIP => jvalue
    else
      RelativeRelationship_jcell_NULL_RELATIVE_RELATIONSHIP => null()
    end if
  end subroutine

  recursive function RelativeRelationship_jnew_2(j_point, j_typesAllowedList) result(this)
    class(GPoint), target, optional :: j_point
    class(BasicArrayList), target, optional :: j_typesAllowedList
    class(RelativeRelationship), pointer :: this
    allocate(this)
    this%jclass = 'RelativeRelationship'
    
    
    
    
        this%f_x = j_point%jm_getX_0()
        this%f_y = j_point%jm_getY_0()
        this%f_z = j_point%jm_getZ_0()
        this%f_typesAllowedList => j_typesAllowedList
  end function

  recursive function RelativeRelationship_jm_getX_0(this) result(jresult)
    class(RelativeRelationship), target :: this
    integer(4) :: jresult
        jresult = this%f_x
        return
  end function

  recursive function RelativeRelationship_jm_getY_0(this) result(jresult)
    class(RelativeRelationship), target :: this
    integer(4) :: jresult
        jresult = this%f_y
        return
  end function

  recursive function RelativeRelationship_jm_getZ_0(this) result(jresult)
    class(RelativeRelationship), target :: this
    integer(4) :: jresult
        jresult = this%f_z
        return
  end function

  recursive function RelativeRelationship_jm_getTypesAllowedList_0(this) result(jresult)
    class(RelativeRelationship), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_typesAllowedList
        return
  end function

  recursive subroutine RelativeRelationship_jm_setTypesAllowedList_1(this, j_typesAllowedList)
    class(RelativeRelationship), target :: this
    class(BasicArrayList), target, optional :: j_typesAllowedList
        this%f_typesAllowedList => j_typesAllowedList
  end subroutine
end module RelativeRelationship_m

