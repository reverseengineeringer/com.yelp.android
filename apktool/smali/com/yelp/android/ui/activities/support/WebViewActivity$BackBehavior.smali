.class public final enum Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;
.super Ljava/lang/Enum;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

.field public static final enum FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

.field public static final enum FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

.field public static final enum NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

.field public static final enum RESET_OR_FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

.field public static final enum RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    .line 116
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const-string/jumbo v1, "FINISH_ON_BACK"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    .line 122
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const-string/jumbo v1, "FINISH_ON_UP"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    .line 129
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const-string/jumbo v1, "RESET_OR_FINISH_ON_BACK"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    .line 136
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const-string/jumbo v1, "RESET_OR_FINISH_ON_UP"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->$VALUES:[Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->$VALUES:[Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    return-object v0
.end method
