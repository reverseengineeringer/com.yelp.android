.class public final enum Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;
.super Ljava/lang/Enum;
.source "MarkOfferRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

.field public static final enum MARK_USED:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

.field public static final enum REMOVE:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    const-string/jumbo v1, "REMOVE"

    const-string/jumbo v2, "check_ins/offer/remove"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->REMOVE:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    .line 11
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    const-string/jumbo v1, "MARK_USED"

    const-string/jumbo v2, "check_ins/offer/mark_used"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->MARK_USED:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->REMOVE:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->MARK_USED:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->mPath:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->mPath:Ljava/lang/String;

    return-object v0
.end method
