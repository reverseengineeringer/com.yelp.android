.class public final enum Lcom/yelp/android/analytics/iris/KahunaAttributeIri;
.super Ljava/lang/Enum;
.source "KahunaAttributeIri.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/KahunaAttributeIri;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum BusinessCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum Country:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum FriendCount:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum KahunaEnabled:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum LastSearchCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum Location:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

.field public static final enum ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;


# instance fields
.field private mAttribute:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "FirstName"

    const-string/jumbo v2, "first_name"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 5
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "FriendCount"

    const-string/jumbo v2, "friend_count"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FriendCount:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 6
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "KahunaEnabled"

    const-string/jumbo v2, "kahuna_enabled"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->KahunaEnabled:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 7
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "BusinessCategory"

    const-string/jumbo v2, "last_biz_view_category"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->BusinessCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 8
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "LastSearchCategory"

    const-string/jumbo v2, "last_search_category"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->LastSearchCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 9
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "Location"

    const/4 v2, 0x5

    const-string/jumbo v3, "location"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->Location:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 10
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "ReviewDraftBusinessId"

    const/4 v2, 0x6

    const-string/jumbo v3, "review_draft_biz_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 11
    new-instance v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "Country"

    const/4 v2, 0x7

    const-string/jumbo v3, "country"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->Country:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FriendCount:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->KahunaEnabled:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->BusinessCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->LastSearchCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->Location:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->Country:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->$VALUES:[Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

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
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->mAttribute:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/KahunaAttributeIri;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/KahunaAttributeIri;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->$VALUES:[Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    return-object v0
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->mAttribute:Ljava/lang/String;

    return-object v0
.end method
