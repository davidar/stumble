Stumble doesn't currently provide an interface to change your password, but the following should work (I haven't tested it though - please contact me if you are having problems with it):

`stumble http_req "http://www.stumbleupon.com/change_password.php?username=`_USERID_`" "username=`_USERID_`&password=`_OLDPASSWORD_`&newpassword=`_NEWPASSWORD_`&version=mozbar%203.16%20xpi"`

You'll need to replace:
  * _USERID_ with your StumbleUpon ID - if you've previously logged in with Stumble, you can find this by doing: `grep ID $HOME/.stumble/auth`
  * _OLDPASSWORD_ and _NEWPASSWORD_ with you current password and new password respectively

After this, you'll need to login with Stumble again, either through the Konqueror service-menu, or with:

`stumble login `_USERNAME_ _PASSWORD_