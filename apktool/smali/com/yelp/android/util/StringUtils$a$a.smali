.class Lcom/yelp/android/util/StringUtils$a$a;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/StringUtils$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yelp/android/util/StringUtils$a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/util/StringUtils$a;)V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    .line 842
    iput-object p1, p0, Lcom/yelp/android/util/StringUtils$a$a;->a:Lcom/yelp/android/util/StringUtils$a;

    .line 843
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3e800000    # 0.25f

    .line 847
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 849
    const-string/jumbo v1, "droidfu:extra_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 850
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 851
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 852
    const/16 v3, 0xa

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 853
    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 854
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 855
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 856
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 857
    iget-object v0, p0, Lcom/yelp/android/util/StringUtils$a$a;->a:Lcom/yelp/android/util/StringUtils$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/StringUtils$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 859
    :cond_0
    return-void
.end method
