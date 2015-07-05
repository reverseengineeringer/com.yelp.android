.class final Lcom/yelp/android/util/ffmpeg/c;
.super Ljava/lang/Object;
.source "FFmpeg.java"

# interfaces
.implements Lcom/yelp/android/util/ffmpeg/f;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/yelp/android/util/ffmpeg/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
