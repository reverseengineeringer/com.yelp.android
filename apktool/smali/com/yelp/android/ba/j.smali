.class public Lcom/yelp/android/ba/j;
.super Ljava/lang/Object;
.source "FeedUserTipViewHolder.java"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x7f0c0338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/j;->a:Landroid/widget/TextView;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/TipFeedEntry;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 22
    iget-object v0, p0, Lcom/yelp/android/ba/j;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
