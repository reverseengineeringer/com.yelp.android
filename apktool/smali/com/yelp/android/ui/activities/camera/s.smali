.class Lcom/yelp/android/ui/activities/camera/s;
.super Ljava/lang/Object;
.source "VideoCaptureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/s;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/s;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 155
    return-void
.end method
