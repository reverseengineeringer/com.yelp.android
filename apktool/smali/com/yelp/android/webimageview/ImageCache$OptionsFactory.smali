.class Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/webimageview/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionsFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/webimageview/ImageCache$1;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 471
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method
