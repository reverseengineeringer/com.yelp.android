.class Lcom/yelp/android/ui/activities/bn;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bm;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bn;->a:Lcom/yelp/android/ui/activities/bm;

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
    .line 1175
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/cd;-><init>(ZLcom/yelp/android/appdata/webrequests/m;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cd;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 1176
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 1168
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1164
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/bn;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
