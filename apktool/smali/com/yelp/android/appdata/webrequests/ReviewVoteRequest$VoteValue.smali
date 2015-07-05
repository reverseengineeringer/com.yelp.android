.class public final enum Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;
.super Ljava/lang/Enum;
.source "ReviewVoteRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

.field public static final enum COOL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

.field public static final enum FUNNY:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

.field public static final enum USEFUL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    const-string/jumbo v1, "USEFUL"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->USEFUL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    const-string/jumbo v1, "FUNNY"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->FUNNY:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    const-string/jumbo v1, "COOL"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->COOL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->USEFUL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->FUNNY:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->COOL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    return-object v0
.end method
