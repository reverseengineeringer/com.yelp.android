.class Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;
.super Ljava/lang/Object;
.source "VideoCaptureFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/Features$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 231
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yelp/android/appdata/PermissionGroup;

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v2, v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;[Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/media/b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->a:Landroid/widget/ImageView;

    sget-object v4, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/media/b;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Lcom/yelp/android/ui/activities/media/b;)Lcom/yelp/android/ui/activities/media/b;

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->b:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/activities/media/b;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
