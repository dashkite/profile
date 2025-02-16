import Storage from "@dashkite/storage"

Profile = 

  save: ( profile ) -> Storage.set "profile", profile

  load: -> Storage.get "profile"

  update: ( f ) ->
    Storage.set "profile", ( f Addision.get "profile" )

  connected: ( context ) -> Storage.has "profile"

export default Profile
export { Profile }