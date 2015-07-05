.class Lcom/yelp/android/ui/activities/messaging/aa;
.super Ljava/lang/Object;
.source "MessageTheBusinessFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/aa;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/aa;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;Ljava/lang/String;)V

    .line 304
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
    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/aa;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 299
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/aa;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
