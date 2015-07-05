.class Lcom/yelp/android/ui/activities/camera/u;
.super Ljava/lang/Object;
.source "VideoCaptureFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/r;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/u;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/camera/u;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/u;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/media/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/u;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/u;->a:Landroid/widget/ImageView;

    sget-object v4, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/media/d;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Lcom/yelp/android/ui/activities/media/d;)Lcom/yelp/android/ui/activities/media/d;

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/u;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/activities/media/d;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/u;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
