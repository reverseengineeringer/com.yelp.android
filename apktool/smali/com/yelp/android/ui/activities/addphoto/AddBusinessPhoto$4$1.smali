.class Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$1;
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
    .line 756
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 760
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setResult(I)V

    .line 761
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    .line 762
    return-void
.end method
