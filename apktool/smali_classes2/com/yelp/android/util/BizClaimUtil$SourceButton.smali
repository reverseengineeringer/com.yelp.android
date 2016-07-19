.class public abstract enum Lcom/yelp/android/util/BizClaimUtil$SourceButton;
.super Ljava/lang/Enum;
.source "BizClaimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/BizClaimUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "SourceButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/BizClaimUtil$SourceButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/BizClaimUtil$SourceButton;

.field public static final enum BIZPAGE_BOTTOM_BUTTON:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

.field public static final enum BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

.field public static final enum EDIT_BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

.field public static final enum MORE_INFO_PAGE_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;


# instance fields
.field private final mIriParamSource:Ljava/lang/String;

.field private final mUtmParamContent:Ljava/lang/String;

.field private final mYbtParamPage:Ljava/lang/String;

.field private final mYbtParamTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/yelp/android/util/BizClaimUtil$SourceButton$1;

    const-string/jumbo v1, "BIZPAGE_BOTTOM_BUTTON"

    const-string/jumbo v3, "claim_this_business"

    const-string/jumbo v4, "bizpage_bottom"

    const-string/jumbo v5, "bizpage"

    const-string/jumbo v6, "bottom_button"

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/BizClaimUtil$SourceButton$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->BIZPAGE_BOTTOM_BUTTON:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    .line 42
    new-instance v3, Lcom/yelp/android/util/BizClaimUtil$SourceButton$2;

    const-string/jumbo v4, "BIZPAGE_TOP_TEASER"

    const-string/jumbo v6, "claim_biz_without_content"

    const-string/jumbo v7, "bizpage_top_teaser"

    const-string/jumbo v8, "bizpage"

    const-string/jumbo v9, "top_teaser"

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/BizClaimUtil$SourceButton$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    .line 54
    new-instance v3, Lcom/yelp/android/util/BizClaimUtil$SourceButton$3;

    const-string/jumbo v4, "EDIT_BIZPAGE_TOP_TEASER"

    const-string/jumbo v6, "claim_edit_business"

    const-string/jumbo v7, "edit_bizpage"

    const-string/jumbo v8, "edit_bizpage"

    const-string/jumbo v9, "top_teaser"

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/BizClaimUtil$SourceButton$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->EDIT_BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    .line 66
    new-instance v3, Lcom/yelp/android/util/BizClaimUtil$SourceButton$4;

    const-string/jumbo v4, "MORE_INFO_PAGE_TEASER"

    const-string/jumbo v6, "claim_more_biz_info"

    const-string/jumbo v7, "more_info"

    const-string/jumbo v8, "more_biz_info_page"

    const-string/jumbo v9, "bottom_teaser"

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/BizClaimUtil$SourceButton$4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->MORE_INFO_PAGE_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    sget-object v1, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->BIZPAGE_BOTTOM_BUTTON:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->EDIT_BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->MORE_INFO_PAGE_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->$VALUES:[Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mUtmParamContent:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mIriParamSource:Ljava/lang/String;

    .line 91
    iput-object p5, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mYbtParamPage:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mYbtParamTarget:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/util/BizClaimUtil$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/yelp/android/util/BizClaimUtil$SourceButton;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/BizClaimUtil$SourceButton;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/BizClaimUtil$SourceButton;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->$VALUES:[Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    invoke-virtual {v0}, [Lcom/yelp/android/util/BizClaimUtil$SourceButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    return-object v0
.end method


# virtual methods
.method public iriParamSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mIriParamSource:Ljava/lang/String;

    return-object v0
.end method

.method public utmParamContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mUtmParamContent:Ljava/lang/String;

    return-object v0
.end method

.method public abstract ybtParamExperimentCohort(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
.end method

.method public abstract ybtParamExperimentName(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
.end method

.method public ybtParamPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mYbtParamPage:Ljava/lang/String;

    return-object v0
.end method

.method public ybtParamTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->mYbtParamTarget:Ljava/lang/String;

    return-object v0
.end method
