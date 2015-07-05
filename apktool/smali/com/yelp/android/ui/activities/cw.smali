.class Lcom/yelp/android/ui/activities/cw;
.super Ljava/lang/Object;
.source "ActivityMediaBrowser.java"

# interfaces
.implements Lcom/yelp/android/ui/util/cu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/cu",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Media;

.field final synthetic b:Lcom/yelp/android/ui/activities/cv;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/cv;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cw;->b:Lcom/yelp/android/ui/activities/cv;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/cw;->a:Lcom/yelp/android/serializable/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 471
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/cw;->a(Landroid/widget/ImageView;II)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;II)V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cw;->a:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cw;->a:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v1, v2}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    if-le p2, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cw;->a:Lcom/yelp/android/serializable/Media;

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargeSquareUrl()Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cw;->b:Lcom/yelp/android/ui/activities/cv;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/cv;->a(Lcom/yelp/android/ui/activities/cv;)Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/RemoteImageExceptionCallback;->INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/c;

    move-result-object v0

    const v1, 0x7f0202f3

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 489
    return-void
.end method
