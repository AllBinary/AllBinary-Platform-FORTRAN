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
! package org.allbinary.game.ag.layer.pickup.points
module PointsResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: PointsResources
    character(len=:), allocatable :: f_RESOURCE
    character(len=:), allocatable :: f_RESOURCE_2
    character(len=:), allocatable :: f_RESOURCE_3
    character(len=:), allocatable :: f_RESOURCE_4
  end type

  class(PointsResources), pointer, save :: PointsResources_jcell_SINGLETON => null()
  logical, save :: PointsResources_jset_SINGLETON = .false.

contains

  function PointsResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PointsResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PointsResources)
      jresult => object
    end select
  end function

  function PointsResources_jstatic_SINGLETON() result(jresult)
    class(PointsResources), pointer :: jresult
    if (.not. PointsResources_jset_SINGLETON) then
      PointsResources_jset_SINGLETON = .true.
      PointsResources_jcell_SINGLETON => PointsResources_jnew_0()
    end if
    jresult => PointsResources_jcell_SINGLETON
  end function

  subroutine PointsResources_jsetstatic_SINGLETON(jvalue)
    class(PointsResources), target, optional :: jvalue
    PointsResources_jset_SINGLETON = .true.
    if (present(jvalue)) then
      PointsResources_jcell_SINGLETON => jvalue
    else
      PointsResources_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function PointsResources_jnew_0() result(this)
    class(PointsResources), pointer :: this
    allocate(this)
    this%jclass = 'PointsResources'
    this%f_RESOURCE = ''
    this%f_RESOURCE_2 = ''
    this%f_RESOURCE_3 = ''
    this%f_RESOURCE_4 = ''
    this%f_RESOURCE = 'points_drop_20_by_20.png'
    this%f_RESOURCE_2 = 'points_2_drop_20_by_20.png'
    this%f_RESOURCE_3 = 'points_3_drop_20_by_20.png'
    this%f_RESOURCE_4 = 'points_4_drop_20_by_20.png'
        continue
  end function

  recursive function PointsResources_jm_getInstance_0() result(jresult)
    class(PointsResources), pointer :: jresult
        jresult => PointsResources_jstatic_SINGLETON()
        return
  end function
end module PointsResources_m

