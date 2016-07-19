.class Lcom/yelp/android/ui/activities/reviewpage/d$2;
.super Lcom/yelp/android/ui/util/m;
.source "TipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/m",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/d;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/d$2;->a:Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    check-cast p2, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/d$2;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Tip;->t()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
