.class public final enum Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;
.super Ljava/lang/Enum;
.source "ReviewVoteRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

.field public static final enum ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

.field public static final enum REMOVE:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    .line 33
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->REMOVE:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->REMOVE:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    return-object v0
.end method
