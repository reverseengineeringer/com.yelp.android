.class public final enum Lcom/yelp/android/serializable/FeedEntry$EntryType;
.super Ljava/lang/Enum;
.source "FeedEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/FeedEntry$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum BIZPHOTO:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum BOOKMARK:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum BUSINESS_PHOTO:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum CHECKIN:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum CHECK_IN:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum EVENT:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum GENERIC:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum QUICKTIP:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum REVIEW:Lcom/yelp/android/serializable/FeedEntry$EntryType;

.field public static final enum REVIEWDRAFT:Lcom/yelp/android/serializable/FeedEntry$EntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "CHECKIN"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->CHECKIN:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 210
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "CHECK_IN"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->CHECK_IN:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 211
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "BIZPHOTO"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BIZPHOTO:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 212
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "BUSINESS_PHOTO"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BUSINESS_PHOTO:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 213
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "QUICKTIP"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->QUICKTIP:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 214
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 215
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "REVIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->REVIEW:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 216
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->EVENT:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 217
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "REVIEWDRAFT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->REVIEWDRAFT:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 218
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "GENERIC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->GENERIC:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 219
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    const-string/jumbo v1, "BOOKMARK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/FeedEntry$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BOOKMARK:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    .line 208
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/yelp/android/serializable/FeedEntry$EntryType;

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$EntryType;->CHECKIN:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$EntryType;->CHECK_IN:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BIZPHOTO:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BUSINESS_PHOTO:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$EntryType;->QUICKTIP:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BUSINESS_PHOTO_GROUPED_BY_USER_BUSINESS:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$EntryType;->REVIEW:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$EntryType;->EVENT:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$EntryType;->REVIEWDRAFT:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$EntryType;->GENERIC:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$EntryType;->BOOKMARK:Lcom/yelp/android/serializable/FeedEntry$EntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->$VALUES:[Lcom/yelp/android/serializable/FeedEntry$EntryType;

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
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/FeedEntry$EntryType;
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/FeedEntry$EntryType;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$EntryType;->$VALUES:[Lcom/yelp/android/serializable/FeedEntry$EntryType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/FeedEntry$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/FeedEntry$EntryType;

    return-object v0
.end method
