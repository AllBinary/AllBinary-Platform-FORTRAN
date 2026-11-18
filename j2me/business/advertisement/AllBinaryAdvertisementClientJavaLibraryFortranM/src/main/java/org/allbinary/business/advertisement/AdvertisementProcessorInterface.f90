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
module AdvertisementProcessorInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: AdvertisementProcessorInterface
  contains
    procedure :: jm_process_0 => AdvertisementProcessorInterface_jm_process_0
    procedure :: jm_start_0 => AdvertisementProcessorInterface_jm_start_0
    procedure :: jm_stop_0 => AdvertisementProcessorInterface_jm_stop_0
  end type


contains

  function AdvertisementProcessorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdvertisementProcessorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdvertisementProcessorInterface)
      jresult => object
    end select
  end function

  function AdvertisementProcessorInterface_jnew_0() result(this)
    class(AdvertisementProcessorInterface), pointer :: this
    allocate(this)
    this%jclass = 'AdvertisementProcessorInterface'
  end function

  recursive subroutine AdvertisementProcessorInterface_jm_process_0(this)
    class(AdvertisementProcessorInterface), target :: this
    continue
  end subroutine

  recursive subroutine AdvertisementProcessorInterface_jm_start_0(this)
    class(AdvertisementProcessorInterface), target :: this
    continue
  end subroutine

  recursive subroutine AdvertisementProcessorInterface_jm_stop_0(this)
    class(AdvertisementProcessorInterface), target :: this
    continue
  end subroutine
end module AdvertisementProcessorInterface_m

