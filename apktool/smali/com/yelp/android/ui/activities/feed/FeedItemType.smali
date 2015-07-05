.class public final enum Lcom/yelp/android/ui/activities/feed/FeedItemType;
.super Ljava/lang/Enum;
.source "FeedItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/feed/FeedItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field public static final enum REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;


# instance fields
.field private final mItemTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BUSINESS_PHOTO"

    const-string/jumbo v2, "business_photo"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 10
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS"

    const-string/jumbo v2, "business_photo_grouped_by_user_business"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "REVIEW"

    const-string/jumbo v2, "review"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "BOOKMARK"

    const-string/jumbo v2, "bookmark"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    const-string/jumbo v1, "QUICKTIP"

    const-string/jumbo v2, "quicktip"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->mItemTypeName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/feed/FeedItemType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/feed/FeedItemType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->$VALUES:[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/feed/FeedItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/feed/FeedItemType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedItemType;->mItemTypeName:Ljava/lang/String;

    return-object v0
.end method
