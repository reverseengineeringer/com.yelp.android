.class public Lcom/yelp/android/ui/activities/media/a$b;
.super Ljava/lang/Object;
.source "CopyMediaToPrivateDirTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


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

    return-void
.end method

.method public static a(Ljava/io/File;Landroid/graphics/Bitmap;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Lcom/yelp/android/ui/activities/media/a$b;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/yelp/android/ui/activities/media/a$b;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/media/a$b;-><init>()V

    .line 111
    iput-object p0, v0, Lcom/yelp/android/ui/activities/media/a$b;->a:Ljava/io/File;

    .line 112
    iput-object p1, v0, Lcom/yelp/android/ui/activities/media/a$b;->b:Landroid/graphics/Bitmap;

    .line 113
    iput-object p2, v0, Lcom/yelp/android/ui/activities/media/a$b;->c:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 114
    return-object v0
.end method
