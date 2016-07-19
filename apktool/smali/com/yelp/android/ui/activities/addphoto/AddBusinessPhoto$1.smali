.class Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;
.super Ljava/lang/Object;
.source "AddBusinessPhoto.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/addphoto/b$a;


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
    .line 669
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Lcom/yelp/android/ui/activities/support/b$b;

    move-result-object v2

    const v3, 0x7f070379

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 673
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    .line 681
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    const v1, 0x7f0702ab

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    const v2, 0x7f07063f

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 690
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->hideLoadingDialog()V

    .line 696
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;Z)Z

    .line 697
    return-void
.end method
