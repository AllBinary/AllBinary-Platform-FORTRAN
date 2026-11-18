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
module SensorFeature_m
  use JR_m
  use Feature_m
  implicit none

  type, extends(Feature) :: SensorFeature
  end type


contains

  function SensorFeature_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SensorFeature), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SensorFeature)
      jresult => object
    end select
  end function

  recursive function SensorFeature_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(SensorFeature), pointer :: this
    allocate(this)
    this%jclass = 'SensorFeature'
        continue ! super()
  end function
end module SensorFeature_m

function SensorFeature_jnew_1_jext(p1) result(this)
  use SensorFeature_m, only: JObject, SensorFeature_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => SensorFeature_jnew_1(p1)
end function

