.class Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;
.super Ljava/lang/Object;
.source "MediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->hideLoadingDialog()V

    .line 499
    invoke-static {v2, p2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 501
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

    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->hideLoadingDialog()V

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
