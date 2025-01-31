import Addison from "@dashkite/addison"

Profile = 

  save: ( profile ) -> Addison.set "profile", profile

  load: -> Addison.get "profile"

  update: ( f ) ->
    Addision.set "profile", ( f Addision.get "profile" )

  connected: ( context ) -> Addison.has "profile"

export default Profile
export { Profile }