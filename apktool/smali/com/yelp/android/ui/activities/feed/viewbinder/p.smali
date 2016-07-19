.class public Lcom/yelp/android/ui/activities/feed/viewbinder/p;
.super Lcom/yelp/android/cg/f;
.source "FeedTalkPostItemViewHolder.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/yelp/android/cg/f;-><init>(Landroid/view/View;)V

    .line 22
    const v0, 0x7f0f03fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0f03fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b:Landroid/widget/TextView;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/TalkTopic;Lcom/yelp/android/serializable/TalkMessage;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/TalkTopic;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TalkMessage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
