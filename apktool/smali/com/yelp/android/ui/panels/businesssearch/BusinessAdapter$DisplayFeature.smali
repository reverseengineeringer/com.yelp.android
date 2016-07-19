.class public final enum Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;
.super Ljava/lang/Enum;
.source "BusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum AD:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum ANNOTATIONS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum BOOKMARK_BUTTON:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum CHECKINS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum DIVIDER:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum NUMBERED:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

.field public static final enum REVIEW_EXCERPT:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "ALTERNATE_NAMES"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 101
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "DISTANCE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 105
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "CATEGORY"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 106
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "CLOSES_IN"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 107
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "PRICE"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 113
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "NUMBERED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->NUMBERED:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 114
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 115
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "AD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->AD:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 116
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "RATING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 117
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "CHECKINS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CHECKINS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 118
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "BOOKMARK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 119
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "ANNOTATIONS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ANNOTATIONS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 120
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "DIVIDER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DIVIDER:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 121
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "BOOKMARK_BUTTON"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK_BUTTON:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 125
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const-string/jumbo v1, "REVIEW_EXCERPT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->REVIEW_EXCERPT:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    .line 94
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->NUMBERED:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->AD:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CHECKINS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ANNOTATIONS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DIVIDER:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK_BUTTON:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->REVIEW_EXCERPT:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->$VALUES:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->$VALUES:[Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    return-object v0
.end method
