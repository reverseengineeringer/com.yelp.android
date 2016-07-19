.class Lcom/yelp/android/ui/util/s$1;
.super Landroid/os/AsyncTask;
.source "ImageBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/Pair",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/widget/ImageView;",
        ">;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/widget/ImageView;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/s;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/s;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/util/s$1;->a:Lcom/yelp/android/ui/util/s;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/util/Pair;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/widget/ImageView;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    aget-object v0, p1, v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 52
    aget-object v1, p1, v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/yelp/android/ui/util/s$1;->a:Lcom/yelp/android/ui/util/s;

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lcom/yelp/android/ui/util/s;->a(Lcom/yelp/android/ui/util/s;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    sget v0, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 69
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/s$1;->a([Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/s$1;->a(Landroid/util/Pair;)V

    return-void
.end method
