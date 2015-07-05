.class Lcom/yelp/android/ui/activities/feed/bq;
.super Lcom/yelp/android/ui/util/x;
.source "TipMeFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/x",
        "<",
        "Lcom/yelp/android/serializable/TipFeedEntry;",
        "Landroid/text/Spannable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/bl;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/bl;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bq;->a:Lcom/yelp/android/ui/activities/feed/bl;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/TipFeedEntry;)Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/cr;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p2, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/bq;->a(Landroid/content/Context;Lcom/yelp/android/serializable/TipFeedEntry;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method
