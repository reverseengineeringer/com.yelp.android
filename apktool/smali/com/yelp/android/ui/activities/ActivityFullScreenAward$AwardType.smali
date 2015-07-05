.class public abstract enum Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
.super Ljava/lang/Enum;
.source "ActivityFullScreenAward.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;


# instance fields
.field public final awardTitle:I

.field public final backgroundColorId:I

.field public final iconId:I

.field public final titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v4, 0x7f0a0028

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$1;

    const-string/jumbo v1, "FirstToReview"

    const v3, 0x7f070287

    const v5, 0x7f02033c

    const v6, 0x7f0706d8

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$1;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 49
    new-instance v5, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$2;

    const-string/jumbo v6, "FirstToTip"

    const v8, 0x7f07028c

    const v10, 0x7f02033d

    const v11, 0x7f0706d9

    move v9, v4

    invoke-direct/range {v5 .. v11}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$2;-><init>(Ljava/lang/String;IIIII)V

    sput-object v5, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->awardTitle:I

    .line 67
    iput p4, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->backgroundColorId:I

    .line 68
    iput p5, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->iconId:I

    .line 69
    iput p6, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->titleId:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILcom/yelp/android/ui/activities/cf;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-object v0
.end method


# virtual methods
.method public abstract getBodyText(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
