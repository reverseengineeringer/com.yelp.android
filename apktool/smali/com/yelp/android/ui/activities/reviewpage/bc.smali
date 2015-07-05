.class Lcom/yelp/android/ui/activities/reviewpage/bc;
.super Ljava/lang/Object;
.source "TipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Tip;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/bh;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviewpage/aw;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/activities/reviewpage/bh;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/bc;->c:Lcom/yelp/android/ui/activities/reviewpage/aw;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/bc;->a:Lcom/yelp/android/serializable/Tip;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/bc;->b:Lcom/yelp/android/ui/activities/reviewpage/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bc;->c:Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Lcom/yelp/android/ui/activities/reviewpage/aw;)Lcom/yelp/android/ui/activities/reviewpage/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bc;->a:Lcom/yelp/android/serializable/Tip;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/bc;->b:Lcom/yelp/android/ui/activities/reviewpage/bh;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviewpage/bh;->h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/bg;->a(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/widgets/SpannedImageButton;)V

    .line 143
    return-void
.end method
