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
! package org.allbinary.graphics.pipeline
module RandomRotationFactory_m
  use JR_m
  use MyRandomFactory_m
  use AngleFactory_m
  use BasicArrayList_m
  use BasicGraphicsPipeline_m
  implicit none

  type, extends(JObject) :: RandomRotationFactory
    class(MyRandomFactory), pointer :: f_myRandomFactory => null()
    class(AngleFactory), pointer :: f_angleFactory => null()
  contains
    procedure :: jm_getInstanceList_2 => RandomRotationFactory_jm_getInstanceList_2
    procedure :: jm_getNextRandomAngle_1 => RandomRotationFactory_jm_getNextRandomAngle_1
  end type

  class(RandomRotationFactory), pointer, save :: RandomRotationFactory_jcell_instance => null()
  logical, save :: RandomRotationFactory_jset_instance = .false.

contains

  function RandomRotationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RandomRotationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RandomRotationFactory)
      jresult => object
    end select
  end function

  function RandomRotationFactory_jstatic_instance() result(jresult)
    class(RandomRotationFactory), pointer :: jresult
    if (.not. RandomRotationFactory_jset_instance) then
      RandomRotationFactory_jset_instance = .true.
      RandomRotationFactory_jcell_instance => RandomRotationFactory_jnew_0()
    end if
    jresult => RandomRotationFactory_jcell_instance
  end function

  subroutine RandomRotationFactory_jsetstatic_instance(jvalue)
    class(RandomRotationFactory), target, optional :: jvalue
    RandomRotationFactory_jset_instance = .true.
    if (present(jvalue)) then
      RandomRotationFactory_jcell_instance => jvalue
    else
      RandomRotationFactory_jcell_instance => null()
    end if
  end subroutine

  function RandomRotationFactory_jnew_0() result(this)
    class(RandomRotationFactory), pointer :: this
    allocate(this)
    this%jclass = 'RandomRotationFactory'
    this%f_myRandomFactory => MyRandomFactory_jm_getInstance_0()
    this%f_angleFactory => AngleFactory_jm_getInstance_0()
  end function

  recursive function RandomRotationFactory_jm_getInstance_0() result(jresult)
    class(RandomRotationFactory), pointer :: jresult
        jresult => RandomRotationFactory_jstatic_instance()
        return
  end function

  recursive function RandomRotationFactory_jm_getInstanceList_2(this, j_vector, j_howMuch) result(jresult)
    class(RandomRotationFactory), target :: this
    class(BasicArrayList), target, optional :: j_vector
    integer(4), value :: j_howMuch
    class(BasicArrayList), pointer :: jresult
    class(BasicGraphicsPipeline), pointer :: j_graphicsPipe
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_graphicsPipe => BasicGraphicsPipeline_jnew_1(j_vector)
        call j_graphicsPipe%jm_createMatrix_0()
        call j_graphicsPipe%jm_rotateToAngle_1(this%f_angleFactory%jm_getAt_1(this%jm_getNextRandomAngle_1(j_howMuch)))
        jresult => j_graphicsPipe%jm_getMatrix_0()
        return
  end function

  recursive function RandomRotationFactory_jm_getNextRandomAngle_1(this, j_howMuch) result(jresult)
    class(RandomRotationFactory), target :: this
    integer(4), value :: j_howMuch
    integer(4) :: jresult
        jresult = this%f_myRandomFactory%jm_getNextInt_1((j_howMuch * 10))
        return
  end function
end module RandomRotationFactory_m

