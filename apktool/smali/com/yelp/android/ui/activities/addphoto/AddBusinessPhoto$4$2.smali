.class Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;
.super Ljava/lang/Object;
.source "AddBusinessPhoto.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Lcom/yelp/android/ui/activities/support/b$b;

    move-result-object v2

    const v3, 0x7f070379

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;I)V

    .line 780
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.is_video"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    goto :goto_0
.end method
