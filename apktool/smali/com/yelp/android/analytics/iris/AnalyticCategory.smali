.class public final enum Lcom/yelp/android/analytics/iris/AnalyticCategory;
.super Ljava/lang/Enum;
.source "AnalyticCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/AnalyticCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/AnalyticCategory;

.field public static final enum AUTO:Lcom/yelp/android/analytics/iris/AnalyticCategory;

.field public static final enum ERROR:Lcom/yelp/android/analytics/iris/AnalyticCategory;

.field public static final enum EVENT:Lcom/yelp/android/analytics/iris/AnalyticCategory;

.field public static final enum REQUEST:Lcom/yelp/android/analytics/iris/AnalyticCategory;

.field public static final enum TIMING:Lcom/yelp/android/analytics/iris/AnalyticCategory;

.field public static final enum VIEW:Lcom/yelp/android/analytics/iris/AnalyticCategory;


# instance fields
.field private final mCategoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    const-string/jumbo v1, "VIEW"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/analytics/iris/AnalyticCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->VIEW:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    .line 17
    new-instance v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    const-string/jumbo v1, "EVENT"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/analytics/iris/AnalyticCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->EVENT:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    .line 22
    new-instance v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    const-string/jumbo v1, "AUTO"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/analytics/iris/AnalyticCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->AUTO:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    .line 27
    new-instance v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    const-string/jumbo v1, "REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/analytics/iris/AnalyticCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->REQUEST:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    .line 31
    new-instance v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/analytics/iris/AnalyticCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->ERROR:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    .line 36
    new-instance v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    const-string/jumbo v1, "TIMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/analytics/iris/AnalyticCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->TIMING:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/AnalyticCategory;

    sget-object v1, Lcom/yelp/android/analytics/iris/AnalyticCategory;->VIEW:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/analytics/iris/AnalyticCategory;->EVENT:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/AnalyticCategory;->AUTO:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/AnalyticCategory;->REQUEST:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/AnalyticCategory;->ERROR:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/AnalyticCategory;->TIMING:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->$VALUES:[Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/analytics/iris/AnalyticCategory;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->mCategoryName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/AnalyticCategory;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/AnalyticCategory;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->$VALUES:[Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/AnalyticCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-object v0
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method
