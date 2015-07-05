.class Lcom/yelp/android/ui/activities/talk/n;
.super Ljava/lang/Object;
.source "EventTalkViewPost.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/n;->a:Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/n;->a:Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a(I)V

    .line 97
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
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/n;->a:Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 92
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/n;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Integer;)V

    return-void
.end method
