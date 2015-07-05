.class Lcom/yelp/android/ui/activities/photoviewer/an;
.super Ljava/lang/Object;
.source "UserMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/gw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/an;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/gw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/an;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->hideLoadingDialog()V

    .line 95
    new-instance v0, Lcom/yelp/android/ui/activities/profile/j;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/j;-><init>()V

    .line 96
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gw;->a()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/profile/j;->e:Lcom/yelp/android/serializable/Photo;

    .line 97
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/an;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/j;->a(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string/jumbo v1, "photo_added"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/an;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->setResult(ILandroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/an;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->finish()V

    .line 102
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
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/an;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->hideLoadingDialog()V

    .line 89
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gw;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/an;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gw;)V

    return-void
.end method
