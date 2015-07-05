.class public final enum Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;
.super Ljava/lang/Enum;
.source "PanelReviewTranslate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

.field public static final enum ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

.field public static final enum TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

.field public static final enum TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    const-string/jumbo v1, "ORIGINAL"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 47
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    const-string/jumbo v1, "TRANSLATING"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    const-string/jumbo v1, "TRANSLATED"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->$VALUES:[Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->$VALUES:[Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    return-object v0
.end method
