.class public final enum Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;
.super Ljava/lang/Enum;
.source "CheckInRankingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

.field public static final enum ALL:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

.field public static final enum FRIENDS:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

.field public static final enum WEEK:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    const-string/jumbo v1, "WEEK"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->WEEK:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->ALL:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    const-string/jumbo v1, "FRIENDS"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->FRIENDS:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->WEEK:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->ALL:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->FRIENDS:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->$VALUES:[Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->$VALUES:[Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    return-object v0
.end method
