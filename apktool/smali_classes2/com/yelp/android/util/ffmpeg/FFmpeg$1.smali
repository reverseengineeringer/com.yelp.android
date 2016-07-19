.class final Lcom/yelp/android/util/ffmpeg/FFmpeg$1;
.super Ljava/lang/Object;
.source "FFmpeg.java"

# interfaces
.implements Lcom/yelp/android/util/ffmpeg/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/util/ffmpeg/FFmpeg;->a(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/FFmpeg$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
