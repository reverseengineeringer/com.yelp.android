.class Lcom/yelp/android/ui/activities/reviewpage/ay;
.super Lcom/yelp/android/ui/util/x;
.source "TipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/x",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        "Landroid/text/Spannable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/aw;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/aw;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ay;->a:Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p2, p1}, Lcom/yelp/android/serializable/Tip;->getCountsText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    check-cast p2, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ay;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method
