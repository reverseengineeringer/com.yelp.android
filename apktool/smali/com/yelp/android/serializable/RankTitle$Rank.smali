.class public final enum Lcom/yelp/android/serializable/RankTitle$Rank;
.super Ljava/lang/Enum;
.source "RankTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/RankTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rank"
.end annotation

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
    .line 17
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "TOP_CITY_USER"

    const/4 v2, 0x0

    const v3, 0x7f02057e

    const/4 v4, 0x0

    const v5, 0x7f0e0151

    const v6, 0x7f02048d

    const v7, 0x7f0e0150

    const v8, 0x7f0705fe

    const v9, 0x7f0705fd

    const v10, 0x7f07014d

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_CITY_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "TOP_HOOD_USER"

    const/4 v2, 0x1

    const v3, 0x7f02057f

    const/4 v4, 0x0

    const v5, 0x7f0e00aa

    const v6, 0x7f02048b

    const v7, 0x7f0e002d

    const v8, 0x7f070600

    const v9, 0x7f0705ff

    const v10, 0x7f07014b

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_HOOD_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 35
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "TOP_USER"

    const/4 v2, 0x2

    const v3, 0x7f020581

    const v4, 0x7f0201e7

    const v5, 0x7f0e0153

    const v6, 0x7f02048c

    const v7, 0x7f0e00e6

    const v8, 0x7f070602

    const v9, 0x7f070601

    const v10, 0x7f07014c

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 44
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "REGULAR"

    const/4 v2, 0x3

    const v3, 0x7f02044c

    const v4, 0x7f020147

    const v5, 0x7f0e0151

    const v6, 0x7f02048e

    const v7, 0x7f0e00e6

    const v8, 0x7f0704e5

    const v9, 0x7f0704e5

    const v10, 0x7f07014e

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 53
    new-instance v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    const-string/jumbo v1, "USER"

    const/4 v2, 0x4

    const v3, 0x7f0205a1

    const v4, 0x7f020147

    const v5, 0x7f0e0035

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/RankTitle$Rank;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 16
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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIcon:I

    .line 82
    iput p4, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIconBordered:I

    .line 83
    iput p5, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankColor:I

    .line 84
    iput p6, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardDrawable:I

    .line 85
    iput p7, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardBackgroundColor:I

    .line 86
    iput p8, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mMaleWord:I

    .line 87
    iput p9, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mFemaleWord:I

    .line 88
    iput p10, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mDetailText:I

    .line 89
    return-void
.end method

.method public static rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    if-eqz p0, :cond_0

    .line 137
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 16
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

    .line 150
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne p0, v0, :cond_1

    .line 151
    if-eqz p3, :cond_0

    const v0, 0x7f0706a6

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_1
    return-object v0

    .line 151
    :cond_0
    const v0, 0x7f0706a5

    goto :goto_0

    .line 157
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7f0706b1

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
    const v0, 0x7f0706ac

    goto :goto_2
.end method

.method public getAwardBackgroundColor()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardBackgroundColor:I

    return v0
.end method

.method public getAwardDrawable()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mAwardDrawable:I

    return v0
.end method

.method public getDetailText(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
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
    .line 107
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankColor:I

    return v0
.end method

.method public getRankIcon()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIcon:I

    return v0
.end method

.method public getRankIconBordered()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/yelp/android/serializable/RankTitle$Rank;->mRankIconBordered:I

    return v0
.end method

.method public getRankNameResource(Ljava/lang/Boolean;)I
    .locals 1

    .prologue
    .line 146
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

    .line 167
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne p0, v0, :cond_1

    .line 168
    if-eqz p3, :cond_0

    const v0, 0x7f0706a6

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_1
    return-object v0

    .line 168
    :cond_0
    const v0, 0x7f0706a5

    goto :goto_0

    .line 174
    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7f0706b0

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
    const v0, 0x7f0706ab

    goto :goto_2
.end method

.method public greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z
    .locals 2

    .prologue
    .line 131
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
    .line 127
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
