! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary
module PostGameCommandFactory_m
  use JR_m
  use MultiPlayerGameFeatureFactory_m
  use MyCanvas_m
  implicit none

  type, extends(JObject) :: PostGameCommandFactory
  contains
    procedure :: jm_addCommands_1 => PostGameCommandFactory_jm_addCommands_1
  end type

  class(PostGameCommandFactory), pointer, save :: PostGameCommandFactory_jcell_instance => null()
  logical, save :: PostGameCommandFactory_jset_instance = .false.

contains

  function PostGameCommandFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PostGameCommandFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PostGameCommandFactory)
      jresult => object
    end select
  end function

  function PostGameCommandFactory_jstatic_instance() result(jresult)
    class(PostGameCommandFactory), pointer :: jresult
    if (.not. PostGameCommandFactory_jset_instance) then
      PostGameCommandFactory_jset_instance = .true.
      PostGameCommandFactory_jcell_instance => PostGameCommandFactory_jnew_0()
    end if
    jresult => PostGameCommandFactory_jcell_instance
  end function

  subroutine PostGameCommandFactory_jsetstatic_instance(jvalue)
    class(PostGameCommandFactory), target, optional :: jvalue
    PostGameCommandFactory_jset_instance = .true.
    if (present(jvalue)) then
      PostGameCommandFactory_jcell_instance => jvalue
    else
      PostGameCommandFactory_jcell_instance => null()
    end if
  end subroutine

  function PostGameCommandFactory_jnew_0() result(this)
    class(PostGameCommandFactory), pointer :: this
    allocate(this)
    this%jclass = 'PostGameCommandFactory'
  end function

  recursive function PostGameCommandFactory_jm_getInstance_0() result(jresult)
    class(PostGameCommandFactory), pointer :: jresult
        jresult => PostGameCommandFactory_jstatic_instance()
        return
  end function

  recursive subroutine PostGameCommandFactory_jm_addCommands_1(this, j_canvas)
    class(PostGameCommandFactory), target :: this
    class(MyCanvas), target, optional :: j_canvas
    class(MultiPlayerGameFeatureFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => MultiPlayerGameFeatureFactory_jm_getInstance_0()
        call jtemp1%jm_addCommands_1(j_canvas)
  end subroutine
end module PostGameCommandFactory_m

