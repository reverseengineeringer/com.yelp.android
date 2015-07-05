.class public final enum Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;
.super Ljava/lang/Enum;
.source "BusinessSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

.field public static final enum DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

.field public static final enum MONOCLE:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

.field public static final enum NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

.field public static final enum UNKNOWN:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->UNKNOWN:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 86
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 90
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    const-string/jumbo v1, "MONOCLE"

    invoke-direct {v0, v1, v5, v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->MONOCLE:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 95
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    const-string/jumbo v1, "NEARBY"

    invoke-direct {v0, v1, v4, v6}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 78
    new-array v0, v6, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->UNKNOWN:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->MONOCLE:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->id:I

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    return-object v0
.end method
