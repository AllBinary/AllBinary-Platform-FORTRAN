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
! package org.allbinary.graphics.form
module ScrollSelectionFormNoneFactory_m
  use JR_m
  use ScrollSelectionForm_m
  implicit none

  type, extends(JObject) :: ScrollSelectionFormNoneFactory
  end type


contains

  function ScrollSelectionFormNoneFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollSelectionFormNoneFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollSelectionFormNoneFactory)
      jresult => object
    end select
  end function

  function ScrollSelectionFormNoneFactory_jnew_0() result(this)
    class(ScrollSelectionFormNoneFactory), pointer :: this
    allocate(this)
    this%jclass = 'ScrollSelectionFormNoneFactory'
  end function

  recursive function ScrollSelectionFormNoneFactory_jm_getInstance_0() result(jresult)
    class(ScrollSelectionForm), pointer :: jresult
        jresult => ScrollSelectionForm_jm_getNullScrollSelectionFormHorizontal_0()
        return
  end function
end module ScrollSelectionFormNoneFactory_m

