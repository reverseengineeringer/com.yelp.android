.class Lcom/yelp/android/ui/activities/camera/m;
.super Ljava/lang/Object;
.source "TakePhoto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/TakePhoto;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/m;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/m;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/m;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/m;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/m;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x41e

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method
