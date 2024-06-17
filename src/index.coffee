Profile = 

  save: ( profile ) ->
    localStorage.setItem "profile", JSON.stringify profile

  load: -> 
    profile = JSON.parse localStorage.getItem "profile"
    profile

  update: ( f ) -> Profile.save f do Profile.load


  connected: ( context ) ->
    ( localStorage.getItem "profile" )?

export default Profile
export { Profile }