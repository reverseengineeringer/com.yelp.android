.class Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;
.super Ljava/lang/Object;
.source "ReviewFriendRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    check-cast p1, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->b()Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->d()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V

    .line 371
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->hideLoadingDialog()V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->disableLoading()V

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    const v1, 0x7f0f018c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 384
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 364
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
