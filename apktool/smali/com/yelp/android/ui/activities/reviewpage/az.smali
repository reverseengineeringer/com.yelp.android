.class Lcom/yelp/android/ui/activities/reviewpage/az;
.super Lcom/yelp/android/ui/util/x;
.source "TipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/x",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/aw;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/aw;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/az;->a:Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/x;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p2, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/az;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Tip;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
