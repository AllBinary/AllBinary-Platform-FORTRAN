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
module Advertisements_m
  use JR_m
  use MyRandomFactory_m
  use LockedUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use AdvertisementProcessorInterface_m
  implicit none

  type, extends(JObject) :: Advertisements
    class(BasicArrayList), pointer :: f_bannerList => null()
    class(BasicArrayList), pointer :: f_pageList => null()
    class(MyRandomFactory), pointer :: f_myRandomFactory => null()
  contains
    procedure :: jm_addPage_1 => Advertisements_jm_addPage_1
    procedure :: jm_startRandomPage_0 => Advertisements_jm_startRandomPage_0
    procedure :: jm_processRandomPage_0 => Advertisements_jm_processRandomPage_0
    procedure :: jm_stopAllPage_0 => Advertisements_jm_stopAllPage_0
    procedure :: jm_addBanner_1 => Advertisements_jm_addBanner_1
    procedure :: jm_startAll_0 => Advertisements_jm_startAll_0
    procedure :: jm_stopAllBanner_0 => Advertisements_jm_stopAllBanner_0
    procedure :: jm_getBanner_1 => Advertisements_jm_getBanner_1
    procedure :: jm_stopAll_0 => Advertisements_jm_stopAll_0
  end type


contains

  function Advertisements_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Advertisements), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Advertisements)
      jresult => object
    end select
  end function

  function Advertisements_jnew_0() result(this)
    class(Advertisements), pointer :: this
    allocate(this)
    this%jclass = 'Advertisements'
    this%f_bannerList => BasicArrayListD_jnew_0()
    this%f_pageList => BasicArrayListD_jnew_0()
    this%f_myRandomFactory => MyRandomFactory_jm_getInstance_0()
  end function

  recursive subroutine Advertisements_jm_addPage_1(this, j_advertisementProcessorInterface)
    class(Advertisements), target :: this
    class(AdvertisementProcessorInterface), target, optional :: j_advertisementProcessorInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_pageList%jm_contains_1(j_advertisementProcessorInterface))) then
            jdiscardBoolean = this%f_pageList%jm_add_1(j_advertisementProcessorInterface)
        end if
  end subroutine

  recursive subroutine Advertisements_jm_startRandomPage_0(this)
    class(Advertisements), target :: this
    integer(4) :: j_size
    integer(4) :: j_random
    class(AdvertisementProcessorInterface), pointer :: j_advertisementProcessorInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = this%f_pageList%jm_size_0()
        if ((j_size > 0)) then
            j_random = this%f_myRandomFactory%jm_getAbsoluteNextInt_1(j_size)
            j_advertisementProcessorInterface => AdvertisementProcessorInterface_jcast(this%f_pageList%f_objectArray((j_random) + 1)%v)
            call j_advertisementProcessorInterface%jm_start_0()
        end if
  end subroutine

  recursive subroutine Advertisements_jm_processRandomPage_0(this)
    class(Advertisements), target :: this
    integer(4) :: j_size
    integer(4) :: j_random
    class(AdvertisementProcessorInterface), pointer :: j_advertisementProcessorInterface
    class(LockedUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => LockedUtil_jm_getInstance_0()
        if (jtemp1%jm_isLocked_0()) then
            j_size = this%f_pageList%jm_size_0()
            if ((j_size > 0)) then
                j_random = this%f_myRandomFactory%jm_getAbsoluteNextInt_1(j_size)
                j_advertisementProcessorInterface => AdvertisementProcessorInterface_jcast(this%f_pageList%f_objectArray((j_random) + 1)%v)
                call j_advertisementProcessorInterface%jm_process_0()
            end if
        end if
  end subroutine

  recursive subroutine Advertisements_jm_stopAllPage_0(this)
    class(Advertisements), target :: this
    class(AdvertisementProcessorInterface), pointer :: j_advertisementProcessorInterface
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = this%f_pageList%jm_size_0()
        do while ((jtemp2 >= 0))
            j_advertisementProcessorInterface => AdvertisementProcessorInterface_jcast(this%f_pageList%f_objectArray((j_index) + 1)%v)
            call j_advertisementProcessorInterface%jm_stop_0()
        end do
  end subroutine

  recursive subroutine Advertisements_jm_addBanner_1(this, j_advertisementProcessorInterface)
    class(Advertisements), target :: this
    class(AdvertisementProcessorInterface), target, optional :: j_advertisementProcessorInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_bannerList%jm_contains_1(j_advertisementProcessorInterface))) then
            jdiscardBoolean = this%f_bannerList%jm_add_1(j_advertisementProcessorInterface)
        end if
  end subroutine

  recursive subroutine Advertisements_jm_startAll_0(this)
    class(Advertisements), target :: this
    class(AdvertisementProcessorInterface), pointer :: j_advertisementProcessorInterface
    integer(4) :: j_index
    integer(4) :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp3 = j_index
        j_index = this%f_bannerList%jm_size_0()
        do while ((jtemp3 >= 0))
            j_advertisementProcessorInterface => AdvertisementProcessorInterface_jcast(this%f_bannerList%f_objectArray((j_index) + 1)%v)
            call j_advertisementProcessorInterface%jm_start_0()
        end do
  end subroutine

  recursive subroutine Advertisements_jm_stopAllBanner_0(this)
    class(Advertisements), target :: this
    class(AdvertisementProcessorInterface), pointer :: j_advertisementProcessorInterface
    integer(4) :: j_index
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = this%f_bannerList%jm_size_0()
        do while ((jtemp4 >= 0))
            j_advertisementProcessorInterface => AdvertisementProcessorInterface_jcast(this%f_bannerList%f_objectArray((j_index) + 1)%v)
            call j_advertisementProcessorInterface%jm_stop_0()
        end do
  end subroutine

  recursive function Advertisements_jm_getBanner_1(this, j_index) result(jresult)
    class(Advertisements), target :: this
    integer(4), value :: j_index
    class(AdvertisementProcessorInterface), pointer :: jresult
    class(AdvertisementProcessorInterface), pointer :: j_advertisementProcessorInterface
        j_advertisementProcessorInterface => AdvertisementProcessorInterface_jcast(this%f_bannerList%f_objectArray((j_index) + 1)%v)
        jresult => j_advertisementProcessorInterface
        return
  end function

  recursive subroutine Advertisements_jm_stopAll_0(this)
    class(Advertisements), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_stopAllBanner_0()
        call this%jm_stopAllPage_0()
  end subroutine
end module Advertisements_m

