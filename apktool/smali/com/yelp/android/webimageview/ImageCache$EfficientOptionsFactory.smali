.class Lcom/yelp/android/webimageview/ImageCache$EfficientOptionsFactory;
.super Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;
.source "ImageCache.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;-><init>(Lcom/yelp/android/webimageview/ImageCache$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/webimageview/ImageCache$1;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/yelp/android/webimageview/ImageCache$EfficientOptionsFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 479
    invoke-super {p0}, Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 480
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 481
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 482
    return-object v0
.end method
