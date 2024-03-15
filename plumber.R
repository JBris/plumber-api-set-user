#* Execute command as another user.
#* @param user The user.
#* @param uid The user ID.
#* @get /
function(user, uid) {
  system(
    paste("bash create_user.sh", user, uid)
  )

  list(
    msg = system(
      paste("bash hello_user.sh", user),
      intern = T
    )
  )
}