.class Lcom/yelp/android/ui/activities/camera/r;
.super Ljava/lang/Object;
.source "VideoCaptureFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/r;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return v4

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/r;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/r;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/r;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 128
    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/r;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Z)Z

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/r;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/r;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
