.class public Lcom/yelp/android/ui/activities/friends/ActivityFriendList;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFriendList.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "User"

    sput-object v0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "FRIENDS_LIST_FRAGMENT"

    sput-object v0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    sget-object v1, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const v1, 0x7f0702af

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->setTitle(I)V

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->c:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    .line 38
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->c:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    if-nez v1, :cond_0

    .line 39
    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->c:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->c:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    sget-object v3, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    :cond_0
    return-void

    .line 34
    :cond_1
    const v1, 0x7f070658

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
