.class public Lcom/yelp/android/ui/activities/notifications/m;
.super Lcom/yelp/android/av/h;
.source "NotificationsFragment.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1, p3}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 406
    iput-object p2, p0, Lcom/yelp/android/ui/activities/notifications/m;->a:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)Lcom/yelp/android/ui/activities/notifications/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ui/activities/notifications/m;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 397
    new-instance v2, Lcom/yelp/android/ui/activities/notifications/m;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p2, p1}, Lcom/yelp/android/ui/activities/notifications/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 398
    invoke-static {v1}, Lcom/yelp/android/util/m;->a(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/yelp/android/ui/activities/notifications/m;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_0
    return-object v2
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/m;->a:Ljava/lang/String;

    return-object v0
.end method
