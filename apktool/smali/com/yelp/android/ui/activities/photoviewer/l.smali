.class Lcom/yelp/android/ui/activities/photoviewer/l;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

.field private final b:Lcom/yelp/android/serializable/Media;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->b:Lcom/yelp/android/serializable/Media;

    .line 896
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 4
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
    const/4 v3, -0x1

    .line 900
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 901
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 902
    const-string/jumbo v1, "extra.media_request"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 903
    const-string/jumbo v1, "extra.media_index"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->k(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 904
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v1, v3, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->setResult(ILandroid/content/Intent;)V

    .line 905
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->hideLoadingDialog()V

    .line 906
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->b:Lcom/yelp/android/serializable/Media;

    const-string/jumbo v2, "com.yelp.android.media.delete"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 911
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 912
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->b:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v1, v2}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/User;->addVideoCount(I)V

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->finish()V

    .line 918
    return-void

    .line 915
    :cond_0
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/User;->addPhotoCount(I)V

    goto :goto_0
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

    .line 922
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->hideLoadingDialog()V

    .line 923
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->b:Lcom/yelp/android/serializable/Media;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070246

    .line 925
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/l;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 927
    return-void

    .line 923
    :cond_0
    const v0, 0x7f070245

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 891
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/l;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
