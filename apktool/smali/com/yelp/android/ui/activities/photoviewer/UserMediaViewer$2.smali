.class Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;
.super Ljava/lang/Object;
.source "UserMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;
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
        "Lcom/yelp/android/appdata/webrequests/fk$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->hideLoadingDialog()V

    .line 241
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    .line 242
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fk$a;->a()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->e:Lcom/yelp/android/serializable/Photo;

    .line 243
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Context;)V

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    const-string/jumbo v1, "extra.photo_added"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->setResult(ILandroid/content/Intent;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->finish()V

    .line 248
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
    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->hideLoadingDialog()V

    .line 235
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fk$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V

    return-void
.end method
