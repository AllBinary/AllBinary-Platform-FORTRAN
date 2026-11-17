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
! package org.allbinary.math
module AngleIncrementInfoFactory_m
  use JR_m
  use AngleIncrementInfo_m
  use AngleFactory_m
  implicit none

  type, extends(JObject) :: AngleIncrementInfoFactory
    type(JRef), allocatable :: f_angleIncrementInfo(:)
  contains
    procedure :: jm_getAt_1 => AngleIncrementInfoFactory_jm_getAt_1
  end type

  class(AngleIncrementInfoFactory), pointer, save :: AngleIncrementInfoFactory_jcell_instance => null()
  logical, save :: AngleIncrementInfoFactory_jset_instance = .false.

contains

  function AngleIncrementInfoFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AngleIncrementInfoFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AngleIncrementInfoFactory)
      jresult => object
    end select
  end function

  function AngleIncrementInfoFactory_jstatic_instance() result(jresult)
    class(AngleIncrementInfoFactory), pointer :: jresult
    if (.not. AngleIncrementInfoFactory_jset_instance) then
      AngleIncrementInfoFactory_jset_instance = .true.
      AngleIncrementInfoFactory_jcell_instance => AngleIncrementInfoFactory_jnew_0()
    end if
    jresult => AngleIncrementInfoFactory_jcell_instance
  end function

  function AngleIncrementInfoFactory_jnew_0() result(this)
    class(AngleIncrementInfoFactory), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'AngleIncrementInfoFactory'
    jtemp1 => AngleFactory_jm_getInstance_0()
    this%f_angleIncrementInfo = JR_newRefArray(jtemp1%f_TOTAL_ANGLE)
  end function

  recursive function AngleIncrementInfoFactory_jm_getInstance_0() result(jresult)
    class(AngleIncrementInfoFactory), pointer :: jresult
        jresult => AngleIncrementInfoFactory_jstatic_instance()
        return
  end function

  recursive function AngleIncrementInfoFactory_jm_getAt_1(this, j_angleIncrement) result(jresult)
    class(AngleIncrementInfoFactory), target :: this
    integer(4), value :: j_angleIncrement
    class(AngleIncrementInfo), pointer :: jresult
    integer(4) :: j_halfAngleIncrement
    class(AngleIncrementInfo), pointer :: j_angleIncrementInfo
    class(AngleIncrementInfo), pointer :: j_angleIncrementInfoCanBeNull
        j_halfAngleIncrement = (shifta(j_angleIncrement, iand(1, 31)))
        continue
        j_angleIncrementInfoCanBeNull => AngleIncrementInfo_jcast(this%f_angleIncrementInfo((j_halfAngleIncrement) + 1)%v)
        if ((.not. associated(j_angleIncrementInfoCanBeNull))) then
            j_angleIncrementInfo => AngleIncrementInfo_jnew_1(j_angleIncrement)
            this%f_angleIncrementInfo((j_halfAngleIncrement) + 1)%v => j_angleIncrementInfo
            jresult => j_angleIncrementInfo
            return
        else
            j_angleIncrementInfo => j_angleIncrementInfoCanBeNull
        end if
        jresult => j_angleIncrementInfo
        return
  end function
end module AngleIncrementInfoFactory_m

