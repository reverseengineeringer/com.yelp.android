.class Lcom/yelp/android/ui/map/k$a;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "SingleBusinessInfoWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/map/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/map/k$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/map/k$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/yelp/android/ui/map/k$a$a;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/k$a;->a:Ljava/lang/ref/WeakReference;

    .line 164
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "droidfu:extra_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 173
    iget-object v1, p0, Lcom/yelp/android/ui/map/k$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/map/k$a$a;

    .line 174
    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1, v0}, Lcom/yelp/android/ui/map/k$a$a;->a(Landroid/graphics/Bitmap;)V

    .line 178
    :cond_0
    return-void
.end method
