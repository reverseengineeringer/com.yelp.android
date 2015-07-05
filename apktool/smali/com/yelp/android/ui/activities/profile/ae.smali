.class final Lcom/yelp/android/ui/activities/profile/ae;
.super Ljava/lang/Object;
.source "UserProfileView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/User;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ae;->a:Lcom/yelp/android/serializable/User;

    .line 496
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 518
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 500
    new-instance v2, Lcom/yelp/android/appdata/webrequests/do;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/ae;->a:Lcom/yelp/android/serializable/User;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, p0, v3, v0}, Lcom/yelp/android/appdata/webrequests/do;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;Z)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/do;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 501
    return-void

    :cond_0
    move v0, v1

    .line 500
    goto :goto_0
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
    .line 510
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 489
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ae;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
