import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio();

class GithubUserList {
  List<GithubUserInfo?>? users;

  GithubUserList({required this.users});

  factory GithubUserList.fromJson(List<dynamic> json) {
    return GithubUserList(
      users: json.map((user) => GithubUserInfo.fromJson(user)).toList(),
    );
  }

  @override
  String toString() {
    return 'GithubUserList(users: $users)';
  }
}

class GithubUserInfo {
  // "login": "mojombo",
  //   "id": 1,
  //   "node_id": "MDQ6VXNlcjE=",
  //   "avatar_url": "https://avatars.githubusercontent.com/u/1?v=4",
  //   "gravatar_id": "",
  //   "url": "https://api.github.com/users/mojombo",
  //   "html_url": "https://github.com/mojombo",
  //   "followers_url": "https://api.github.com/users/mojombo/followers",
  //   "following_url": "https://api.github.com/users/mojombo/following{/other_user}",
  //   "gists_url": "https://api.github.com/users/mojombo/gists{/gist_id}",
  //   "starred_url": "https://api.github.com/users/mojombo/starred{/owner}{/repo}",
  //   "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
  //   "organizations_url": "https://api.github.com/users/mojombo/orgs",
  //   "repos_url": "https://api.github.com/users/mojombo/repos",
  //   "events_url": "https://api.github.com/users/mojombo/events{/privacy}",
  //   "received_events_url": "https://api.github.com/users/mojombo/received_events",
  //   "type": "User",
  //   "user_view_type": "public",
  //   "site_admin": false
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  String? userViewType;
  bool? siteAdmin;

  GithubUserInfo({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.userViewType,
    this.siteAdmin,
  });

  factory GithubUserInfo.fromJson(Map<String, dynamic> json) {
    return GithubUserInfo(
      login: json['login'] as String?,
      id: json['id'] as int?,
      nodeId: json['node_id'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      gravatarId: json['gravatar_id'] as String?,
      url: json['url'] as String?,
      htmlUrl: json['html_url'] as String?,
      followersUrl: json['followers_url'] as String?,
      followingUrl: json['following_url'] as String?,
      gistsUrl: json['gists_url'] as String?,
      starredUrl: json['starred_url'] as String?,
      subscriptionsUrl: json['subscriptions_url'] as String?,
      organizationsUrl: json['organizations_url'] as String?,
      reposUrl: json['repos_url'] as String?,
      eventsUrl: json['events_url'] as String?,
      receivedEventsUrl: json['received_events_url'] as String?,
      type: json['type'] as String?,
      userViewType: json['user_view_type'] as String?,
      siteAdmin: json['site_admin'] as bool?,
    );
  }

  @override
  String toString() {
    return '{login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, userViewType: $userViewType, siteAdmin: $siteAdmin}';
  }
}

Future<GithubUserList?> fetchPostsDio() async {
  try {
    final response = await dio.get('https://api.github.com/users');
    if (response.statusCode == 200) {
      return GithubUserList.fromJson(response.data);
    } else {
      throw Exception('Server error: ${response.statusCode}');
    }
  } on DioException catch (e) {
    throw Exception('Connect error: ${e.message}');
  } catch (e) {
    throw Exception('$e');
  }
}
/*
void main() {
    try {
    var postList = await fetchPostsDio();
    if (postList?.users != null) {
      var posts = postList?.users;
      // debugPrint('Posts: ${posts![0]}');
      debugPrint('Posts: ${posts!}');
    } else {
      debugPrint('Posts is null');
    }
  } catch (error) {
    debugPrint('Error: ${error.toString()}');
  }
}
*/