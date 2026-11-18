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
! package org.allbinary.game.resource
module ResourceLoadingLevelFactory_m
  use JR_m
  use Integer_m
  use ResourceLoadingLevel_m
  implicit none

  type, extends(JObject) :: ResourceLoadingLevelFactory
    class(ResourceLoadingLevel), pointer :: f_LOAD_EARLY => null()
    class(ResourceLoadingLevel), pointer :: f_LOAD_TOUCH => null()
    class(ResourceLoadingLevel), pointer :: f_LOAD_GAME => null()
    class(ResourceLoadingLevel), pointer :: f_LEVEL => null()
    class(ResourceLoadingLevel), pointer :: f_MAX_LEVEL => null()
    class(ResourceLoadingLevel), pointer :: f_LOAD_ALL => null()
    type(JRef), allocatable :: f_RESOURCE_LOADING_LEVEL_ARRAY(:)
  contains
    procedure :: jm_getLevelString_1 => ResourceLoadingLevelFactory_jm_getLevelString_1
  end type

  class(ResourceLoadingLevelFactory), pointer, save :: ResourceLoadingLevelFactory_jcell_instance => null()
  logical, save :: ResourceLoadingLevelFactory_jset_instance = .false.

contains

  function ResourceLoadingLevelFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResourceLoadingLevelFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResourceLoadingLevelFactory)
      jresult => object
    end select
  end function

  function ResourceLoadingLevelFactory_jstatic_instance() result(jresult)
    class(ResourceLoadingLevelFactory), pointer :: jresult
    if (.not. ResourceLoadingLevelFactory_jset_instance) then
      ResourceLoadingLevelFactory_jset_instance = .true.
      ResourceLoadingLevelFactory_jcell_instance => ResourceLoadingLevelFactory_jnew_0()
    end if
    jresult => ResourceLoadingLevelFactory_jcell_instance
  end function

  subroutine ResourceLoadingLevelFactory_jsetstatic_instance(jvalue)
    class(ResourceLoadingLevelFactory), target, optional :: jvalue
    ResourceLoadingLevelFactory_jset_instance = .true.
    if (present(jvalue)) then
      ResourceLoadingLevelFactory_jcell_instance => jvalue
    else
      ResourceLoadingLevelFactory_jcell_instance => null()
    end if
  end subroutine

  function ResourceLoadingLevelFactory_jnew_0() result(this)
    class(ResourceLoadingLevelFactory), pointer :: this
    allocate(this)
    this%jclass = 'ResourceLoadingLevelFactory'
    this%f_LOAD_EARLY => ResourceLoadingLevel_jnew_2('Load Early', Integer_jstatic_MAX_VALUE())
    this%f_LOAD_TOUCH => ResourceLoadingLevel_jnew_2('Load Touch', (Integer_jstatic_MAX_VALUE() - 1))
    this%f_LOAD_GAME => ResourceLoadingLevel_jnew_2('Load Game', (Integer_jstatic_MAX_VALUE() - 2))
    this%f_LEVEL => ResourceLoadingLevel_jnew_2('Level', (Integer_jstatic_MAX_VALUE() - 99))
    this%f_MAX_LEVEL => ResourceLoadingLevel_jnew_2('Max Level', (Integer_jstatic_MAX_VALUE() - 100))
    this%f_LOAD_ALL => ResourceLoadingLevel_jnew_2('Load All', (-1))
    this%f_RESOURCE_LOADING_LEVEL_ARRAY = [JRef :: JRef(this%f_LOAD_ALL), JRef(this%f_MAX_LEVEL), JRef(this%f_LEVEL), JRef(this%f_LOAD_GAME), JRef(this%f_LOAD_TOUCH), JRef(this%f_LOAD_EARLY)]
  end function

  recursive function ResourceLoadingLevelFactory_jm_getInstance_0() result(jresult)
    class(ResourceLoadingLevelFactory), pointer :: jresult
        jresult => ResourceLoadingLevelFactory_jstatic_instance()
        return
  end function

  recursive function ResourceLoadingLevelFactory_jm_getLevelString_1(this, j_level) result(jresult)
    class(ResourceLoadingLevelFactory), target :: this
    integer(4), value :: j_level
    character(len=:), allocatable :: jresult
    integer(4) :: j_index
        j_index = 0
        do while ((j_index < size(this%f_RESOURCE_LOADING_LEVEL_ARRAY, 1)))
            associate (jstaticref1 => ResourceLoadingLevel_jcast(this%f_RESOURCE_LOADING_LEVEL_ARRAY((j_index) + 1)%v))
            if ((j_level == jstaticref1%jm_getLevel_0())) then
                associate (jstaticref2 => ResourceLoadingLevel_jcast(this%f_RESOURCE_LOADING_LEVEL_ARRAY((j_index) + 1)%v))
                jresult = jstaticref2%jm_getName_0()
                end associate
                return
            end if
            end associate
            j_index = j_index + 1
        end do
        jresult = JR_intString(j_level)
        return
  end function
end module ResourceLoadingLevelFactory_m

