class User {
  String login;
  String node_id;
  String avatar_url;
  String gravatar_id;
  String url;
  String html_url;
  String followers_url;
  String following_url;
  String gists_url;
  String starred_url;
  String subscriptions_url;
  String organizations_url;
  String repos_url;
  String events_url;
  String received_events_url;
  String type;
  bool site_admin;
  String name;
  String company;
  String blog;
  String location;
  String email;
  String hireable;
  String bio;
  String twitter_username;
  int public_repos;
  int public_gists;
  int followers;
  int following;
  DateTime created_at;
  DateTime updated_at;

  User({
      this.login,
      this.node_id,
      this.avatar_url,
      this.gravatar_id,
      this.url,
      this.html_url,
      this.followers_url,
      this.following_url,
      this.gists_url,
      this.starred_url,
      this.subscriptions_url,
      this.organizations_url,
      this.repos_url,
      this.events_url,
      this.received_events_url,
      this.type,
      this.site_admin,
      this.name,
      this.company,
      this.blog,
      this.location,
      this.email,
      this.hireable,
      this.bio,
      this.twitter_username,
      this.public_repos,
      this.public_gists,
      this.followers,
      this.following,
      this.created_at,
      this.updated_at});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      login: json["login"],
      node_id: json["node_id"],
      avatar_url: json["avatar_url"],
      gravatar_id: json["gravatar_id"],
      url: json["url"],
      html_url: json["html_url"],
      followers_url: json["followers_url"],
      following_url: json["following_url"],
      gists_url: json["gists_url"],
      starred_url: json["starred_url"],
      subscriptions_url: json["subscriptions_url"],
      organizations_url: json["organizations_url"],
      repos_url: json["repos_url"],
      events_url: json["events_url"],
      received_events_url: json["received_events_url"],
      type: json["type"],
      site_admin: json["site_admin"],
      name: json["name"],
      company: json["company"],
      blog: json["blog"],
      location: json["location"],
      email: json["email"],
      hireable: json["hireable"],
      bio: json["bio"],
      twitter_username: json["twitter_username"],
      public_repos: json["public_repos"],
      public_gists: json["public_gists"],
      followers: json["followers"],
      following: json["following"],
      created_at: DateTime.parse(json["created_at"]),
      updated_at: DateTime.parse(json["updated_at"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "login": this.login,
      "node_id": this.node_id,
      "avatar_url": this.avatar_url,
      "gravatar_id": this.gravatar_id,
      "url": this.url,
      "html_url": this.html_url,
      "followers_url": this.followers_url,
      "following_url": this.following_url,
      "gists_url": this.gists_url,
      "starred_url": this.starred_url,
      "subscriptions_url": this.subscriptions_url,
      "organizations_url": this.organizations_url,
      "repos_url": this.repos_url,
      "events_url": this.events_url,
      "received_events_url": this.received_events_url,
      "type": this.type,
      "site_admin": this.site_admin,
      "name": this.name,
      "company": this.company,
      "blog": this.blog,
      "location": this.location,
      "email": this.email,
      "hireable": this.hireable,
      "bio": this.bio,
      "twitter_username": this.twitter_username,
      "public_repos": this.public_repos,
      "public_gists": this.public_gists,
      "followers": this.followers,
      "following": this.following,
      "created_at": this.created_at.toIso8601String(),
      "updated_at": this.updated_at.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'User{login: $login, node_id: $node_id, avatar_url: $avatar_url, gravatar_id: $gravatar_id, url: $url, html_url: $html_url, followers_url: $followers_url, following_url: $following_url, gists_url: $gists_url, starred_url: $starred_url, subscriptions_url: $subscriptions_url, organizations_url: $organizations_url, repos_url: $repos_url, events_url: $events_url, received_events_url: $received_events_url, type: $type, site_admin: $site_admin, name: $name, company: $company, blog: $blog, location: $location, email: $email, hireable: $hireable, bio: $bio, twitter_username: $twitter_username, public_repos: $public_repos, public_gists: $public_gists, followers: $followers, following: $following, created_at: $created_at, updated_at: $updated_at}';
  }
}
