.class Lcom/yelp/android/ui/activities/addphoto/a;
.super Ljava/lang/Object;
.source "AddBusinessPhoto.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 1
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
    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

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

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 337
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 342
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    .line 343
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 333
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
