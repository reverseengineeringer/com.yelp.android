.class public final enum Lcom/yelp/android/serializable/FeedEntry$ItemType;
.super Ljava/lang/Enum;
.source "FeedEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/FeedEntry$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/FeedEntry$ItemType;

.field public static final enum Bookmark:Lcom/yelp/android/serializable/FeedEntry$ItemType;

.field public static final enum BusinessPhoto:Lcom/yelp/android/serializable/FeedEntry$ItemType;

.field public static final enum CheckIn:Lcom/yelp/android/serializable/FeedEntry$ItemType;

.field public static final enum EventCreated:Lcom/yelp/android/serializable/FeedEntry$ItemType;

.field public static final enum QuickTip:Lcom/yelp/android/serializable/FeedEntry$ItemType;

.field public static final enum Review:Lcom/yelp/android/serializable/FeedEntry$ItemType;

.field public static final enum ReviewDraft:Lcom/yelp/android/serializable/FeedEntry$ItemType;


# instance fields
.field protected final iri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    const-string/jumbo v1, "QuickTip"

    const-string/jumbo v2, "quicktip"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/FeedEntry$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->QuickTip:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    .line 50
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    const-string/jumbo v1, "Review"

    const-string/jumbo v2, "review"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/FeedEntry$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->Review:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    .line 51
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    const-string/jumbo v1, "BusinessPhoto"

    const-string/jumbo v2, "business_photo"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/serializable/FeedEntry$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->BusinessPhoto:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    .line 52
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    const-string/jumbo v1, "EventCreated"

    const-string/jumbo v2, "event_created"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/serializable/FeedEntry$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->EventCreated:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    .line 53
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    const-string/jumbo v1, "Bookmark"

    const-string/jumbo v2, "bookmark"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/serializable/FeedEntry$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->Bookmark:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    .line 54
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    const-string/jumbo v1, "ReviewDraft"

    const/4 v2, 0x5

    const-string/jumbo v3, "review_draft"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/serializable/FeedEntry$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->ReviewDraft:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    .line 55
    new-instance v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    const-string/jumbo v1, "CheckIn"

    const/4 v2, 0x6

    const-string/jumbo v3, "check_in"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/serializable/FeedEntry$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->CheckIn:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yelp/android/serializable/FeedEntry$ItemType;

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$ItemType;->QuickTip:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$ItemType;->Review:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$ItemType;->BusinessPhoto:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$ItemType;->EventCreated:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/serializable/FeedEntry$ItemType;->Bookmark:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$ItemType;->ReviewDraft:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/serializable/FeedEntry$ItemType;->CheckIn:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->$VALUES:[Lcom/yelp/android/serializable/FeedEntry$ItemType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->iri:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->$VALUES:[Lcom/yelp/android/serializable/FeedEntry$ItemType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/FeedEntry$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method
