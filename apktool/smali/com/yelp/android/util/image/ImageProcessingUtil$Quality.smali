.class public abstract enum Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;
.super Ljava/lang/Enum;
.source "ImageProcessingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/image/ImageProcessingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

.field public static final enum HIGH:Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

.field public static final enum MEMORY_EFFICIENT:Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality$1;

    const-string/jumbo v1, "MEMORY_EFFICIENT"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;->MEMORY_EFFICIENT:Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    .line 26
    new-instance v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality$2;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;->HIGH:Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    sget-object v1, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;->MEMORY_EFFICIENT:Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;->HIGH:Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;->$VALUES:[Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/util/image/ImageProcessingUtil$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;->$VALUES:[Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    invoke-virtual {v0}, [Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/image/ImageProcessingUtil$Quality;

    return-object v0
.end method


# virtual methods
.method abstract getImageProcessor()Lcom/yelp/android/util/image/b;
.end method
