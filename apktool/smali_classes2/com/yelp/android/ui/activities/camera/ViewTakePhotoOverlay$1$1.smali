.class Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1$1;
.super Ljava/lang/Object;
.source "ViewTakePhotoOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1$1;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1$1;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->invalidate()V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1$1;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;)I

    .line 182
    return-void
.end method
