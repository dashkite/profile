import Storage from "@dashkite/storage"

Profile = 

  save: ( profile ) -> Storage.set "profile", profile

  load: -> Storage.get "profile"

  update: ( f ) ->
    Storage.set "profile", ( f Storage.get "profile" )

Object.defineProperty Profile, "connected",
  get: ( context ) -> Storage.has "profile"

# aliases
Profile.get = Profile.load
Profile.put = Profile.save

export default Profile
export { Profile }