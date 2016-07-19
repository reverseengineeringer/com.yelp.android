.class Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;
.super Ljava/util/TimerTask;
.source "ViewTakePhotoOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    new-instance v1, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1$1;-><init>(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method
