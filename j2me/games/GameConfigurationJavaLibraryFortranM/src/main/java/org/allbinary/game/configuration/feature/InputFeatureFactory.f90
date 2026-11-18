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
module InputFeatureFactory_m
  use JR_m
  use InputFeature_m
  use Features_m
  implicit none

  type, extends(JObject) :: InputFeatureFactory
    class(InputFeature), pointer :: f_REMOVE_DUPLICATE_KEY_PRESSES => null()
    class(InputFeature), pointer :: f_INPUT_MAPPING => null()
    class(InputFeature), pointer :: f_MULTI_KEY_PRESS => null()
    class(InputFeature), pointer :: f_SINGLE_KEY_REPEAT_PRESS => null()
    class(InputFeature), pointer :: f_SINGLE_KEY_PRESS => null()
  contains
    procedure :: jm_isSingleKeyProcessing_0 => InputFeatureFactory_jm_isSingleKeyProcessing_0
  end type

  class(InputFeatureFactory), pointer, save :: InputFeatureFactory_jcell_instance => null()
  logical, save :: InputFeatureFactory_jset_instance = .false.

contains

  function InputFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputFeatureFactory)
      jresult => object
    end select
  end function

  function InputFeatureFactory_jstatic_instance() result(jresult)
    class(InputFeatureFactory), pointer :: jresult
    if (.not. InputFeatureFactory_jset_instance) then
      InputFeatureFactory_jset_instance = .true.
      InputFeatureFactory_jcell_instance => InputFeatureFactory_jnew_0()
    end if
    jresult => InputFeatureFactory_jcell_instance
  end function

  subroutine InputFeatureFactory_jsetstatic_instance(jvalue)
    class(InputFeatureFactory), target, optional :: jvalue
    InputFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      InputFeatureFactory_jcell_instance => jvalue
    else
      InputFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function InputFeatureFactory_jnew_0() result(this)
    class(InputFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'InputFeatureFactory'
    this%f_REMOVE_DUPLICATE_KEY_PRESSES => InputFeature_jnew_1('Remove Duplicate Key Presses')
    this%f_INPUT_MAPPING => InputFeature_jnew_1('Input Mapping')
    this%f_MULTI_KEY_PRESS => InputFeature_jnew_1('Multi Key Press')
    this%f_SINGLE_KEY_REPEAT_PRESS => InputFeature_jnew_1('Single Key Repeat Press')
    this%f_SINGLE_KEY_PRESS => InputFeature_jnew_1('Single Key Press')
        continue
  end function

  recursive function InputFeatureFactory_jm_getInstance_0() result(jresult)
    class(InputFeatureFactory), pointer :: jresult
        jresult => InputFeatureFactory_jstatic_instance()
        return
  end function

  recursive function InputFeatureFactory_jm_isSingleKeyProcessing_0(this) result(jresult)
    class(InputFeatureFactory), target :: this
    logical :: jresult
    class(Features), pointer :: j_features
        j_features => Features_jm_getInstance_0()
        if ((j_features%jm_isFeature_1(this%f_SINGLE_KEY_REPEAT_PRESS) .or. j_features%jm_isFeature_1(this%f_SINGLE_KEY_PRESS))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module InputFeatureFactory_m

