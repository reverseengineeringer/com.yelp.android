.class Lcom/yelp/android/ui/activities/reviewpage/bf;
.super Ljava/lang/Object;
.source "TipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Tip;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/aw;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/bf;->b:Lcom/yelp/android/ui/activities/reviewpage/aw;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/bf;->a:Lcom/yelp/android/serializable/Tip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bf;->b:Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Lcom/yelp/android/ui/activities/reviewpage/aw;)Lcom/yelp/android/ui/activities/reviewpage/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bf;->a:Lcom/yelp/android/serializable/Tip;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/bg;->c(Lcom/yelp/android/serializable/Tip;)V

    .line 168
    return-void
.end method
