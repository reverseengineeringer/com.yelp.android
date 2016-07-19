.class final enum Lcom/yelp/android/util/image/ImageProcessingUtil$Quality$1;
.super Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;
.source "ImageProcessingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;-><init>(Ljava/lang/String;ILcom/yelp/android/util/image/ImageProcessingUtil$1;)V

    return-void
.end method


# virtual methods
.method getImageProcessor()Lcom/yelp/android/util/image/b;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/util/image/c;

    invoke-direct {v0}, Lcom/yelp/android/util/image/c;-><init>()V

    return-object v0
.end method
