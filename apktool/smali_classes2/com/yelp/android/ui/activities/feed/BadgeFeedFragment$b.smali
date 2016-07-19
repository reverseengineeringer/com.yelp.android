.class Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$b;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "BadgeFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;)V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0, p2}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    .line 253
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$b;->a:Ljava/lang/ref/WeakReference;

    .line 254
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 259
    if-eqz v0, :cond_0

    .line 260
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/webimageview/ImageLoaderHandler;->handleMessage(Landroid/os/Message;)V

    .line 263
    return-void
.end method
