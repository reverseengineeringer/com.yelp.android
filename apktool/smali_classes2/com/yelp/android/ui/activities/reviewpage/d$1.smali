.class Lcom/yelp/android/ui/activities/reviewpage/d$1;
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
        "Landroid/text/Spannable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/d;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/d$1;->a:Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p2, p1}, Lcom/yelp/android/serializable/Tip;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

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
    .line 57
    check-cast p2, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/d$1;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method
