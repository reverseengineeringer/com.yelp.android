.class public final enum Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;
.super Ljava/lang/Enum;
.source "MediaStoreUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/MediaStoreUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

.field public static final enum PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

.field public static final enum PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

.field public static final enum VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;


# instance fields
.field private mHasPhotos:Z

.field private mHasVideos:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 40
    new-instance v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    const-string/jumbo v1, "PHOTO"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 41
    new-instance v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 42
    new-instance v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    const-string/jumbo v1, "PHOTO_AND_VIDEO"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->$VALUES:[Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-boolean p3, p0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->mHasPhotos:Z

    .line 49
    iput-boolean p4, p0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->mHasVideos:Z

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->$VALUES:[Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    return-object v0
.end method


# virtual methods
.method public hasPhotos()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->mHasPhotos:Z

    return v0
.end method

.method public hasVideos()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->mHasVideos:Z

    return v0
.end method
