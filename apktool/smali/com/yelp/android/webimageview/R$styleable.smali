.class public final Lcom/yelp/android/webimageview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final WebImageView:[I

.field public static final WebImageView_autoload:I = 0x0

.field public static final WebImageView_followCrossRedirects:I = 0x4

.field public static final WebImageView_imageUrl:I = 0x2

.field public static final WebImageView_image_priority:I = 0x5

.field public static final WebImageView_loading:I = 0x1

.field public static final WebImageView_savePermanently:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/webimageview/R$styleable;->WebImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010156
        0x7f010157
        0x7f010158
        0x7f010159
        0x7f01015a
        0x7f01015b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
