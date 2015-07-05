.class public final enum Lcom/yelp/android/serializable/RankTitle$Rank;
.super Ljava/lang/Enum;
.source "RankTitle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/RankTitle$Rank;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/RankTitle$Rank;

.field public static final enum REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

.field public static final enum TOP_CITY_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

.field public static final enum TOP_HOOD_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

.field public static final enum TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

.field public static final enum USER:Lcom/yelp/android/serializable/RankTitle$Rank;


# instance fields
.field private final mAwardBackgroundColor:I

.field private final mAwardDrawable:I

.field private final mDetailText:I

.field private final mFemaleWord:I

.field private final mMaleWord:I

.field private final mRankColor:I

.field private final mRankIcon:I

.field private final mRankIconBordered:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 18
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "TOP_CITY_USER"

    const/4 v2, 0x0

    const v3, 0x7f0203eb

    const/4 v4, 0x0

    const v5, 0x7f0a0100

    const v6, 0x7f020342

    const v7, 0x7f0a00ff

    const v8, 0x7f070611

    const v9, 0x7f070610

    const v10, 0x7f0700ca

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_CITY_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 22
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "TOP_HOOD_USER"

    const/4 v2, 0x1

    const v3, 0x7f0203ec

    const/4 v4, 0x0

    const v5, 0x7f0a0071

    const v6, 0x7f020340

    const v7, 0x7f0a0011

    const v8, 0x7f070613

    const v9, 0x7f070612

    const v10, 0x7f0700c8

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_HOOD_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "TOP_USER"

    const/4 v2, 0x2

    const v3, 0x7f0203ee

    const v4, 0x7f02016d

    const v5, 0x7f0a0102

    const v6, 0x7f020341

    const v7, 0x7f0a00a0

    const v8, 0x7f070615

    const v9, 0x7f070614

    const v10, 0x7f0700c9

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 30
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "REGULAR"

    const/4 v2, 0x3

    const v3, 0x7f020316

    const v4, 0x7f0200f1

    const v5, 0x7f0a0100

    const v6, 0x7f020343

    const v7, 0x7f0a00a0

    const v8, 0x7f0704cc

    const v9, 0x7f0704cc

    const v10, 0x7f0700cb

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 34
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "USER"

    const/4 v2, 0x4

    const v3, 0x7f020401

    const v4, 0x7f0200f1

    const v5, 0x7f0a0019

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/serializable/RankTitle$Rank;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_CITY_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_HOOD_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->$VALUES:[Lcom/yelp/android/serializable/RankTitle$Rank;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIcon:I

    .line 49
    iput p4, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIconBordered:I

    .line 50
    iput p5, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankColor:I

    .line 51
    iput p6, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardDrawable:I

    .line 52
    iput p7, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardBackgroundColor:I

    .line 53
    iput p8, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mMaleWord:I

    .line 54
    iput p9, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mFemaleWord:I

    .line 55
    iput p10, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mDetailText:I

    .line 56
    return-void
.end method

.method public static rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p0, :cond_0

    .line 104
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->$VALUES:[Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/RankTitle$Rank;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/RankTitle$Rank;

    return-object v0
.end method


# virtual methods
.method public getAnnouncement(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne p0, v0, :cond_1

    .line 118
    if-eqz p3, :cond_0

    const v0, 0x7f0706d5

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1
    return-object v0

    .line 118
    :cond_0
    const v0, 0x7f0706d4

    goto :goto_0

    .line 121
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7f0706db

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankNameResource(Ljava/lang/Boolean;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0706d7

    goto :goto_2
.end method

.method public getAwardBackgroundColor()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardBackgroundColor:I

    return v0
.end method

.method public getAwardDrawable()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardDrawable:I

    return v0
.end method

.method public getDetailText(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mDetailText:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankNameResource(Ljava/lang/Boolean;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRankColor()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankColor:I

    return v0
.end method

.method public getRankIcon()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIcon:I

    return v0
.end method

.method public getRankIconBordered()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIconBordered:I

    return v0
.end method

.method public getRankNameResource(Ljava/lang/Boolean;)I
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mMaleWord:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mFemaleWord:I

    goto :goto_0
.end method

.method public getTitle(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne p0, v0, :cond_1

    .line 129
    if-eqz p3, :cond_0

    const v0, 0x7f0706d5

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_1
    return-object v0

    .line 129
    :cond_0
    const v0, 0x7f0706d4

    goto :goto_0

    .line 132
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7f0706da

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankNameResource(Ljava/lang/Boolean;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0706d6

    goto :goto_2
.end method

.method public greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lessThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
