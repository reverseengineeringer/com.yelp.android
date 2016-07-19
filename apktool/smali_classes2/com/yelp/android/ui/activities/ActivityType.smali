.class public final enum Lcom/yelp/android/ui/activities/ActivityType;
.super Ljava/lang/Enum;
.source "ActivityType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum BOOKMARK:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum CHECK_IN:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum EVENT_CREATED:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum QUICKTIP:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum REVIEW:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum REVIEW_DRAFT:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum ROTD:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum TALK_POST:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum TRANSACTION_SEARCH:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum USER_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum VIDEO:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum WEEKLY:Lcom/yelp/android/ui/activities/ActivityType;

.field public static final enum YNRA:Lcom/yelp/android/ui/activities/ActivityType;


# instance fields
.field private final mActivityTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "BOOKMARK"

    const-string/jumbo v2, "bookmark"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->BOOKMARK:Lcom/yelp/android/ui/activities/ActivityType;

    .line 9
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "BUSINESS_PHOTO"

    const-string/jumbo v2, "business_photo"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

    .line 10
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "BUSINESS_RECOMMENDATION"

    const-string/jumbo v2, "business_recommendation"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/ActivityType;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "CHECK_IN"

    const-string/jumbo v2, "check_in"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->CHECK_IN:Lcom/yelp/android/ui/activities/ActivityType;

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "EVENT_CREATED"

    const-string/jumbo v2, "event_created"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->EVENT_CREATED:Lcom/yelp/android/ui/activities/ActivityType;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "EVENT_SUBSCRIPTION"

    const/4 v2, 0x5

    const-string/jumbo v3, "event_subscription"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/ActivityType;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "QUICKTIP"

    const/4 v2, 0x6

    const-string/jumbo v3, "quicktip"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->QUICKTIP:Lcom/yelp/android/ui/activities/ActivityType;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "REVIEW"

    const/4 v2, 0x7

    const-string/jumbo v3, "review"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->REVIEW:Lcom/yelp/android/ui/activities/ActivityType;

    .line 16
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "REVIEW_DRAFT"

    const/16 v2, 0x8

    const-string/jumbo v3, "review_draft"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->REVIEW_DRAFT:Lcom/yelp/android/ui/activities/ActivityType;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "ROTD"

    const/16 v2, 0x9

    const-string/jumbo v3, "rotd"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->ROTD:Lcom/yelp/android/ui/activities/ActivityType;

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "TALK_POST"

    const/16 v2, 0xa

    const-string/jumbo v3, "talk_post"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->TALK_POST:Lcom/yelp/android/ui/activities/ActivityType;

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "TRANSACTION_SEARCH"

    const/16 v2, 0xb

    const-string/jumbo v3, "transaction_search"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->TRANSACTION_SEARCH:Lcom/yelp/android/ui/activities/ActivityType;

    .line 21
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "USER_PHOTO"

    const/16 v2, 0xc

    const-string/jumbo v3, "user_photo"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->USER_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

    .line 22
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "VIDEO"

    const/16 v2, 0xd

    const-string/jumbo v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->VIDEO:Lcom/yelp/android/ui/activities/ActivityType;

    .line 23
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "WEEKLY"

    const/16 v2, 0xe

    const-string/jumbo v3, "weekly"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->WEEKLY:Lcom/yelp/android/ui/activities/ActivityType;

    .line 25
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityType;

    const-string/jumbo v1, "YNRA"

    const/16 v2, 0xf

    const-string/jumbo v3, "ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->YNRA:Lcom/yelp/android/ui/activities/ActivityType;

    .line 7
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/yelp/android/ui/activities/ActivityType;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityType;->BOOKMARK:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityType;->BUSINESS_RECOMMENDATION:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityType;->CHECK_IN:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityType;->EVENT_CREATED:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->EVENT_SUBSCRIPTION:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->QUICKTIP:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->REVIEW:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->REVIEW_DRAFT:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->ROTD:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->TALK_POST:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->TRANSACTION_SEARCH:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->USER_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->VIDEO:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->WEEKLY:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->YNRA:Lcom/yelp/android/ui/activities/ActivityType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityType;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/yelp/android/ui/activities/ActivityType;->mActivityTypeName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/yelp/android/ui/activities/ActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/ActivityType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityType;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/ActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/ActivityType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityType;->mActivityTypeName:Ljava/lang/String;

    return-object v0
.end method
