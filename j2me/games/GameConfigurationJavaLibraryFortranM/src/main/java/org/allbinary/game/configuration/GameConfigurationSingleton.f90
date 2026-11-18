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
! package org.allbinary.game.configuration
module GameConfigurationSingleton_m
  use JR_m
  use StdUtil_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use GameConfiguration_m
  implicit none

  type, extends(JObject) :: GameConfigurationSingleton
    class(BasicArrayList), pointer :: f_list => null()
    class(ABHashtable), pointer :: f_hashtable => null()
  contains
    procedure :: jm_getInstanceByName_1 => GameConfigurationSingleton_jm_getInstanceByName_1
    procedure :: jm_getOptionsBasicArrayList_0 => GameConfigurationSingleton_jm_getOptionsBasicArrayList_0
    procedure :: jm_add_1 => GameConfigurationSingleton_jm_add_1
    procedure :: jm_getHashtable_0 => GameConfigurationSingleton_jm_getHashtable_0
  end type

  class(GameConfigurationSingleton), pointer, save :: GameConfigurationSingleton_jcell_SINGLETON => null()
  logical, save :: GameConfigurationSingleton_jset_SINGLETON = .false.

contains

  function GameConfigurationSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameConfigurationSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameConfigurationSingleton)
      jresult => object
    end select
  end function

  function GameConfigurationSingleton_jstatic_SINGLETON() result(jresult)
    class(GameConfigurationSingleton), pointer :: jresult
    if (.not. GameConfigurationSingleton_jset_SINGLETON) then
      GameConfigurationSingleton_jset_SINGLETON = .true.
      GameConfigurationSingleton_jcell_SINGLETON => GameConfigurationSingleton_jnew_0()
    end if
    jresult => GameConfigurationSingleton_jcell_SINGLETON
  end function

  subroutine GameConfigurationSingleton_jsetstatic_SINGLETON(jvalue)
    class(GameConfigurationSingleton), target, optional :: jvalue
    GameConfigurationSingleton_jset_SINGLETON = .true.
    if (present(jvalue)) then
      GameConfigurationSingleton_jcell_SINGLETON => jvalue
    else
      GameConfigurationSingleton_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function GameConfigurationSingleton_jnew_0() result(this)
    class(GameConfigurationSingleton), pointer :: this
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GameConfigurationSingleton'
    
    
        this%f_list => BasicArrayListD_jnew_0()
        jtemp1 => StdUtil_jm_getInstance_0()
        this%f_hashtable => jtemp1%jm_createHashtable_0()
  end function

  recursive function GameConfigurationSingleton_jm_getInstance_0() result(jresult)
    class(GameConfigurationSingleton), pointer :: jresult
        jresult => GameConfigurationSingleton_jstatic_SINGLETON()
        return
  end function

  recursive function GameConfigurationSingleton_jm_getInstanceByName_1(this, j_name) result(jresult)
    class(GameConfigurationSingleton), target :: this
    character(len=*), intent(in) :: j_name
    class(GameConfiguration), pointer :: jresult
        jresult => GameConfiguration_jcast(this%f_hashtable%jm_get_1(j_name))
        return
  end function

  recursive function GameConfigurationSingleton_jm_getOptionsBasicArrayList_0(this) result(jresult)
    class(GameConfigurationSingleton), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function

  recursive subroutine GameConfigurationSingleton_jm_add_1(this, j_gameConfiguration)
    class(GameConfigurationSingleton), target :: this
    class(GameConfiguration), target, optional :: j_gameConfiguration
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_gameConfiguration)
  end subroutine

  recursive function GameConfigurationSingleton_jm_getHashtable_0(this) result(jresult)
    class(GameConfigurationSingleton), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_hashtable
        return
  end function
end module GameConfigurationSingleton_m

