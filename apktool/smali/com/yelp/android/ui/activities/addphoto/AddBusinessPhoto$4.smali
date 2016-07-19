.class Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;
.super Ljava/lang/Object;
.source "AddBusinessPhoto.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 745
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 746
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 748
    const v0, 0x7f070192

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 749
    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "extra.is_video"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070265

    :goto_0
    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 754
    const v0, 0x7f07068a

    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$1;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 764
    const v0, 0x7f07041f

    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 785
    return-void

    .line 749
    :cond_1
    const v0, 0x7f070264

    goto :goto_0
.end method
