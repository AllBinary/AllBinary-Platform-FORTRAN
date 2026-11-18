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
! package org.allbinary.game.resource
module ResourceLoadingLevel_m
  use JR_m
  implicit none

  type, extends(JObject) :: ResourceLoadingLevel
    character(len=:), allocatable :: f_name
    integer(4) :: f_level = 0
  contains
    procedure :: jm_getLevel_0 => ResourceLoadingLevel_jm_getLevel_0
    procedure :: jm_getName_0 => ResourceLoadingLevel_jm_getName_0
  end type


contains

  function ResourceLoadingLevel_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResourceLoadingLevel), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResourceLoadingLevel)
      jresult => object
    end select
  end function

  recursive function ResourceLoadingLevel_jnew_2(j_name, j_level) result(this)
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_level
    class(ResourceLoadingLevel), pointer :: this
    allocate(this)
    this%jclass = 'ResourceLoadingLevel'
    this%f_name = ''
    
    
        this%f_name = j_name
        this%f_level = j_level
  end function

  recursive function ResourceLoadingLevel_jm_getLevel_0(this) result(jresult)
    class(ResourceLoadingLevel), target :: this
    integer(4) :: jresult
        jresult = this%f_level
        return
  end function

  recursive function ResourceLoadingLevel_jm_getName_0(this) result(jresult)
    class(ResourceLoadingLevel), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module ResourceLoadingLevel_m

