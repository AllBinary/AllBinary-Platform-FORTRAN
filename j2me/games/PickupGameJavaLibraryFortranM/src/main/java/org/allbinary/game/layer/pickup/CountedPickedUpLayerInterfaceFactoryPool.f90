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
! package org.allbinary.game.layer.pickup
module CountedPickedUpLayerInterfaceFactoryPool_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: CountedPickedUpLayerInterfaceFactoryPool
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_getList_0 => CountedPickedUpLayerInterfaceFactoryPool_jm_getList_0
  end type

  class(CountedPickedUpLayerInterfaceFactoryPool), pointer, save :: CountedPickedUpLayerInterfaceFactoryPool_jcell_SINGLETON => null()
  logical, save :: CountedPickedUpLayerInterfaceFactoryPool_jset_SINGLETON = .false.

contains

  function CountedPickedUpLayerInterfaceFactoryPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CountedPickedUpLayerInterfaceFactoryPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CountedPickedUpLayerInterfaceFactoryPool)
      jresult => object
    end select
  end function

  function CountedPickedUpLayerInterfaceFactoryPool_jstatic_SINGLETON() result(jresult)
    class(CountedPickedUpLayerInterfaceFactoryPool), pointer :: jresult
    if (.not. CountedPickedUpLayerInterfaceFactoryPool_jset_SINGLETON) then
      CountedPickedUpLayerInterfaceFactoryPool_jset_SINGLETON = .true.
      CountedPickedUpLayerInterfaceFactoryPool_jcell_SINGLETON => CountedPickedUpLayerInterfaceFactoryPool_jnew_0()
    end if
    jresult => CountedPickedUpLayerInterfaceFactoryPool_jcell_SINGLETON
  end function

  subroutine CountedPickedUpLayerInterfaceFactoryPool_jsetstatic_SINGLETON(jvalue)
    class(CountedPickedUpLayerInterfaceFactoryPool), target, optional :: jvalue
    CountedPickedUpLayerInterfaceFactoryPool_jset_SINGLETON = .true.
    if (present(jvalue)) then
      CountedPickedUpLayerInterfaceFactoryPool_jcell_SINGLETON => jvalue
    else
      CountedPickedUpLayerInterfaceFactoryPool_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function CountedPickedUpLayerInterfaceFactoryPool_jnew_0() result(this)
    class(CountedPickedUpLayerInterfaceFactoryPool), pointer :: this
    allocate(this)
    this%jclass = 'CountedPickedUpLayerInterfaceFactoryPool'
    
        this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive function CountedPickedUpLayerInterfaceFactoryPool_jm_getList_0(this) result(jresult)
    class(CountedPickedUpLayerInterfaceFactoryPool), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function

  recursive function CountedPickedUpLayerInterfaceFactoryPool_jm_getInstance_0() result(jresult)
    class(CountedPickedUpLayerInterfaceFactoryPool), pointer :: jresult
        jresult => CountedPickedUpLayerInterfaceFactoryPool_jstatic_SINGLETON()
        return
  end function

  recursive subroutine CountedPickedUpLayerInterfaceFactoryPool_jm_init_0()
        call CountedPickedUpLayerInterfaceFactoryPool_jsetstatic_SINGLETON(CountedPickedUpLayerInterfaceFactoryPool_jnew_0())
  end subroutine
end module CountedPickedUpLayerInterfaceFactoryPool_m

