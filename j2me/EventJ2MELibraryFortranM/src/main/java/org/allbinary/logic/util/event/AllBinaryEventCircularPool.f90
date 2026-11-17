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
! package org.allbinary.logic.util.event
module AllBinaryEventCircularPool_m
  use JR_m
  use BaseCircularPool_m
  use CircularIndexUtil_m
  use AllBinaryEventObjectFactoryInterface_m
  implicit none

  type, extends(BaseCircularPool) :: AllBinaryEventCircularPool
  contains
    procedure :: jm_initAllBinaryEventCircularPool_1 => AllBinaryEventCircularPool_jm_initAllBinaryEventCircularPool_1
  end type


contains

  function AllBinaryEventCircularPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryEventCircularPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryEventCircularPool)
      jresult => object
    end select
  end function

  recursive function AllBinaryEventCircularPool_jnew_1(j_max) result(this)
    integer(4), value :: j_max
    class(AllBinaryEventCircularPool), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryEventCircularPool'
        this%f_OBJECT_ARRAY = JR_newRefArray(j_max)
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(j_max)
  end function

  recursive subroutine AllBinaryEventCircularPool_jm_initAllBinaryEventCircularPool_1(this, j_allBinaryEventObjectFactoryInterface)
    class(AllBinaryEventCircularPool), target :: this
    class(AllBinaryEventObjectFactoryInterface), target, optional :: j_allBinaryEventObjectFactoryInterface
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_circularIndexUtil%jm_setIndex_1(0)
        j_size = this%f_circularIndexUtil%jm_getSize_0()
        j_index = 0
        do while ((j_index < j_size))
            this%f_OBJECT_ARRAY((j_index) + 1)%v => j_allBinaryEventObjectFactoryInterface%jm_getInstance_0()
            j_index = j_index + 1
        end do
  end subroutine
end module AllBinaryEventCircularPool_m

function AllBinaryEventCircularPool_jnew_1_jext(p1) result(this)
  use AllBinaryEventCircularPool_m, only: JObject, AllBinaryEventCircularPool_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => AllBinaryEventCircularPool_jnew_1(p1)
end function

