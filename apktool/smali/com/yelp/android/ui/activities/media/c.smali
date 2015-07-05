.class public Lcom/yelp/android/ui/activities/media/c;
.super Ljava/lang/Object;
.source "CopyMediaToPrivateDirTask.java"


# instance fields
.field public a:Ljava/io/File;

.field public b:Landroid/graphics/Bitmap;

.field public c:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static a(Ljava/io/File;Landroid/graphics/Bitmap;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Lcom/yelp/android/ui/activities/media/c;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/yelp/android/ui/activities/media/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/media/c;-><init>()V

    .line 112
    iput-object p0, v0, Lcom/yelp/android/ui/activities/media/c;->a:Ljava/io/File;

    .line 113
    iput-object p1, v0, Lcom/yelp/android/ui/activities/media/c;->b:Landroid/graphics/Bitmap;

    .line 114
    iput-object p2, v0, Lcom/yelp/android/ui/activities/media/c;->c:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 115
    return-object v0
.end method
