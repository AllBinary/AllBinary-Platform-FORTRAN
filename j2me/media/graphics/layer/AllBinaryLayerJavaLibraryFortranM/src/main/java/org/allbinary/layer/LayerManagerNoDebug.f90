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
module LayerManagerNoDebug_m
  use JR_m
  use LayerManagerLoggingBase_m
  implicit none

  type, extends(LayerManagerLoggingBase) :: LayerManagerNoDebug
  end type

  class(LayerManagerNoDebug), pointer, save :: LayerManagerNoDebug_jcell_instance => null()
  logical, save :: LayerManagerNoDebug_jset_instance = .false.

contains

  function LayerManagerNoDebug_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerManagerNoDebug), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerManagerNoDebug)
      jresult => object
    end select
  end function

  function LayerManagerNoDebug_jstatic_instance() result(jresult)
    class(LayerManagerNoDebug), pointer :: jresult
    if (.not. LayerManagerNoDebug_jset_instance) then
      LayerManagerNoDebug_jset_instance = .true.
      LayerManagerNoDebug_jcell_instance => LayerManagerNoDebug_jnew_0()
    end if
    jresult => LayerManagerNoDebug_jcell_instance
  end function

  subroutine LayerManagerNoDebug_jsetstatic_instance(jvalue)
    class(LayerManagerNoDebug), target, optional :: jvalue
    LayerManagerNoDebug_jset_instance = .true.
    if (present(jvalue)) then
      LayerManagerNoDebug_jcell_instance => jvalue
    else
      LayerManagerNoDebug_jcell_instance => null()
    end if
  end subroutine

  function LayerManagerNoDebug_jnew_0() result(this)
    class(LayerManagerNoDebug), pointer :: this
    allocate(this)
    this%jclass = 'LayerManagerNoDebug'
  end function

  recursive function LayerManagerNoDebug_jm_getInstance_0() result(jresult)
    class(LayerManagerNoDebug), pointer :: jresult
        jresult => LayerManagerNoDebug_jstatic_instance()
        return
  end function
end module LayerManagerNoDebug_m

function LayerManagerNoDebug_jnew_0_jext() result(this)
  use LayerManagerNoDebug_m, only: JObject, LayerManagerNoDebug_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LayerManagerNoDebug_jnew_0()
end function

