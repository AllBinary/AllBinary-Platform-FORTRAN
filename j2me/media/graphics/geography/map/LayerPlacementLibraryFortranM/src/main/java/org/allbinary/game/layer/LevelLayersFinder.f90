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
! package org.allbinary.game.layer
module LevelLayersFinder_m
  use JR_m
  use Enumeration_m
  use ABLayer_m
  use SmallIntegerSingletonFactory_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use EnumerationUtil_m
  use Integer_m
  implicit none

  type, extends(JObject) :: LevelLayersFinder
    class(EnumerationUtil), pointer :: f_enumerationUtil => null()
  contains
    procedure :: jm_get_1 => LevelLayersFinder_jm_get_1
  end type

  class(LevelLayersFinder), pointer, save :: LevelLayersFinder_jcell_instance => null()
  logical, save :: LevelLayersFinder_jset_instance = .false.

contains

  function LevelLayersFinder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LevelLayersFinder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LevelLayersFinder)
      jresult => object
    end select
  end function

  function LevelLayersFinder_jstatic_instance() result(jresult)
    class(LevelLayersFinder), pointer :: jresult
    if (.not. LevelLayersFinder_jset_instance) then
      LevelLayersFinder_jset_instance = .true.
      LevelLayersFinder_jcell_instance => LevelLayersFinder_jnew_0()
    end if
    jresult => LevelLayersFinder_jcell_instance
  end function

  subroutine LevelLayersFinder_jsetstatic_instance(jvalue)
    class(LevelLayersFinder), target, optional :: jvalue
    LevelLayersFinder_jset_instance = .true.
    if (present(jvalue)) then
      LevelLayersFinder_jcell_instance => jvalue
    else
      LevelLayersFinder_jcell_instance => null()
    end if
  end subroutine

  function LevelLayersFinder_jnew_0() result(this)
    class(LevelLayersFinder), pointer :: this
    allocate(this)
    this%jclass = 'LevelLayersFinder'
    this%f_enumerationUtil => EnumerationUtil_jm_getInstance_0()
  end function

  recursive function LevelLayersFinder_jm_getInstance_0() result(jresult)
    class(LevelLayersFinder), pointer :: jresult
        jresult => LevelLayersFinder_jstatic_instance()
        return
  end function

  recursive function LevelLayersFinder_jm_get_1(this, j_hashtable) result(jresult)
    class(LevelLayersFinder), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(BasicArrayList), pointer :: jresult
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    class(BasicArrayList), pointer :: j_list
    class(Enumeration), pointer :: j_enumeration
    class(ABHashtable), pointer :: j_layerHashtableCanBeNull
    integer(4) :: j_integerCanBeNull
    integer(4) :: j_cachedIntegerCanBeNull
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        j_list => BasicArrayListD_jnew_0()
        j_enumeration => j_hashtable%jm_keys_0()
        continue
        continue
        continue
        do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
            j_layerHashtableCanBeNull => ABHashtable_jcast(j_hashtable%jm_get_1(this%f_enumerationUtil%jm_nextElement_1(j_enumeration)))
            j_integerCanBeNull = JR_unboxInt(j_layerHashtableCanBeNull%jm_get_1(ABLayer_jstatic_ID()))
            j_cachedIntegerCanBeNull = j_smallIntegerSingletonFactory%jm_getAt_1(int(j_integerCanBeNull, 4))
            if ((.not. j_list%jm_contains_1(j_cachedIntegerCanBeNull))) then
                jdiscardBoolean = j_list%jm_add_1(j_cachedIntegerCanBeNull)
            end if
        end do
        jresult => j_list
        return
  end function
end module LevelLayersFinder_m

