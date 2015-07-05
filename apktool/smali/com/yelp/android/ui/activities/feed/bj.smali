.class Lcom/yelp/android/ui/activities/feed/bj;
.super Ljava/lang/Object;
.source "TipFeedViewBinder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/bg;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/bi;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/bi;Lcom/yelp/android/ui/activities/feed/bg;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/bj;->a:Lcom/yelp/android/ui/activities/feed/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->a(Lcom/yelp/android/ui/activities/feed/bi;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/feed/bi;->a(Lcom/yelp/android/ui/activities/feed/bi;I)I

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->a(Lcom/yelp/android/ui/activities/feed/bi;)I

    move-result v0

    if-lez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->b(Lcom/yelp/android/ui/activities/feed/bi;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e003c

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/bi;->a(Lcom/yelp/android/ui/activities/feed/bi;)I

    move-result v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->b(Lcom/yelp/android/ui/activities/feed/bi;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/bi;->a:Lcom/yelp/android/ui/activities/feed/bg;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bg;->a(Lcom/yelp/android/ui/activities/feed/bg;)Lcom/yelp/android/ui/activities/feed/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/bi;->c(Lcom/yelp/android/ui/activities/feed/bi;)Lcom/yelp/android/serializable/TipFeedEntry;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/yelp/android/ui/activities/feed/bh;->a(ZLcom/yelp/android/serializable/TipFeedEntry;)V

    .line 80
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->a(Lcom/yelp/android/ui/activities/feed/bi;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bj;->b:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->b(Lcom/yelp/android/ui/activities/feed/bi;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
