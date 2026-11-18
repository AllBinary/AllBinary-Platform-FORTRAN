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
! package org.allbinary.layer
module AllBinaryLayerCircularPool_m
  use JR_m
  use BaseCircularPool_m
  use CircularIndexUtil_m
  use AllBinaryLayerFactoryInterface_m
  implicit none

  type, extends(BaseCircularPool) :: AllBinaryLayerCircularPool
  contains
    procedure :: jm_initAllBinaryLayerCircularPool_2 => AllBinaryLayerCircularPool_jm_initAllBinaryLayerCircularPool_2
  end type


contains

  function AllBinaryLayerCircularPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryLayerCircularPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryLayerCircularPool)
      jresult => object
    end select
  end function

  recursive function AllBinaryLayerCircularPool_jnew_0() result(this)
    class(AllBinaryLayerCircularPool), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryLayerCircularPool'
        continue
  end function

  recursive subroutine AllBinaryLayerCircularPool_jm_initAllBinaryLayerCircularPool_2(this, j_allbinaryLayerFactoryInterface, j_total)
    class(AllBinaryLayerCircularPool), target :: this
    class(AllBinaryLayerFactoryInterface), target, optional :: j_allbinaryLayerFactoryInterface
    integer(4), value :: j_total
    integer(4) :: j_localIndex
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(j_total)
        this%f_OBJECT_ARRAY = JR_newRefArray(j_total)
        j_localIndex = 0
        do while ((j_localIndex < j_total))
            this%f_OBJECT_ARRAY((j_localIndex) + 1)%v => j_allbinaryLayerFactoryInterface%jm_getInstance_0()
            j_localIndex = j_localIndex + 1
        end do
  end subroutine
end module AllBinaryLayerCircularPool_m

function AllBinaryLayerCircularPool_jnew_0_jext() result(this)
  use AllBinaryLayerCircularPool_m, only: JObject, AllBinaryLayerCircularPool_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryLayerCircularPool_jnew_0()
end function

