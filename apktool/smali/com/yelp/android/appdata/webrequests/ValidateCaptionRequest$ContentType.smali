.class public final enum Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;
.super Ljava/lang/Enum;
.source "ValidateCaptionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

.field public static final enum PHOTO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

.field public static final enum VIDEO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;


# instance fields
.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "/business/photo/caption/validate"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->PHOTO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    .line 15
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    const-string/jumbo v1, "VIDEO"

    const-string/jumbo v2, "/business/video/caption/validate"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->VIDEO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->PHOTO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->VIDEO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->mUri:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    return-object v0
.end method


# virtual methods
.method public getValidateUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->mUri:Ljava/lang/String;

    return-object v0
.end method
