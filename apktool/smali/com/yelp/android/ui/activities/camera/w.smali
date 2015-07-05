.class Lcom/yelp/android/ui/activities/camera/w;
.super Ljava/lang/Object;
.source "VideoCaptureFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/PieProgress;->a()V

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/PieProgress;->getProgress()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress;->setProgressColor(I)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/PieProgress;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/PieProgress;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, p0, v2, v3}, Lcom/yelp/android/ui/widgets/PieProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/w;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    goto :goto_0
.end method
