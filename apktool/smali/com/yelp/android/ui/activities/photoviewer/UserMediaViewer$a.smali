.class Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;
.super Ljava/lang/Object;
.source "UserMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$1;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;-><init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;)V

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
    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    const-string/jumbo v1, "extra.photo_deleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->setResult(ILandroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->hideLoadingDialog()V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->finish()V

    .line 220
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

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->hideLoadingDialog()V

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    const v1, 0x7f07029a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
