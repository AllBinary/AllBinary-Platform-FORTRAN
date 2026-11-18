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
! package org.allbinary.business.advertisement
module AdConfiguration_m
  use JR_m
  use Direction_m
  use GameState_m
  implicit none

  type, extends(JObject) :: AdConfiguration
    character(len=:), allocatable :: f_INNERACTIVE
    character(len=:), allocatable :: f_LEADBOLT
    character(len=:), allocatable :: f_ADMOB
  contains
    procedure :: jm_getValidAdSpots_0 => AdConfiguration_jm_getValidAdSpots_0
    procedure :: jm_process_1 => AdConfiguration_jm_process_1
    procedure :: jm_processDemo_1 => AdConfiguration_jm_processDemo_1
    procedure :: jm_setShowAds_0 => AdConfiguration_jm_setShowAds_0
    procedure :: jm_setToggleAds_1 => AdConfiguration_jm_setToggleAds_1
    procedure :: jm_isShowAds_0 => AdConfiguration_jm_isShowAds_0
  end type


contains

  function AdConfiguration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdConfiguration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdConfiguration)
      jresult => object
    end select
  end function

  recursive function AdConfiguration_jnew_1(j_advertIdArray) result(this)
    type(JRef) :: j_advertIdArray(:)
    class(AdConfiguration), pointer :: this
    allocate(this)
    this%jclass = 'AdConfiguration'
    this%f_INNERACTIVE = ''
    this%f_LEADBOLT = ''
    this%f_ADMOB = ''
    
    
    
        this%f_INNERACTIVE = j_advertIdArray((0) + 1)%v
        this%f_ADMOB = j_advertIdArray((1) + 1)%v
        this%f_LEADBOLT = j_advertIdArray((2) + 1)%v
  end function

  recursive function AdConfiguration_jm_getValidAdSpots_0(this) result(jresult)
    class(AdConfiguration), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = JR_newRefArray(0)
        return
  end function

  recursive subroutine AdConfiguration_jm_process_1(this, j_gameState)
    class(AdConfiguration), target :: this
    class(GameState), target, optional :: j_gameState
    continue
  end subroutine

  recursive subroutine AdConfiguration_jm_processDemo_1(this, j_state)
    class(AdConfiguration), target :: this
    integer(4), value :: j_state
    continue
  end subroutine

  recursive subroutine AdConfiguration_jm_setShowAds_0(this)
    class(AdConfiguration), target :: this
    continue
  end subroutine

  recursive subroutine AdConfiguration_jm_setToggleAds_1(this, j_showAds)
    class(AdConfiguration), target :: this
    logical, value :: j_showAds
    continue
  end subroutine

  recursive function AdConfiguration_jm_isShowAds_0(this) result(jresult)
    class(AdConfiguration), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function
end module AdConfiguration_m

