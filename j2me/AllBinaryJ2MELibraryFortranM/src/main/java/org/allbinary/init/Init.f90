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
! package org.allbinary.init
module Init_m
  use JR_m
  use CommonStrings_m
  use InitInterface_m
  implicit none

  type, extends(InitInterface) :: Init
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_init_0 => Init_jm_init_0
  end type


contains

  function Init_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Init), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Init)
      jresult => object
    end select
  end function

  function Init_jnew_0() result(this)
    class(Init), pointer :: this
    allocate(this)
    this%jclass = 'Init'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
  end function

  recursive subroutine Init_jm_init_0(this)
    class(Init), target :: this
    continue
  end subroutine
end module Init_m

