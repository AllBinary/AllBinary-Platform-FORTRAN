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
! package org.allbinary.game.identification
module BasicGroupFactory_m
  use JR_m
  use NullUtil_m
  use Group_m
  implicit none

  type, extends(JObject) :: BasicGroupFactory
    character(len=:), allocatable :: f_NAME
    character(len=:), allocatable :: f_NO_SUCH_GROUP
    class(Group), pointer :: f_GOOD => null()
    class(Group), pointer :: f_ENEMY => null()
    class(Group), pointer :: f_ENEMY_ON_LEVEL => null()
    class(Group), pointer :: f_NONE => null()
    type(JRef), allocatable :: f_GOOD_ARRAY(:)
    type(JRef), allocatable :: f_ENEMY_ARRAY(:)
    type(JRef), allocatable :: f_ENEMY_ON_LEVEL_ARRAY(:)
    type(JRef), allocatable :: f_NONE_ARRAY(:)
  end type

  class(JObject), pointer, save :: BasicGroupFactory_jcell_instance => null()
  logical, save :: BasicGroupFactory_jset_instance = .false.

contains

  function BasicGroupFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicGroupFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicGroupFactory)
      jresult => object
    end select
  end function

  function BasicGroupFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. BasicGroupFactory_jset_instance) then
      BasicGroupFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    BasicGroupFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => BasicGroupFactory_jcell_instance
  end function

  subroutine BasicGroupFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    BasicGroupFactory_jset_instance = .true.
    if (present(jvalue)) then
      BasicGroupFactory_jcell_instance => jvalue
    else
      BasicGroupFactory_jcell_instance => null()
    end if
  end subroutine

  function BasicGroupFactory_jnew_0() result(this)
    class(BasicGroupFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicGroupFactory'
    this%f_NAME = ''
    this%f_NO_SUCH_GROUP = ''
    this%f_NAME = 'GROUP_NAME'
    this%f_NO_SUCH_GROUP = 'No Such Group: '
    this%f_GOOD => Group_jnew_2('Good Guys', JR_i16(0))
    this%f_ENEMY => Group_jnew_2('Bad Guys', JR_i16(1))
    this%f_ENEMY_ON_LEVEL => Group_jnew_2('Bad Guys on Level', JR_i16(2))
    this%f_NONE => Group_jnew_2('Not On A Team', JR_i16(3))
    this%f_GOOD_ARRAY = [JRef :: JRef(this%f_GOOD)]
    this%f_ENEMY_ARRAY = [JRef :: JRef(this%f_ENEMY)]
    this%f_ENEMY_ON_LEVEL_ARRAY = [JRef :: JRef(this%f_ENEMY), JRef(this%f_ENEMY_ON_LEVEL)]
    this%f_NONE_ARRAY = [JRef :: JRef(this%f_NONE)]
  end function

  recursive function BasicGroupFactory_jm_getInstance_0() result(jresult)
    class(BasicGroupFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(BasicGroupFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call BasicGroupFactory_jsetstatic_instance(BasicGroupFactory_jnew_0())
        end if
        jresult => BasicGroupFactory_jcast(BasicGroupFactory_jstatic_instance())
        return
  end function
end module BasicGroupFactory_m

