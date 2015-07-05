.class final enum Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;
.super Ljava/lang/Enum;
.source "ViewTakePhotoOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

.field public static final enum AUTOFOCUS:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

.field public static final enum PREVIEW:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

.field public static final enum SHUTTER:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    const-string/jumbo v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->PREVIEW:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 43
    new-instance v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    const-string/jumbo v1, "AUTOFOCUS"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->AUTOFOCUS:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 44
    new-instance v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    const-string/jumbo v1, "SHUTTER"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->SHUTTER:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    sget-object v1, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->PREVIEW:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->AUTOFOCUS:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->SHUTTER:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->$VALUES:[Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->$VALUES:[Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    return-object v0
.end method
