.class public final Lcom/google/android/gms/ads/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 138
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs:[I

    .line 142
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/ads/R$styleable;->LoadingImageView:[I

    .line 146
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/ads/R$styleable;->MapAttrs:[I

    return-void

    .line 138
    nop

    :array_0
    .array-data 4
        0x7f010023
        0x7f010024
        0x7f010025
    .end array-data

    .line 142
    :array_1
    .array-data 4
        0x7f010055
        0x7f010056
        0x7f010057
    .end array-data

    .line 146
    :array_2
    .array-data 4
        0x7f010058
        0x7f010059
        0x7f01005a
        0x7f01005b
        0x7f01005c
        0x7f01005d
        0x7f01005e
        0x7f01005f
        0x7f010060
        0x7f010061
        0x7f010062
        0x7f010063
        0x7f010064
        0x7f010065
        0x7f010066
        0x7f010067
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
