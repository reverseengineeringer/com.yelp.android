.class Lcom/yelp/android/ui/util/at;
.super Ljava/lang/Object;
.source "LazyLoadedAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/as;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/as;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->a(Lcom/yelp/android/ui/util/as;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    iget-object v1, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v1}, Lcom/yelp/android/ui/util/as;->b(Lcom/yelp/android/ui/util/as;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Lcom/yelp/android/ui/util/as;Z)Z

    .line 119
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v1}, Lcom/yelp/android/ui/util/as;->c(Lcom/yelp/android/ui/util/as;)I

    move-result v3

    .line 93
    iget-object v1, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v1}, Lcom/yelp/android/ui/util/as;->d(Lcom/yelp/android/ui/util/as;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 97
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v4}, Lcom/yelp/android/ui/util/as;->e(Lcom/yelp/android/ui/util/as;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    :goto_1
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->h(Lcom/yelp/android/ui/util/as;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v1}, Lcom/yelp/android/ui/util/as;->g(Lcom/yelp/android/ui/util/as;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    iget-object v4, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v4}, Lcom/yelp/android/ui/util/as;->f(Lcom/yelp/android/ui/util/as;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "Exception creating bitmap for animation"

    invoke-static {v4, v5, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->d(Lcom/yelp/android/ui/util/as;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/as;->a(Lcom/yelp/android/ui/util/as;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/util/at;->a:Lcom/yelp/android/ui/util/as;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Lcom/yelp/android/ui/util/as;Z)Z

    goto :goto_0
.end method
