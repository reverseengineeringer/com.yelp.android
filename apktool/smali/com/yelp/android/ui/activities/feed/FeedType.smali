.class public final enum Lcom/yelp/android/ui/activities/feed/FeedType;
.super Ljava/lang/Enum;
.source "FeedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/feed/FeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/feed/FeedType;

.field public static final enum BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedType;

.field public static final enum FOLLOWING:Lcom/yelp/android/ui/activities/feed/FeedType;

.field public static final enum FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

.field public static final enum ME:Lcom/yelp/android/ui/activities/feed/FeedType;

.field public static final enum NEARBY:Lcom/yelp/android/ui/activities/feed/FeedType;

.field public static final enum USER:Lcom/yelp/android/ui/activities/feed/FeedType;


# instance fields
.field public final jsonKey:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    const-string/jumbo v1, "USER"

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "user"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 8
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    const-string/jumbo v1, "NEARBY"

    const-string/jumbo v2, "v2/nearby"

    const-string/jumbo v3, "feed"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->NEARBY:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 9
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    const-string/jumbo v1, "FRIEND"

    const-string/jumbo v2, "v2/friend"

    const-string/jumbo v3, "feed"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 10
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    const-string/jumbo v1, "FOLLOWING"

    const-string/jumbo v2, "v2/following"

    const-string/jumbo v3, "feed"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->FOLLOWING:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    const-string/jumbo v1, "ME"

    const-string/jumbo v2, "me"

    const-string/jumbo v3, "me"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/yelp/android/ui/activities/feed/FeedType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    const-string/jumbo v1, "BUSINESS"

    const/4 v2, 0x5

    const-string/jumbo v3, "business"

    const-string/jumbo v4, "business"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/feed/FeedType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->NEARBY:Lcom/yelp/android/ui/activities/feed/FeedType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FOLLOWING:Lcom/yelp/android/ui/activities/feed/FeedType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/feed/FeedType;->BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/FeedType;->url:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/FeedType;->jsonKey:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/feed/FeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method
