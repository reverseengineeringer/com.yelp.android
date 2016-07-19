.class public Lcom/yelp/android/util/ffmpeg/b;
.super Ljava/lang/Object;
.source "EncodeTask.java"

# interfaces
.implements Lcom/yelp/android/util/ffmpeg/d;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Landroid/graphics/Rect;

.field private final h:Ljava/io/File;

.field private i:Lcom/yelp/android/util/ffmpeg/d$a;


# direct methods
.method public constructor <init>(Ljava/io/File;IIIIILandroid/graphics/Rect;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/yelp/android/util/ffmpeg/b;->a:Ljava/io/File;

    .line 37
    iput p2, p0, Lcom/yelp/android/util/ffmpeg/b;->b:I

    .line 38
    iput p3, p0, Lcom/yelp/android/util/ffmpeg/b;->c:I

    .line 39
    iput p4, p0, Lcom/yelp/android/util/ffmpeg/b;->d:I

    .line 40
    iput p5, p0, Lcom/yelp/android/util/ffmpeg/b;->e:I

    .line 41
    iput p6, p0, Lcom/yelp/android/util/ffmpeg/b;->f:I

    .line 42
    iput-object p7, p0, Lcom/yelp/android/util/ffmpeg/b;->g:Landroid/graphics/Rect;

    .line 43
    iput-object p8, p0, Lcom/yelp/android/util/ffmpeg/b;->h:Ljava/io/File;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/util/ffmpeg/d$a;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yelp/android/util/ffmpeg/b;->i:Lcom/yelp/android/util/ffmpeg/d$a;

    .line 96
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 48
    new-instance v1, Lcom/yelp/android/util/ffmpeg/c;

    iget-object v2, p0, Lcom/yelp/android/util/ffmpeg/b;->a:Ljava/io/File;

    iget-object v3, p0, Lcom/yelp/android/util/ffmpeg/b;->h:Ljava/io/File;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/util/ffmpeg/c;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget v2, p0, Lcom/yelp/android/util/ffmpeg/b;->b:I

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(I)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/util/ffmpeg/b;->c:I

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->b(I)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/util/ffmpeg/b;->d:I

    iget v3, p0, Lcom/yelp/android/util/ffmpeg/b;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/util/ffmpeg/c;->a(II)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/util/ffmpeg/b;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(Landroid/graphics/Rect;)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/util/ffmpeg/c;->b()Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    const v2, 0xac44

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->c(I)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->d(I)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->e(I)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/util/s;->a:Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(Lcom/yelp/android/util/ffmpeg/FFmpeg$PixelFormat;)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->f(I)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/util/ffmpeg/c;->a()Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v1

    .line 66
    iget v2, p0, Lcom/yelp/android/util/ffmpeg/b;->f:I

    sparse-switch v2, :sswitch_data_0

    .line 79
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(Landroid/content/Context;)Ljava/lang/Process;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 85
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/b;->i:Lcom/yelp/android/util/ffmpeg/d$a;

    if-eqz v1, :cond_1

    .line 86
    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/b;->i:Lcom/yelp/android/util/ffmpeg/d$a;

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/b;->h:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yelp/android/util/ffmpeg/d$a;->a(Ljava/io/File;)V

    .line 92
    :cond_1
    :goto_2
    return-void

    .line 68
    :sswitch_0
    sget-object v2, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;)Lcom/yelp/android/util/ffmpeg/c;

    goto :goto_0

    .line 71
    :sswitch_1
    sget-object v2, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;)Lcom/yelp/android/util/ffmpeg/c;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    invoke-virtual {v2, v3}, Lcom/yelp/android/util/ffmpeg/c;->a(Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;)Lcom/yelp/android/util/ffmpeg/c;

    goto :goto_0

    .line 76
    :sswitch_2
    sget-object v2, Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;->CCLOCK:Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ffmpeg/c;->a(Lcom/yelp/android/util/ffmpeg/FFmpeg$TransposeDirection;)Lcom/yelp/android/util/ffmpeg/c;

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/b;->i:Lcom/yelp/android/util/ffmpeg/d$a;

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/b;->h:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yelp/android/util/ffmpeg/d$a;->b(Ljava/io/File;)V

    goto :goto_2

    .line 83
    :catch_0
    move-exception v1

    goto :goto_1

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
