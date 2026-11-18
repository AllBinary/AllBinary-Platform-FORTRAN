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
module RandomTranslation_m
  use JR_m
  use MyRandomFactory_m
  use BasicArrayList_m
  use BasicGraphicsPipeline_m
  implicit none

  type, extends(JObject) :: RandomTranslation
  end type


contains

  function RandomTranslation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RandomTranslation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RandomTranslation)
      jresult => object
    end select
  end function

  function RandomTranslation_jnew_0() result(this)
    class(RandomTranslation), pointer :: this
    allocate(this)
    this%jclass = 'RandomTranslation'
  end function

  recursive function RandomTranslation_jm_getInstance_2(j_vector, j_howMuch) result(jresult)
    class(BasicArrayList), target, optional :: j_vector
    integer(4), value :: j_howMuch
    class(BasicArrayList), pointer :: jresult
    class(MyRandomFactory), pointer :: j_myRandomFactory
    integer(4) :: j_x
    integer(4) :: j_y
    class(BasicGraphicsPipeline), pointer :: j_graphicsPipe
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_myRandomFactory => MyRandomFactory_jm_getInstance_0()
        j_x = (-j_myRandomFactory%jm_getNextInt_1(j_howMuch))
        j_y = j_myRandomFactory%jm_getNextInt_1(j_howMuch)
        j_graphicsPipe => BasicGraphicsPipeline_jnew_1(j_vector)
        call j_graphicsPipe%jm_createMatrix_0()
        call j_graphicsPipe%jm_translate_2(j_x, j_y)
        jresult => j_graphicsPipe%jm_getMatrix_0()
        return
  end function
end module RandomTranslation_m

