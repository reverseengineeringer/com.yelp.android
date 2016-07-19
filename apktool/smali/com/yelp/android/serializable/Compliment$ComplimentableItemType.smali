.class public final enum Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
.super Ljava/lang/Enum;
.source "Compliment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Compliment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComplimentableItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field public static final enum BIZ_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field public static final enum EVENT_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field public static final enum QUICK_TIP:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field public static final enum REVIEW:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field public static final enum UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field public static final enum USER:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field public static final enum USER_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;


# instance fields
.field public final mKey:Ljava/lang/String;

.field private final mToAnotherFemaleUser:I

.field private final mToAnotherMaleUser:I

.field private final mToLoggedInFemaleUser:I

.field private final mToLoggedInMaleUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    const-string/jumbo v1, "REVIEW"

    const v3, 0x7f0701ef

    const v4, 0x7f0701f0

    const v5, 0x7f0701f1

    const v6, 0x7f0701f2

    const-string/jumbo v7, "review_id"

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->REVIEW:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 44
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    const-string/jumbo v4, "BIZ_PHOTO"

    const v6, 0x7f0701e6

    const v7, 0x7f0701e7

    const v8, 0x7f0701e8

    const v9, 0x7f0701e9

    const-string/jumbo v10, "biz_photo_id"

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->BIZ_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 54
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    const-string/jumbo v4, "USER_PHOTO"

    const v6, 0x7f0701eb

    const v7, 0x7f0701ec

    const v8, 0x7f0701ed

    const v9, 0x7f0701ee

    const-string/jumbo v10, "user_photo_id"

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->USER_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 64
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    const-string/jumbo v4, "QUICK_TIP"

    const v6, 0x7f0701f4

    const v7, 0x7f0701f5

    const v8, 0x7f0701f6

    const v9, 0x7f0701f7

    const-string/jumbo v10, "quicktip_id"

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->QUICK_TIP:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 70
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    const-string/jumbo v4, "EVENT_PHOTO"

    const v6, 0x7f0701de

    const v7, 0x7f0701df

    const v8, 0x7f0701e0

    const v9, 0x7f0701ea

    const-string/jumbo v10, ""

    move v5, v14

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->EVENT_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 76
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    const-string/jumbo v4, "USER"

    const/4 v5, 0x5

    const v6, 0x7f0701e1

    const v7, 0x7f0701e2

    const v8, 0x7f0701e3

    const v9, 0x7f0701e4

    const-string/jumbo v10, ""

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->USER:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 82
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    const-string/jumbo v4, "UNKNOWN"

    const/4 v5, 0x6

    const v6, 0x7f0701e1

    const v7, 0x7f0701e2

    const v8, 0x7f0701e3

    const v9, 0x7f0701e4

    const-string/jumbo v10, ""

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->REVIEW:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->BIZ_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->USER_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->QUICK_TIP:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->EVENT_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->USER:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->$VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToAnotherFemaleUser:I

    .line 102
    iput p4, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToAnotherMaleUser:I

    .line 103
    iput p5, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToLoggedInFemaleUser:I

    .line 104
    iput p6, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToLoggedInMaleUser:I

    .line 105
    iput-object p7, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mKey:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->$VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method


# virtual methods
.method public getDescriptionTextResource(Lcom/yelp/android/serializable/User;Z)I
    .locals 1

    .prologue
    .line 118
    if-eqz p2, :cond_2

    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToLoggedInMaleUser:I

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_1
    iget v0, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToAnotherFemaleUser:I

    goto :goto_0

    .line 121
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToAnotherMaleUser:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mToLoggedInFemaleUser:I

    goto :goto_0
.end method
