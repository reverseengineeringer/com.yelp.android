.class Lcom/yelp/android/ui/activities/camera/ad;
.super Ljava/lang/Object;
.source "ViewTakePhotoOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/ac;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/ac;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/ad;->a:Lcom/yelp/android/ui/activities/camera/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ad;->a:Lcom/yelp/android/ui/activities/camera/ac;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/ac;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->invalidate()V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ad;->a:Lcom/yelp/android/ui/activities/camera/ac;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/ac;->a:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;)I

    .line 181
    return-void
.end method
