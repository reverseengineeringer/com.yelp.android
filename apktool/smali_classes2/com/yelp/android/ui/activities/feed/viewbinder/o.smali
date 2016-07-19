.class public abstract Lcom/yelp/android/ui/activities/feed/viewbinder/o;
.super Ljava/lang/Object;
.source "FeedListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewHolderType:",
        "Lcom/yelp/android/cg/f;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/cg/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewHolderType;"
        }
    .end annotation
.end field

.field protected b:Lcom/yelp/android/cg/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewHolderType;"
        }
    .end annotation
.end field

.field protected c:Lcom/yelp/android/cg/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewHolderType;"
        }
    .end annotation
.end field

.field protected final d:Landroid/view/View;

.field protected final e:Landroid/widget/TextView;

.field protected final f:Lcom/yelp/android/ui/activities/feed/FeedType;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->d:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->d:Landroid/view/View;

    const v1, 0x7f0f03e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->e:Landroid/widget/TextView;

    .line 28
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 29
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->a:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v2}, Lcom/yelp/android/cg/f;->a(I)V

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->b:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v2}, Lcom/yelp/android/cg/f;->a(I)V

    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->c:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v2}, Lcom/yelp/android/cg/f;->a(I)V

    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->a:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/f;->a(I)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->b:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/f;->a(I)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->c:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/f;->a(I)V

    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->b:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/f;->a(I)V

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->a:Lcom/yelp/android/cg/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/f;->a(I)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
