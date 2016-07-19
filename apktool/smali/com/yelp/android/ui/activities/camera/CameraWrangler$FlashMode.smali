.class public final enum Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
.super Ljava/lang/Enum;
.source "CameraWrangler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/camera/CameraWrangler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

.field public static final enum AUTO:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

.field public static final enum OFF:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

.field public static final enum ON:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

.field public static final enum RED_EYE:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

.field public static final enum TORCH:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;


# instance fields
.field final mode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    const-string/jumbo v1, "OFF"

    const-string/jumbo v2, "off"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->OFF:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    .line 482
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    const-string/jumbo v1, "ON"

    const-string/jumbo v2, "on"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->ON:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    .line 483
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    const-string/jumbo v1, "AUTO"

    const-string/jumbo v2, "auto"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->AUTO:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    .line 484
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    const-string/jumbo v1, "RED_EYE"

    const-string/jumbo v2, "red-eye"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->RED_EYE:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    .line 485
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    const-string/jumbo v1, "TORCH"

    const-string/jumbo v2, "torch"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->TORCH:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    .line 480
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    sget-object v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->OFF:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->ON:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->AUTO:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->RED_EYE:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->TORCH:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->$VALUES:[Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

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
    .line 489
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 490
    iput-object p3, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->mode:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    .locals 5

    .prologue
    .line 494
    invoke-static {}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->values()[Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 495
    iget-object v4, v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->mode:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    :goto_1
    return-object v0

    .line 494
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 499
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->AUTO:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    .locals 1

    .prologue
    .line 480
    const-class v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->$VALUES:[Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    return-object v0
.end method
