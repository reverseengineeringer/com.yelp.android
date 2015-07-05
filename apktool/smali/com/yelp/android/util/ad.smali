.class Lcom/yelp/android/util/ad;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "StringUtils.java"


# instance fields
.field a:Lcom/yelp/android/util/ac;


# direct methods
.method public constructor <init>(Lcom/yelp/android/util/ac;)V
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    .line 785
    iput-object p1, p0, Lcom/yelp/android/util/ad;->a:Lcom/yelp/android/util/ac;

    .line 786
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3e800000    # 0.25f

    .line 790
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 791
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 792
    const-string/jumbo v1, "droidfu:extra_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 793
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 794
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 795
    const/16 v3, 0xa

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 796
    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 797
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 798
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 799
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 800
    iget-object v0, p0, Lcom/yelp/android/util/ad;->a:Lcom/yelp/android/util/ac;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ac;->a(Landroid/graphics/drawable/Drawable;)V

    .line 802
    :cond_0
    return-void
.end method
