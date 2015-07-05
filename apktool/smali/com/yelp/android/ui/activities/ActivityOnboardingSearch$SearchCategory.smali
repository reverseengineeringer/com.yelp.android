.class abstract enum Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;
.super Ljava/lang/Enum;
.source "ActivityOnboardingSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

.field public static final enum BARS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

.field public static final enum COFFEE:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

.field public static final enum RESTAURANTS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;


# instance fields
.field private final mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

.field private final mIconResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory$1;

    const-string/jumbo v1, "RESTAURANTS"

    const v2, 0x7f020322

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSearchRestaurants:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory$1;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->RESTAURANTS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    .line 35
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory$2;

    const-string/jumbo v1, "BARS"

    const v2, 0x7f02008c

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSearchBars:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory$2;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->BARS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory$3;

    const-string/jumbo v1, "COFFEE"

    const v2, 0x7f0200fa

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSearchCoffee:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory$3;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->COFFEE:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->RESTAURANTS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->BARS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->COFFEE:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->mIconResId:I

    .line 55
    iput-object p4, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/ui/activities/dc;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    return-object v0
.end method


# virtual methods
.method public abstract getCategory()Lcom/yelp/android/serializable/Category;
.end method

.method public getEventIri()Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->mEventIri:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->mIconResId:I

    return v0
.end method
