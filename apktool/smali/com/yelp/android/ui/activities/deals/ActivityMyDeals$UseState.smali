.class final enum Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;
.super Ljava/lang/Enum;
.source "ActivityMyDeals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

.field public static final enum UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

.field public static final enum USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    const-string/jumbo v1, "UNUSED"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    .line 67
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    const-string/jumbo v1, "USED"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->$VALUES:[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->$VALUES:[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    return-object v0
.end method
