// Copyright (c) 2023 Sendbird, Inc. All rights reserved.

import 'package:sendbird_chat_sdk/src/internal/main/chat/chat.dart';
import 'package:sendbird_chat_sdk/src/internal/main/chat_cache/cache_service.dart';
import 'package:sendbird_chat_sdk/src/internal/main/chat_cache/channel/channel_cache_extensions.dart';
import 'package:sendbird_chat_sdk/src/internal/main/extensions/extensions.dart';
import 'package:sendbird_chat_sdk/src/internal/network/http/http_client/http_client.dart';
import 'package:sendbird_chat_sdk/src/internal/network/http/http_client/request/api_request.dart';
import 'package:sendbird_chat_sdk/src/public/core/channel/open_channel/open_channel.dart';
import 'package:sendbird_chat_sdk/src/public/main/define/enums.dart';

class OpenChannelRefreshRequest extends ApiRequest {
  @override
  HttpMethod get method => HttpMethod.get;

  OpenChannelRefreshRequest(
    Chat chat, {
    required String channelUrl,
    List<ChannelListQueryIncludeOption> options = const [],
    bool passive = false,
  }) : super(chat: chat) {
    url = '${passive ? '/sdk/' : ''}open_channels/$channelUrl';
    queryParams = options.toJson();
  }

  @override
  Future<OpenChannel> response(Map<String, dynamic> res) async {
    final channel = OpenChannel.fromJsonWithChat(chat, res)..saveToCache(chat);
    res.cacheMetaData(channel: channel, ts: res['ts']);
    return channel;
  }
}
