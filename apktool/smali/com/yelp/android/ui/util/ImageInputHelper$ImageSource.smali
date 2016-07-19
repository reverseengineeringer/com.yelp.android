.class public final enum Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
.super Ljava/lang/Enum;
.source "ImageInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ImageInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum FACEBOOK_PROFILE_PHOTO:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum FRONT_CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum SHARE:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;


# instance fields
.field public final res:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "CAMERA"

    const v2, 0x7f070262

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 107
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "FRONT_CAMERA"

    const v2, 0x7f070262

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FRONT_CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 111
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "GALLERY"

    const v2, 0x7f070261

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 116
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "FACEBOOK_PROFILE_PHOTO"

    const v2, 0x7f070260

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FACEBOOK_PROFILE_PHOTO:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 120
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "SHARE"

    const v2, 0x7f070261

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->SHARE:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FRONT_CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FACEBOOK_PROFILE_PHOTO:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->SHARE:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->$VALUES:[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->res:I

    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->$VALUES:[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method
