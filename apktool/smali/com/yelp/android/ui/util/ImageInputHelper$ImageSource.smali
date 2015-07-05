.class public final enum Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
.super Ljava/lang/Enum;
.source "ImageInputHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FACEBOOK_PROFILE_PHOTO:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum FRONT_CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field public static final enum GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;


# instance fields
.field public final res:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v2, 0x7f070216

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "CAMERA"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 93
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "FRONT_CAMERA"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FRONT_CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 97
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "GALLERY"

    const v2, 0x7f070215

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 102
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const-string/jumbo v1, "FACEBOOK_PROFILE_PHOTO"

    const v2, 0x7f070214

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FACEBOOK_PROFILE_PHOTO:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FRONT_CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FACEBOOK_PROFILE_PHOTO:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->$VALUES:[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 123
    new-instance v0, Lcom/yelp/android/ui/util/am;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/am;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->res:I

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->$VALUES:[Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void
.end method
