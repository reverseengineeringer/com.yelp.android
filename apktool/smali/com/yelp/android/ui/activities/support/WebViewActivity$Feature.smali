.class public final enum Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;
.super Ljava/lang/Enum;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

.field public static final enum EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

.field public static final enum FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

.field public static final enum LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    const-string/jumbo v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    .line 97
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    const-string/jumbo v1, "EVENTS"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    .line 101
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    const-string/jumbo v1, "FULL_SCREEN"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->$VALUES:[Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->$VALUES:[Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    return-object v0
.end method
