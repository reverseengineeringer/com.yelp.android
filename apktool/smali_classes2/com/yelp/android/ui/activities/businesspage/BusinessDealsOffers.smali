.class abstract enum Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
.super Ljava/lang/Enum;
.source "BusinessDealsOffers.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/businesspage/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;",
        ">;",
        "Lcom/yelp/android/ui/activities/businesspage/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

.field public static final enum CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

.field public static final enum CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

.field public static final enum DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;


# instance fields
.field private icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;

    const-string/jumbo v1, "DEAL"

    const v2, 0x7f0201f0

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    .line 47
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$2;

    const-string/jumbo v1, "CHECK_IN_OFFER"

    const v2, 0x7f020143

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    .line 84
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$3;

    const-string/jumbo v1, "CALL_TO_ACTION"

    const v2, 0x7f0200fa

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput p3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->icon:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    return-object v0
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->icon:I

    return v0
.end method

.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isSubtitleExpanded()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public setIcon(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->icon:I

    .line 138
    return-void
.end method
