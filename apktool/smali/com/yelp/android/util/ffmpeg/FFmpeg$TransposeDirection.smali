.class public final enum Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;
.super Ljava/lang/Enum;
.source "FFmpeg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

.field public static final enum CCLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

.field public static final enum CCLOCK_FLIP:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

.field public static final enum CLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

.field public static final enum CLOCK_FLIP:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;


# instance fields
.field private final mFFmpegArgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    const-string/jumbo v1, "CCLOCK_FLIP"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CCLOCK_FLIP:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    .line 76
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    const-string/jumbo v1, "CLOCK"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    .line 77
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    const-string/jumbo v1, "CCLOCK"

    const-string/jumbo v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CCLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    .line 78
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    const-string/jumbo v1, "CLOCK_FLIP"

    const-string/jumbo v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CLOCK_FLIP:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CCLOCK_FLIP:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CCLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CLOCK_FLIP:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->$VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-object p3, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->mFFmpegArgName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->$VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    invoke-virtual {v0}, [Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->mFFmpegArgName:Ljava/lang/String;

    return-object v0
.end method
