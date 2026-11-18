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
module Feature_m
  use JR_m
  use ChangedGameFeatureListener_m
  use StdUtil_m
  use ABHashtable_m
  implicit none

  type, extends(JObject) :: Feature
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_toString_0 => Feature_jm_toString_0
    procedure :: jm_getName_0 => Feature_jm_getName_0
  end type

  class(ABHashtable), pointer, save :: Feature_jcell_hashtable => null()
  logical, save :: Feature_jset_hashtable = .false.

contains

  function Feature_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Feature), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Feature)
      jresult => object
    end select
  end function

  function Feature_jstatic_hashtable() result(jresult)
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp1
    if (.not. Feature_jset_hashtable) then
      Feature_jset_hashtable = .true.
      jtemp1 => StdUtil_jm_getInstance_0()
    Feature_jcell_hashtable => jtemp1%jm_createHashtable_0()
    end if
    jresult => Feature_jcell_hashtable
  end function

  subroutine Feature_jsetstatic_hashtable(jvalue)
    class(ABHashtable), target, optional :: jvalue
    Feature_jset_hashtable = .true.
    if (present(jvalue)) then
      Feature_jcell_hashtable => jvalue
    else
      Feature_jcell_hashtable => null()
    end if
  end subroutine

  recursive function Feature_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(Feature), pointer :: this
    class(ChangedGameFeatureListener), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'Feature'
    this%f_name = ''
    
        this%f_name = j_name
        call Feature_jm_add_2(j_name, this)
        jtemp2 => ChangedGameFeatureListener_jm_getInstance_0()
        call jtemp2%jm_add_1(this)
  end function

  recursive function Feature_jm_getInstance_1(j_name) result(jresult)
    character(len=*), intent(in) :: j_name
    class(Feature), pointer :: jresult
        associate (jstaticref1 => Feature_jstatic_hashtable())
        jresult => Feature_jcast(jstaticref1%jm_get_1(j_name))
        end associate
        return
  end function

  recursive subroutine Feature_jm_add_2(j_name, j_gameFeature)
    character(len=*), intent(in) :: j_name
    class(Feature), target, optional :: j_gameFeature
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref2 => Feature_jstatic_hashtable())
        jdiscardRef => jstaticref2%jm_put_2(j_name, j_gameFeature)
        end associate
  end subroutine

  recursive function Feature_jm_toString_0(this) result(jresult)
    class(Feature), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%jm_getName_0()
        return
  end function

  recursive function Feature_jm_getName_0(this) result(jresult)
    class(Feature), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module Feature_m

