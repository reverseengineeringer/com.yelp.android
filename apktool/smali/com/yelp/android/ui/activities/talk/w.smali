.class public Lcom/yelp/android/ui/activities/talk/w;
.super Lcom/yelp/android/ui/util/au;
.source "TalkTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/TalkTopic;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014a

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/talk/x;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/talk/x;-><init>(Lcom/yelp/android/ui/activities/talk/w;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/talk/x;

    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/talk/w;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/TalkTopic;

    .line 47
    iget-object v2, v0, Lcom/yelp/android/ui/activities/talk/x;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, v0, Lcom/yelp/android/ui/activities/talk/x;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 49
    iget-object v2, v0, Lcom/yelp/android/ui/activities/talk/x;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, v0, Lcom/yelp/android/ui/activities/talk/x;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v0, Lcom/yelp/android/ui/activities/talk/x;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getTimeModified()Ljava/util/Date;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, v0, Lcom/yelp/android/ui/activities/talk/x;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0033

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->getReplyCount()I

    move-result v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v1, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object p2
.end method
