.class Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->l()V

    .line 528
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)Z

    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)V

    .line 530
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
    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 523
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 519
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$7;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Boolean;)V

    return-void
.end method
