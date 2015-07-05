.class public final enum Lcom/yelp/android/serializable/User$EliteYear$TYPE;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/User$EliteYear$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/User$EliteYear$TYPE;

.field public static final enum DEFAULT:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

.field public static final enum FIVE_YEAR:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

.field public static final enum TEN_YEAR:Lcom/yelp/android/serializable/User$EliteYear$TYPE;


# instance fields
.field private final mBackground:I

.field private final mBadge:I

.field private final mBadgeShort:I

.field private final mMinimumYears:I

.field private final mUserProfileStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    const-string/jumbo v1, "TEN_YEAR"

    const/16 v3, 0xa

    const v4, 0x7f0f0180

    const v5, 0x7f010045

    const v6, 0x7f010046

    const v7, 0x7f0201ae

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->TEN_YEAR:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    .line 62
    new-instance v3, Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    const-string/jumbo v4, "FIVE_YEAR"

    const/4 v6, 0x5

    const v7, 0x7f0f0181

    const v8, 0x7f010043

    const v9, 0x7f010044

    const v10, 0x7f0201af

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->FIVE_YEAR:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    .line 68
    new-instance v3, Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    const-string/jumbo v4, "DEFAULT"

    const v7, 0x7f0f017f

    const v8, 0x7f010041

    const v9, 0x7f010042

    const v10, 0x7f0201ad

    move v5, v12

    move v6, v2

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->DEFAULT:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    sget-object v1, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->TEN_YEAR:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->FIVE_YEAR:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->DEFAULT:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->$VALUES:[Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mMinimumYears:I

    .line 102
    iput p4, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mUserProfileStyle:I

    .line 103
    iput p5, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mBadge:I

    .line 104
    iput p6, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mBadgeShort:I

    .line 105
    iput p7, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mBackground:I

    .line 106
    return-void
.end method

.method public static final getBadgeByYear(I)Lcom/yelp/android/serializable/User$EliteYear$TYPE;
    .locals 5

    .prologue
    .line 131
    invoke-static {}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->values()[Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 132
    iget v4, v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mMinimumYears:I

    if-lt p0, v4, :cond_0

    .line 136
    :goto_1
    return-object v0

    .line 131
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->DEFAULT:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    goto :goto_1
.end method

.method public static final getTypeByOrdinal(I)Lcom/yelp/android/serializable/User$EliteYear$TYPE;
    .locals 1

    .prologue
    .line 116
    if-ltz p0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->DEFAULT:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 117
    invoke-static {}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->values()[Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->DEFAULT:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/User$EliteYear$TYPE;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/User$EliteYear$TYPE;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->$VALUES:[Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/User$EliteYear$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    return-object v0
.end method


# virtual methods
.method public getBackground()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mBackground:I

    return v0
.end method

.method public getBadge(Z)I
    .locals 1

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mBadgeShort:I

    .line 159
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mBadge:I

    goto :goto_0
.end method

.method public getUserProfileStyle()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->mUserProfileStyle:I

    return v0
.end method
