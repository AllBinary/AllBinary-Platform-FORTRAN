! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.graphics.opengles.shader
module ModelViewProjection_m
  use JR_m
  use NullUtil_m
  implicit none

  type, extends(JObject) :: ModelViewProjection
  contains
    procedure :: jm_get_0 => ModelViewProjection_jm_get_0
  end type

  class(ModelViewProjection), pointer, save :: ModelViewProjection_jcell_instance => null()
  logical, save :: ModelViewProjection_jset_instance = .false.

contains

  function ModelViewProjection_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ModelViewProjection), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ModelViewProjection)
      jresult => object
    end select
  end function

  function ModelViewProjection_jstatic_instance() result(jresult)
    class(ModelViewProjection), pointer :: jresult
    if (.not. ModelViewProjection_jset_instance) then
      ModelViewProjection_jset_instance = .true.
      ModelViewProjection_jcell_instance => ModelViewProjection_jnew_0()
    end if
    jresult => ModelViewProjection_jcell_instance
  end function

  subroutine ModelViewProjection_jsetstatic_instance(jvalue)
    class(ModelViewProjection), target, optional :: jvalue
    ModelViewProjection_jset_instance = .true.
    if (present(jvalue)) then
      ModelViewProjection_jcell_instance => jvalue
    else
      ModelViewProjection_jcell_instance => null()
    end if
  end subroutine

  function ModelViewProjection_jnew_0() result(this)
    class(ModelViewProjection), pointer :: this
    allocate(this)
    this%jclass = 'ModelViewProjection'
  end function

  recursive function ModelViewProjection_jm_getInstance_0() result(jresult)
    class(ModelViewProjection), pointer :: jresult
        jresult => ModelViewProjection_jstatic_instance()
        return
  end function

  recursive function ModelViewProjection_jm_get_0(this) result(jresult)
    class(ModelViewProjection), target :: this
    real(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult = jtemp1%f_NULL_FLOAT_ARRAY
        return
  end function
end module ModelViewProjection_m

