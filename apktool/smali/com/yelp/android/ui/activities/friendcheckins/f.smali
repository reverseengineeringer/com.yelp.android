.class Lcom/yelp/android/ui/activities/friendcheckins/f;
.super Ljava/lang/Object;
.source "CommentOnCheckIn.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/f;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 1
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
    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/f;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b()V

    .line 423
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
    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/f;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b()V

    .line 418
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 412
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/f;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
