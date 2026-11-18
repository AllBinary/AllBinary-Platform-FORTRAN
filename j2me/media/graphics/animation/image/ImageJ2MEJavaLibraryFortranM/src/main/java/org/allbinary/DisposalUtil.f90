! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary
module DisposalUtil_m
  use JR_m
  use Resource_m
  implicit none

  type, extends(JObject) :: DisposalUtil
  contains
    procedure :: jm_disposeImage_1 => DisposalUtil_jm_disposeImage_1
    procedure :: jm_disposeResource_1 => DisposalUtil_jm_disposeResource_1
  end type

  class(DisposalUtil), pointer, save :: DisposalUtil_jcell_instance => null()
  logical, save :: DisposalUtil_jset_instance = .false.

contains

  function DisposalUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DisposalUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DisposalUtil)
      jresult => object
    end select
  end function

  function DisposalUtil_jstatic_instance() result(jresult)
    class(DisposalUtil), pointer :: jresult
    if (.not. DisposalUtil_jset_instance) then
      DisposalUtil_jset_instance = .true.
      DisposalUtil_jcell_instance => DisposalUtil_jnew_0()
    end if
    jresult => DisposalUtil_jcell_instance
  end function

  subroutine DisposalUtil_jsetstatic_instance(jvalue)
    class(DisposalUtil), target, optional :: jvalue
    DisposalUtil_jset_instance = .true.
    if (present(jvalue)) then
      DisposalUtil_jcell_instance => jvalue
    else
      DisposalUtil_jcell_instance => null()
    end if
  end subroutine

  function DisposalUtil_jnew_0() result(this)
    class(DisposalUtil), pointer :: this
    allocate(this)
    this%jclass = 'DisposalUtil'
  end function

  recursive function DisposalUtil_jm_getInstance_0() result(jresult)
    class(DisposalUtil), pointer :: jresult
        jresult => DisposalUtil_jstatic_instance()
        return
  end function

  recursive subroutine DisposalUtil_jm_disposeImage_1(this, j_image)
    class(DisposalUtil), target :: this
    class(Image), target, optional :: j_image
    continue
  end subroutine

  recursive subroutine DisposalUtil_jm_disposeResource_1(this, j_resource)
    class(DisposalUtil), target :: this
    class(Resource), target, optional :: j_resource
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. j_resource%jm_isDisposed_0())) then
            call j_resource%jm_dispose_0()
        end if
  end subroutine
end module DisposalUtil_m

