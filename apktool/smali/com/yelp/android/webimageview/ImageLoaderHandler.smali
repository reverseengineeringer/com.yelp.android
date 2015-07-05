.class public Lcom/yelp/android/webimageview/ImageLoaderHandler;
.super Landroid/os/Handler;
.source "ImageLoaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ImageView:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final mWeakImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TImageView;>;"
        }
    .end annotation
.end field

.field protected priority:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TImageView;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageLoaderHandler;->mWeakImageView:Ljava/lang/ref/WeakReference;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/webimageview/ImageLoaderHandler;->priority:J

    .line 41
    return-void
.end method


# virtual methods
.method getImageView()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TImageView;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageLoaderHandler;->mWeakImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "droidfu:extra_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 49
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageLoaderHandler;->mWeakImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageLoaderHandler;->mWeakImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_0
    return-void
.end method
