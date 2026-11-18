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
! package org.allbinary.game.configuration.feature
module TouchFeature_m
  use JR_m
  use Feature_m
  implicit none

  type, extends(Feature) :: TouchFeature
  end type


contains

  function TouchFeature_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchFeature), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchFeature)
      jresult => object
    end select
  end function

  recursive function TouchFeature_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(TouchFeature), pointer :: this
    allocate(this)
    this%jclass = 'TouchFeature'
        continue ! super()
  end function
end module TouchFeature_m

function TouchFeature_jnew_1_jext(p1) result(this)
  use TouchFeature_m, only: JObject, TouchFeature_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => TouchFeature_jnew_1(p1)
end function

