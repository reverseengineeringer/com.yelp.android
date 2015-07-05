.class Lcom/yelp/android/ui/activities/d;
.super Ljava/lang/Object;
.source "ActivityBadge.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/Badge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBadge;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yelp/android/ui/activities/d;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Badge;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Badge;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/d;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->hideLoadingDialog()V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/d;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Lcom/yelp/android/serializable/Badge;)V

    .line 198
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
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/d;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->hideLoadingDialog()V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/d;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->finish()V

    .line 192
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p2, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/d;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Badge;)V

    return-void
.end method
