.class Lcom/yelp/android/ui/activities/friends/m;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/m;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/m;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j()V

    .line 497
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/m;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a_()V

    .line 498
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/m;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j()V

    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/m;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 504
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 493
    check-cast p2, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/m;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    return-void
.end method
