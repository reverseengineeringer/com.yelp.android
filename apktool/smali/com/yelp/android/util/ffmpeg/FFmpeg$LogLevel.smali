.class public final enum Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;
.super Ljava/lang/Enum;
.source "FFmpeg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum DEBUG:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum ERROR:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum FATAL:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum INFO:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum PANIC:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum QUIET:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum VERBOSE:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

.field public static final enum WARNING:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;


# instance fields
.field private final mFFmpegArgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "QUIET"

    const-string/jumbo v2, "quiet"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->QUIET:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 36
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "PANIC"

    const-string/jumbo v2, "panic"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->PANIC:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 37
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "FATAL"

    const-string/jumbo v2, "fatal"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->FATAL:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 38
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "ERROR"

    const-string/jumbo v2, "error"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->ERROR:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 39
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "WARNING"

    const-string/jumbo v2, "warning"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->WARNING:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 40
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "INFO"

    const/4 v2, 0x5

    const-string/jumbo v3, "info"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->INFO:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 41
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "VERBOSE"

    const/4 v2, 0x6

    const-string/jumbo v3, "verbose"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->VERBOSE:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 42
    new-instance v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    const-string/jumbo v1, "DEBUG"

    const/4 v2, 0x7

    const-string/jumbo v3, "debug"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->DEBUG:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->QUIET:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->PANIC:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->FATAL:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->ERROR:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->WARNING:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->INFO:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->VERBOSE:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->DEBUG:Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->$VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->mFFmpegArgName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->$VALUES:[Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    invoke-virtual {v0}, [Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$LogLevel;->mFFmpegArgName:Ljava/lang/String;

    return-object v0
.end method
