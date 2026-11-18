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
module InputFeature_m
  use JR_m
  use Feature_m
  implicit none

  type, extends(Feature) :: InputFeature
  end type


contains

  function InputFeature_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputFeature), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputFeature)
      jresult => object
    end select
  end function

  recursive function InputFeature_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(InputFeature), pointer :: this
    allocate(this)
    this%jclass = 'InputFeature'
        continue ! super()
  end function
end module InputFeature_m

function InputFeature_jnew_1_jext(p1) result(this)
  use InputFeature_m, only: JObject, InputFeature_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => InputFeature_jnew_1(p1)
end function

