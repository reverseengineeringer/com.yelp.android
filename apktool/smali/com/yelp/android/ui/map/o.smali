.class Lcom/yelp/android/ui/map/o;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "SingleBusinessInfoWindowAdapter.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/map/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/yelp/android/ui/map/p;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/o;->a:Ljava/lang/ref/WeakReference;

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "droidfu:extra_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 190
    iget-object v1, p0, Lcom/yelp/android/ui/map/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/map/p;

    .line 191
    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v1, v0}, Lcom/yelp/android/ui/map/p;->a(Landroid/graphics/Bitmap;)V

    .line 195
    :cond_0
    return-void
.end method
