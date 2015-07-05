.class public Lcom/yelp/android/bb/d;
.super Lcom/yelp/android/ui/util/au;
.source "ConversationMessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/content/Context;

.field private c:Lcom/yelp/android/serializable/Conversation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bb/d;->a:Landroid/view/LayoutInflater;

    .line 34
    iput-object p1, p0, Lcom/yelp/android/bb/d;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/bb/d;)Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/bb/d;->c:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/bb/d;->c:Lcom/yelp/android/serializable/Conversation;

    .line 130
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yelp/android/bb/d;->a:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/yelp/android/bb/g;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 43
    new-instance v0, Lcom/yelp/android/bb/g;

    invoke-direct {v0, p2}, Lcom/yelp/android/bb/g;-><init>(Landroid/view/View;)V

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 48
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 53
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/bb/d;->c:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/bb/d;->c:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getReviewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/yelp/android/bb/d;->c:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/bg;

    .line 58
    invoke-static {v1}, Lcom/yelp/android/bb/g;->a(Lcom/yelp/android/bb/g;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-static {v1}, Lcom/yelp/android/bb/g;->a(Lcom/yelp/android/bb/g;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/yelp/android/bb/e;

    invoke-direct {v6, p0, v4}, Lcom/yelp/android/bb/e;-><init>(Lcom/yelp/android/bb/d;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {v1}, Lcom/yelp/android/bb/g;->b(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-static {v1}, Lcom/yelp/android/bb/g;->c(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/bb/d;->b:Landroid/content/Context;

    const v6, 0x7f070598

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/yelp/android/bb/g;->a(Lcom/yelp/android/serializable/bg;)V

    .line 71
    invoke-virtual {v1}, Lcom/yelp/android/bb/g;->c()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setClickable(Z)V

    .line 121
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070656

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v1}, Lcom/yelp/android/bb/g;->c()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    return-object p2

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/bb/g;

    move-object v1, v0

    goto/16 :goto_0

    .line 73
    :cond_1
    invoke-static {v1}, Lcom/yelp/android/bb/g;->a(Lcom/yelp/android/bb/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-static {v1}, Lcom/yelp/android/bb/g;->a(Lcom/yelp/android/bb/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {v1}, Lcom/yelp/android/bb/g;->b(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/yelp/android/bb/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    .line 78
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getMessagingUser()Lcom/yelp/android/serializable/bg;

    move-result-object v4

    .line 79
    invoke-virtual {v1, v4}, Lcom/yelp/android/bb/g;->a(Lcom/yelp/android/serializable/bg;)V

    .line 80
    new-instance v5, Lcom/yelp/android/bb/f;

    invoke-direct {v5, p0, v0, v4}, Lcom/yelp/android/bb/f;-><init>(Lcom/yelp/android/bb/d;Lcom/yelp/android/serializable/ConversationMessage;Lcom/yelp/android/serializable/bg;)V

    invoke-virtual {v1, v5}, Lcom/yelp/android/bb/g;->a(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "href"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-static {v1}, Lcom/yelp/android/bb/g;->c(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 100
    :cond_2
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/yelp/android/bb/d;->b:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/yelp/android/serializable/ConversationMessage;->getFormattedMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {v1}, Lcom/yelp/android/bb/g;->c(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 106
    invoke-static {v1}, Lcom/yelp/android/bb/g;->c(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    invoke-static {v1}, Lcom/yelp/android/bb/g;->c(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 110
    invoke-static {v1}, Lcom/yelp/android/bb/g;->b(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/bb/d;->b:Landroid/content/Context;

    sget-object v7, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getTimeSent()Ljava/util/Date;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v1}, Lcom/yelp/android/bb/g;->c()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/bb/d;->c:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v3

    :goto_2
    invoke-virtual {v5, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setClickable(Z)V

    move-object v0, v4

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method
