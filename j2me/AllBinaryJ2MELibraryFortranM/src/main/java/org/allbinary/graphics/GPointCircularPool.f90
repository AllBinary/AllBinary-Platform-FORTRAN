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
module GPointCircularPool_m
  use JR_m
  use BaseCircularPool_m
  use CircularIndexUtil_m
  use CustomGPoint_m
  implicit none

  type, extends(BaseCircularPool) :: GPointCircularPool
  end type


contains

  function GPointCircularPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GPointCircularPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GPointCircularPool)
      jresult => object
    end select
  end function

  recursive function GPointCircularPool_jnew_1(j_size) result(this)
    integer(4), value :: j_size
    class(GPointCircularPool), pointer :: this
    integer(4) :: j_index
    allocate(this)
    this%jclass = 'GPointCircularPool'
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(j_size)
        this%f_OBJECT_ARRAY = JR_newRefArray(j_size)
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            this%f_OBJECT_ARRAY((j_index) + 1)%v => CustomGPoint_jm_getInstance3_2(0, 0)
            j_index = j_index - 1
        end do
  end function
end module GPointCircularPool_m

function GPointCircularPool_jnew_1_jext(p1) result(this)
  use GPointCircularPool_m, only: JObject, GPointCircularPool_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => GPointCircularPool_jnew_1(p1)
end function

