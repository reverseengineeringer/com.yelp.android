.class public abstract enum Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
.super Ljava/lang/Enum;
.source "ActivityFullScreenAward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityFullScreenAward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "AwardType"
.end annotation

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

.field public static final enum Baron:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum Baroness:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum Duchess:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum Duke:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum King:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum Queen:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum RegularFemale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field public static final enum RegularMale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;


# instance fields
.field public final awardCategory:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

.field public final backgroundColorId:I

.field public final iconId:I

.field public final starBurstAlpha:F

.field public final subTitleId:I

.field public final textColorId:I

.field public final titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$1;

    const-string/jumbo v1, "FirstToReview"

    const/4 v2, 0x0

    const v3, 0x7f0702d9

    const v4, 0x7f0706ad

    const v5, 0x7f0e0141

    const v6, 0x7f0e0018

    const v7, 0x7f02047f

    const v8, 0x3dcccccd    # 0.1f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->FirstReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$1;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 87
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$2;

    const-string/jumbo v1, "FirstToTip"

    const/4 v2, 0x1

    const v3, 0x7f0702de

    const v4, 0x7f0706ae

    const v5, 0x7f0e0141

    const v6, 0x7f0e0018

    const v7, 0x7f020480

    const v8, 0x3dcccccd    # 0.1f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->FirstTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$2;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 100
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$3;

    const-string/jumbo v1, "King"

    const/4 v2, 0x2

    const v3, 0x7f0706af

    const/4 v4, 0x0

    const v5, 0x7f0e0141

    const v6, 0x7f0e001c

    const v7, 0x7f020481

    const v8, 0x3d4ccccd    # 0.05f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$3;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->King:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 113
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$4;

    const-string/jumbo v1, "Queen"

    const/4 v2, 0x3

    const v3, 0x7f0706b2

    const/4 v4, 0x0

    const v5, 0x7f0e0141

    const v6, 0x7f0e001c

    const v7, 0x7f020481

    const v8, 0x3d4ccccd    # 0.05f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$4;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Queen:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 126
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$5;

    const-string/jumbo v1, "Baron"

    const/4 v2, 0x4

    const v3, 0x7f0706a7

    const/4 v4, 0x0

    const v5, 0x7f0e0091

    const v6, 0x7f0e0016

    const v7, 0x7f02047d

    const v8, 0x3e4ccccd    # 0.2f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$5;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Baron:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 139
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$6;

    const-string/jumbo v1, "Baroness"

    const/4 v2, 0x5

    const v3, 0x7f0706a8

    const/4 v4, 0x0

    const v5, 0x7f0e0091

    const v6, 0x7f0e0016

    const v7, 0x7f02047d

    const v8, 0x3e4ccccd    # 0.2f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$6;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Baroness:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 152
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$7;

    const-string/jumbo v1, "Duke"

    const/4 v2, 0x6

    const v3, 0x7f0706aa

    const/4 v4, 0x0

    const v5, 0x7f0e0141

    const v6, 0x7f0e0017

    const v7, 0x7f02047e

    const v8, 0x3dcccccd    # 0.1f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$7;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Duke:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 165
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$8;

    const-string/jumbo v1, "Duchess"

    const/4 v2, 0x7

    const v3, 0x7f0706a9

    const/4 v4, 0x0

    const v5, 0x7f0e0141

    const v6, 0x7f0e0017

    const v7, 0x7f02047e

    const v8, 0x3dcccccd    # 0.1f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$8;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Duchess:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 179
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$9;

    const-string/jumbo v1, "RegularMale"

    const/16 v2, 0x8

    const v3, 0x7f0706a6

    const/4 v4, 0x0

    const v5, 0x7f0e0141

    const v6, 0x7f0e001e

    const v7, 0x7f020482

    const v8, 0x3dcccccd    # 0.1f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$9;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->RegularMale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 192
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$10;

    const-string/jumbo v1, "RegularFemale"

    const/16 v2, 0x9

    const v3, 0x7f0706a5

    const/4 v4, 0x0

    const v5, 0x7f0e0141

    const v6, 0x7f0e001e

    const v7, 0x7f020482

    const v8, 0x3dcccccd    # 0.1f

    sget-object v9, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->CheckIn:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$10;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->RegularFemale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToReview:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->King:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Queen:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Baron:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Baroness:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Duke:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Duchess:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->RegularMale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->RegularFemale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIF",
            "Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->titleId:I

    .line 225
    iput p4, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->subTitleId:I

    .line 226
    iput p5, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->textColorId:I

    .line 227
    iput p6, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->backgroundColorId:I

    .line 228
    iput p7, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->iconId:I

    .line 229
    iput p8, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->starBurstAlpha:F

    .line 230
    iput-object p9, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->awardCategory:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p9}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-object v0
.end method


# virtual methods
.method public abstract getBodyText(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
