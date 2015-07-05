.class final enum Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;
.super Ljava/lang/Enum;
.source "DebugUiGuidelinesActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

.field public static final enum COLORS:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

.field public static final enum GAP_SIZES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

.field public static final enum TEXT_STYLES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;


# instance fields
.field private mLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    const-string/jumbo v1, "TEXT_STYLES"

    const v2, 0x7f030090

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->TEXT_STYLES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    .line 22
    new-instance v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    const-string/jumbo v1, "GAP_SIZES"

    const v2, 0x7f03008f

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->GAP_SIZES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    .line 23
    new-instance v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    const-string/jumbo v1, "COLORS"

    const v2, 0x7f03008e

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->COLORS:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    sget-object v1, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->TEXT_STYLES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->GAP_SIZES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->COLORS:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->$VALUES:[Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->mLayoutId:I

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->mLayoutId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->$VALUES:[Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    invoke-virtual {v0}, [Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    return-object v0
.end method
