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
module BasicColorArrayIndexer_m
  use JR_m
  use CircularIndexUtil_m
  use BasicColor_m
  implicit none

  type, extends(JObject) :: BasicColorArrayIndexer
    type(JRef), allocatable :: f_basicColorArray(:)
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
  contains
    procedure :: jm_next_0 => BasicColorArrayIndexer_jm_next_0
    procedure :: jm_get_0 => BasicColorArrayIndexer_jm_get_0
    procedure :: jm_getBasicColorArray_0 => BasicColorArrayIndexer_jm_getBasicColorArray_0
  end type


contains

  function BasicColorArrayIndexer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColorArrayIndexer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColorArrayIndexer)
      jresult => object
    end select
  end function

  recursive function BasicColorArrayIndexer_jnew_1(j_basicColorArray) result(this)
    type(JRef) :: j_basicColorArray(:)
    class(BasicColorArrayIndexer), pointer :: this
    allocate(this)
    this%jclass = 'BasicColorArrayIndexer'
    
    
        this%f_basicColorArray = j_basicColorArray
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(size(this%f_basicColorArray, 1))
  end function

  recursive subroutine BasicColorArrayIndexer_jm_next_0(this)
    class(BasicColorArrayIndexer), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive function BasicColorArrayIndexer_jm_get_0(this) result(jresult)
    class(BasicColorArrayIndexer), target :: this
    class(BasicColor), pointer :: jresult
        jresult => BasicColor_jcast(this%f_basicColorArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v)
        return
  end function

  recursive function BasicColorArrayIndexer_jm_getBasicColorArray_0(this) result(jresult)
    class(BasicColorArrayIndexer), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_basicColorArray
        return
  end function
end module BasicColorArrayIndexer_m

