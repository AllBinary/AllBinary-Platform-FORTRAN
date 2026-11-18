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
! package org.allbinary.input.motion.button
module BaseTouchInput_m
  use JR_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  implicit none

  type, extends(JObject) :: BaseTouchInput
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicArrayListUtil), pointer :: f_basicArrayListUtil => null()
  contains
    procedure :: jm_getList_0 => BaseTouchInput_jm_getList_0
    procedure :: jm_toString_0 => BaseTouchInput_jm_toString_0
  end type


contains

  function BaseTouchInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseTouchInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseTouchInput)
      jresult => object
    end select
  end function

  recursive function BaseTouchInput_jnew_0() result(this)
    class(BaseTouchInput), pointer :: this
    allocate(this)
    this%jclass = 'BaseTouchInput'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_basicArrayListUtil => BasicArrayListUtil_jm_getInstance_0()
        continue
  end function

  recursive function BaseTouchInput_jm_getList_0(this) result(jresult)
    class(BaseTouchInput), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_basicArrayListUtil%jm_getImmutableInstance_0()
        return
  end function

  recursive function BaseTouchInput_jm_toString_0(this) result(jresult)
    class(BaseTouchInput), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: jtemp1
        jtemp1 = JR_className(this)
        jresult = jtemp1
        return
  end function
end module BaseTouchInput_m

