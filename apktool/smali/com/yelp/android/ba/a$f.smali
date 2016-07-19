.class public final Lcom/yelp/android/ba/a$f;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ba/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


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

.field public static final MapAttrs_ambientEnabled:I = 0x10

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

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 208
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ba/a$f;->AdsAttrs:[I

    .line 212
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ba/a$f;->LoadingImageView:[I

    .line 216
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yelp/android/ba/a$f;->MapAttrs:[I

    .line 234
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/yelp/android/ba/a$f;->SignInButton:[I

    return-void

    .line 208
    :array_0
    .array-data 4
        0x7f010023
        0x7f010024
        0x7f010025
    .end array-data

    .line 212
    :array_1
    .array-data 4
        0x7f010081
        0x7f010082
        0x7f010083
    .end array-data

    .line 216
    :array_2
    .array-data 4
        0x7f010084
        0x7f010085
        0x7f010086
        0x7f010087
        0x7f010088
        0x7f010089
        0x7f01008a
        0x7f01008b
        0x7f01008c
        0x7f01008d
        0x7f01008e
        0x7f01008f
        0x7f010090
        0x7f010091
        0x7f010092
        0x7f010093
        0x7f010094
    .end array-data

    .line 234
    :array_3
    .array-data 4
        0x7f0100f7
        0x7f0100f8
        0x7f0100f9
    .end array-data
.end method
