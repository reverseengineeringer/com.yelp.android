.class Lcom/yelp/android/ui/activities/photoviewer/j;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

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
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/j;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

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

    .line 867
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/j;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->hideLoadingDialog()V

    .line 868
    invoke-static {v2, p2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/j;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 870
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

    .line 859
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/j;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->hideLoadingDialog()V

    .line 860
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/j;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 861
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/j;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 856
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/j;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
