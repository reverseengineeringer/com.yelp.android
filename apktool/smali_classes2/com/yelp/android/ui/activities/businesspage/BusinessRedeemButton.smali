.class abstract enum Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;
.super Ljava/lang/Enum;
.source "BusinessRedeemButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

.field public static final enum REDEEM_CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

.field public static final enum REDEEM_DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;


# instance fields
.field public background:I

.field public shadowUp:Z

.field public textColor:I

.field public textShadow:I

.field public title:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0e0099

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 17
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$1;

    const-string/jumbo v1, "REDEEM_DEAL"

    const v3, 0x7f0704de

    const v4, 0x7f02011d

    const v6, 0x7f0e00c3

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$1;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    .line 34
    new-instance v8, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$2;

    const-string/jumbo v9, "REDEEM_CHECK_IN_OFFER"

    const v11, 0x7f0704dd

    const v12, 0x7f02011c

    const v14, 0x7f0e0032

    move v10, v7

    move v13, v5

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$2;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v8, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_DEAL:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->REDEEM_CHECK_IN_OFFER:Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->title:I

    .line 70
    iput p4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->background:I

    .line 71
    iput p5, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->textColor:I

    .line 72
    iput p6, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->textShadow:I

    .line 73
    iput-boolean p7, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->shadowUp:Z

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIIZLcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p7}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    return-object v0
.end method


# virtual methods
.method public abstract getSubtitle(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
.end method

.method abstract passesRequirements(Lcom/yelp/android/serializable/YelpBusiness;)Z
.end method

.method public shouldShow(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->passesRequirements(Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
