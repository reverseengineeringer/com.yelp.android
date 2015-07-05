.class public final enum Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;
.super Ljava/lang/Enum;
.source "FFmpeg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

.field public static final enum YUV420P:Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;


# instance fields
.field private final mFFmpegArgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    const-string/jumbo v1, "YUV420P"

    const-string/jumbo v2, "yuv420p"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;->YUV420P:Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;->YUV420P:Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;->$VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;->mFFmpegArgName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;->$VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    invoke-virtual {v0}, [Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;->mFFmpegArgName:Ljava/lang/String;

    return-object v0
.end method
