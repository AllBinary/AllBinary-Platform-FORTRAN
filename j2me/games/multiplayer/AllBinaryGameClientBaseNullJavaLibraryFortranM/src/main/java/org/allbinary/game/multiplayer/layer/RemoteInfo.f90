! 
! To change this license header, choose License Headers in Project Properties. 
! To change this template file, choose Tools | Templates 
! and open the template in the editor.  
! Generated Code Do Not Modify
! package org.allbinary.game.multiplayer.layer
module RemoteInfo_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: RemoteInfo
  end type

  integer(4), save :: RemoteInfo_jcell_NEW_PLAYER_ID
  logical, save :: RemoteInfo_jset_NEW_PLAYER_ID = .false.
  class(RemoteInfo), pointer, save :: RemoteInfo_jcell_REMOTE_INFO => null()
  logical, save :: RemoteInfo_jset_REMOTE_INFO = .false.

contains

  function RemoteInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RemoteInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RemoteInfo)
      jresult => object
    end select
  end function

  function RemoteInfo_jstatic_NEW_PLAYER_ID() result(jresult)
    integer(4) :: jresult
    if (.not. RemoteInfo_jset_NEW_PLAYER_ID) then
      RemoteInfo_jset_NEW_PLAYER_ID = .true.
      RemoteInfo_jcell_NEW_PLAYER_ID = 0
    end if
    jresult = RemoteInfo_jcell_NEW_PLAYER_ID
  end function

  subroutine RemoteInfo_jsetstatic_NEW_PLAYER_ID(jvalue)
    integer(4), value :: jvalue
    RemoteInfo_jset_NEW_PLAYER_ID = .true.
    RemoteInfo_jcell_NEW_PLAYER_ID = jvalue
  end subroutine

  function RemoteInfo_jstatic_REMOTE_INFO() result(jresult)
    class(RemoteInfo), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. RemoteInfo_jset_REMOTE_INFO) then
      RemoteInfo_jset_REMOTE_INFO = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    RemoteInfo_jcell_REMOTE_INFO => RemoteInfo_jnew_4(jtemp1%f_EMPTY_STRING, (-1), (-1), RemoteInfo_jstatic_NEW_PLAYER_ID())
    end if
    jresult => RemoteInfo_jcell_REMOTE_INFO
  end function

  subroutine RemoteInfo_jsetstatic_REMOTE_INFO(jvalue)
    class(RemoteInfo), target, optional :: jvalue
    RemoteInfo_jset_REMOTE_INFO = .true.
    if (present(jvalue)) then
      RemoteInfo_jcell_REMOTE_INFO => jvalue
    else
      RemoteInfo_jcell_REMOTE_INFO => null()
    end if
  end subroutine

  recursive function RemoteInfo_jnew_4(j_username, j_actorSessionId, j_playerInputId, j_id) result(this)
    character(len=*), intent(in) :: j_username
    integer(4), value :: j_actorSessionId
    integer(4), value :: j_playerInputId
    integer(4), value :: j_id
    class(RemoteInfo), pointer :: this
    allocate(this)
    this%jclass = 'RemoteInfo'
        continue
  end function
end module RemoteInfo_m

