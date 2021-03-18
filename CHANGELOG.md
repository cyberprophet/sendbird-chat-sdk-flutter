## [3.0.4]
* Added `GroupChannelMemberListQuery`
* Changed `refreshChannel` to `refresh` for channel
* Changed parameter type from `User` to `String` for `reportUser` on channel
* Fixed bugs on mapping sender
* Fixed bugs on sending file message
* Fixed bugs on caching 
* Improved stability

## [3.0.3]
* Changed return type of update messages (remove completion and use future)
* Accepted mimetype on `ImageInfo` 
* Improved stability

## [3.0.2] 
* Added member count events for ChannelEventHandler
* Added session refresh / expiration
* Changed method signatures for send / update / resend user and file message
* Handled file message sending asynchronously
* Added network awarness to reconnect
* Updated internal logic while reconnecting
* Refactored socket events
* Improved stability

## [3.0.1] Add missing features
* Added reactions
* Added file size limit
* Added thumbnail option for file message 
* Added `OGMetaData`, `OGImage` for open graph
* Added logging
* Added `PreviousMessageListQuery`
* Updated reference documentation
* Improved stability 

## [3.0.0] developer preview
* Developer preview