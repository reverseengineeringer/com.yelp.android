.class final enum Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;
.super Ljava/lang/Enum;
.source "ActivityFullScreenAward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityFullScreenAward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AwardCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

.field public static final enum CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

.field public static final enum FirstReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

.field public static final enum FirstTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    const-string/jumbo v1, "FirstReview"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->FirstReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    .line 64
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    const-string/jumbo v1, "FirstTip"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->FirstTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    .line 65
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    const-string/jumbo v1, "CheckIn"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->FirstReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->FirstTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    return-object v0
.end method
