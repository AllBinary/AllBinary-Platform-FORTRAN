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
! package org.allbinary.media.audio
module CompositeSound_m
  use JR_m
  use Sound_m
  use PlayerComposite_m
  use AllBinaryMediaManager_m
  implicit none

  type, extends(Sound) :: CompositeSound
  contains
    procedure :: jm_init_0 => CompositeSound_jm_init_0
  end type


contains

  function CompositeSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompositeSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompositeSound)
      jresult => object
    end select
  end function

  recursive function CompositeSound_jnew_1(j_resource) result(this)
    character(len=*), intent(in) :: j_resource
    class(CompositeSound), pointer :: this
    allocate(this)
    this%jclass = 'CompositeSound'
        continue ! super()
  end function

  recursive subroutine CompositeSound_jm_init_0(this)
    class(CompositeSound), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setPlayerP_1(PlayerComposite_jnew_2(AllBinaryMediaManager_jm_createPlayer_1(this%jm_getResource_0()), 570))
  end subroutine
end module CompositeSound_m

function CompositeSound_jnew_1_jext(p1) result(this)
  use CompositeSound_m, only: JObject, CompositeSound_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => CompositeSound_jnew_1(p1)
end function

