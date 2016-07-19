.class public Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "WebImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/webimageview/WebImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebImageLoaderHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/webimageview/ImageLoaderHandler",
        "<",
        "Lcom/yelp/android/webimageview/WebImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/webimageview/WebImageView;JLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0, p2}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    .line 265
    iput-object p1, p0, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;->mUrl:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;->mCallback:Ljava/lang/ref/WeakReference;

    .line 267
    iput-wide p3, p0, Lcom/yelp/android/webimageview/ImageLoaderHandler;->priority:J

    .line 268
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;->getImageView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/WebImageView;

    .line 273
    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 276
    :cond_0
    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;->mUrl:Ljava/lang/String;

    # getter for: Lcom/yelp/android/webimageview/WebImageView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/yelp/android/webimageview/WebImageView;->access$000(Lcom/yelp/android/webimageview/WebImageView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-super {p0, p1}, Lcom/yelp/android/webimageview/ImageLoaderHandler;->handleMessage(Landroid/os/Message;)V

    .line 280
    const/4 v1, 0x1

    # setter for: Lcom/yelp/android/webimageview/WebImageView;->mLoaded:Z
    invoke-static {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->access$102(Lcom/yelp/android/webimageview/WebImageView;Z)Z

    .line 281
    iget-object v1, p0, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;

    .line 282
    if-eqz v1, :cond_1

    .line 283
    invoke-interface {v1, v0}, Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;->imageLoaded(Lcom/yelp/android/webimageview/WebImageView;)V

    .line 286
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
