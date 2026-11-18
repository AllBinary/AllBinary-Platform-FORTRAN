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
! package org.allbinary.game.gd.resource
module GDResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: GDResources
    type(JString), allocatable :: f_resourceStringArray(:)
    integer(4) :: f_currentLayoutRequiredTotal = 0
  end type

  class(GDResources), pointer, save :: GDResources_jcell_instance => null()
  logical, save :: GDResources_jset_instance = .false.

contains

  function GDResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GDResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GDResources)
      jresult => object
    end select
  end function

  function GDResources_jstatic_instance() result(jresult)
    class(GDResources), pointer :: jresult
    if (.not. GDResources_jset_instance) then
      GDResources_jset_instance = .true.
      GDResources_jcell_instance => GDResources_jnew_0()
    end if
    jresult => GDResources_jcell_instance
  end function

  subroutine GDResources_jsetstatic_instance(jvalue)
    class(GDResources), target, optional :: jvalue
    GDResources_jset_instance = .true.
    if (present(jvalue)) then
      GDResources_jcell_instance => jvalue
    else
      GDResources_jcell_instance => null()
    end if
  end subroutine

  function GDResources_jnew_0() result(this)
    class(GDResources), pointer :: this
    allocate(this)
    this%jclass = 'GDResources'
    this%f_resourceStringArray = [JString :: ]
    
  end function

  recursive function GDResources_jm_getInstance_0() result(jresult)
    class(GDResources), pointer :: jresult
        jresult => GDResources_jstatic_instance()
        return
  end function
end module GDResources_m

