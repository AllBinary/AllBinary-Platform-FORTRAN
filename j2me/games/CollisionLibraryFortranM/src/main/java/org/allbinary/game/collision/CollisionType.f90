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
! package org.allbinary.game.collision
module CollisionType_m
  use JR_m
  implicit none

  type, extends(JObject) :: CollisionType
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_toString_0 => CollisionType_jm_toString_0
  end type


contains

  function CollisionType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollisionType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollisionType)
      jresult => object
    end select
  end function

  recursive function CollisionType_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(CollisionType), pointer :: this
    allocate(this)
    this%jclass = 'CollisionType'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function CollisionType_jm_toString_0(this) result(jresult)
    class(CollisionType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module CollisionType_m

