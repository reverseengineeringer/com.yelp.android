.class abstract enum Lcom/yelp/android/ui/activities/profile/ActionToTry;
.super Ljava/lang/Enum;
.source "ActionToTry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/profile/ActionToTry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/profile/ActionToTry;

.field public static final enum BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/profile/ActionToTry;

.field public static final enum CHECKIN:Lcom/yelp/android/ui/activities/profile/ActionToTry;

.field public static final enum FRIENDS:Lcom/yelp/android/ui/activities/profile/ActionToTry;

.field public static final enum TIPS:Lcom/yelp/android/ui/activities/profile/ActionToTry;


# instance fields
.field final iconRes:I

.field final iri:Lcom/yelp/android/analytics/iris/EventIri;

.field final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActionToTry$1;

    const-string/jumbo v1, "FRIENDS"

    const v3, 0x7f070092

    const v4, 0x7f020306

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->ProfileToTryAddFriends:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/profile/ActionToTry$1;-><init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->FRIENDS:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    .line 29
    new-instance v3, Lcom/yelp/android/ui/activities/profile/ActionToTry$2;

    const-string/jumbo v4, "CHECKIN"

    const v6, 0x7f070135

    const v7, 0x7f0202ff

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->ProfileToTryCheckIn:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/profile/ActionToTry$2;-><init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/profile/ActionToTry;->CHECKIN:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    .line 42
    new-instance v3, Lcom/yelp/android/ui/activities/profile/ActionToTry$3;

    const-string/jumbo v4, "BUSINESS_PHOTO"

    const v6, 0x7f07007e

    const v7, 0x7f0202fe

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->ProfileToTryBusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/profile/ActionToTry$3;-><init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/profile/ActionToTry;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    .line 55
    new-instance v3, Lcom/yelp/android/ui/activities/profile/ActionToTry$4;

    const-string/jumbo v4, "TIPS"

    const v6, 0x7f070083

    const v7, 0x7f02030d

    sget-object v8, Lcom/yelp/android/analytics/iris/EventIri;->ProfileToTryAddTip:Lcom/yelp/android/analytics/iris/EventIri;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/ui/activities/profile/ActionToTry$4;-><init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;)V

    sput-object v3, Lcom/yelp/android/ui/activities/profile/ActionToTry;->TIPS:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/activities/profile/ActionToTry;

    sget-object v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;->FRIENDS:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;->CHECKIN:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/ui/activities/profile/ActionToTry;->TIPS:Lcom/yelp/android/ui/activities/profile/ActionToTry;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->$VALUES:[Lcom/yelp/android/ui/activities/profile/ActionToTry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->titleRes:I

    .line 78
    iput p4, p0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->iconRes:I

    .line 79
    iput-object p5, p0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->iri:Lcom/yelp/android/analytics/iris/EventIri;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/ui/activities/profile/ActionToTry$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/ui/activities/profile/ActionToTry;-><init>(Ljava/lang/String;IIILcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/ActionToTry;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/profile/ActionToTry;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ActionToTry;->$VALUES:[Lcom/yelp/android/ui/activities/profile/ActionToTry;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/profile/ActionToTry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/profile/ActionToTry;

    return-object v0
.end method


# virtual methods
.method abstract intentToStartAction(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
.end method

.method abstract shouldTry(Lcom/yelp/android/serializable/User;)Z
.end method
