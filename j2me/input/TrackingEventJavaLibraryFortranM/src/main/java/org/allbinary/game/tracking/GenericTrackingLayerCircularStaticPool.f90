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
! package org.allbinary.game.tracking
module GenericTrackingLayerCircularStaticPool_m
  use JR_m
  use AllBinaryLayerCircularPool_m
  implicit none

  type, extends(AllBinaryLayerCircularPool) :: GenericTrackingLayerCircularStaticPool
  end type

  class(GenericTrackingLayerCircularStaticPool), pointer, save :: GenericTrackingLayerCircularStaticPool_jcell_SINGLETON => null()
  logical, save :: GenericTrackingLayerCircularStaticPool_jset_SINGLETON = .false.

contains

  function GenericTrackingLayerCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GenericTrackingLayerCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GenericTrackingLayerCircularStaticPool)
      jresult => object
    end select
  end function

  function GenericTrackingLayerCircularStaticPool_jstatic_SINGLETON() result(jresult)
    class(GenericTrackingLayerCircularStaticPool), pointer :: jresult
    if (.not. GenericTrackingLayerCircularStaticPool_jset_SINGLETON) then
      GenericTrackingLayerCircularStaticPool_jset_SINGLETON = .true.
      GenericTrackingLayerCircularStaticPool_jcell_SINGLETON => GenericTrackingLayerCircularStaticPool_jnew_0()
    end if
    jresult => GenericTrackingLayerCircularStaticPool_jcell_SINGLETON
  end function

  subroutine GenericTrackingLayerCircularStaticPool_jsetstatic_SINGLETON(jvalue)
    class(GenericTrackingLayerCircularStaticPool), target, optional :: jvalue
    GenericTrackingLayerCircularStaticPool_jset_SINGLETON = .true.
    if (present(jvalue)) then
      GenericTrackingLayerCircularStaticPool_jcell_SINGLETON => jvalue
    else
      GenericTrackingLayerCircularStaticPool_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function GenericTrackingLayerCircularStaticPool_jnew_0() result(this)
    class(GenericTrackingLayerCircularStaticPool), pointer :: this
    allocate(this)
    this%jclass = 'GenericTrackingLayerCircularStaticPool'
        continue
  end function

  recursive function GenericTrackingLayerCircularStaticPool_jm_getInstance_0() result(jresult)
    class(GenericTrackingLayerCircularStaticPool), pointer :: jresult
        jresult => GenericTrackingLayerCircularStaticPool_jstatic_SINGLETON()
        return
  end function
end module GenericTrackingLayerCircularStaticPool_m

function GenericTrackingLayerCircularStaticPool_jnew_0_jext() result(this)
  use GenericTrackingLayerCircularStaticPool_m, only: JObject, GenericTrackingLayerCircularStaticPool_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GenericTrackingLayerCircularStaticPool_jnew_0()
end function

