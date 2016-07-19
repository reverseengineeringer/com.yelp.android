.class public final Lpl/droidsonroids/gif/i$a;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final GifTextureView:[I

.field public static final GifTextureView_gifSource:I = 0x0

.field public static final GifTextureView_isOpaque:I = 0x1

.field public static final GifView:[I

.field public static final GifView_freezesAnimation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lpl/droidsonroids/gif/i$a;->GifTextureView:[I

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lpl/droidsonroids/gif/i$a;->GifView:[I

    return-void

    .line 16
    nop

    :array_0
    .array-data 4
        0x7f010079
        0x7f01007a
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0x7f01007b
        0x7f01007c
        0x7f01007d
    .end array-data
.end method
