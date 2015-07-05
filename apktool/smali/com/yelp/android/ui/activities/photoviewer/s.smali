.class Lcom/yelp/android/ui/activities/photoviewer/s;
.super Ljava/lang/Object;
.source "EditPhotoCaption.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

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
    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Photo;->setCaption(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.media.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->finish()V

    .line 191
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

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 175
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/s;->a:Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 180
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    .line 181
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/s;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
