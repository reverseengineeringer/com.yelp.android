.class public Lcom/yelp/android/bb/h;
.super Lcom/yelp/android/ui/util/au;
.source "ConversationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yelp/android/bb/h;->a(Ljava/util/List;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bb/h;->a:Landroid/view/LayoutInflater;

    .line 33
    iput-object p1, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private a(Lcom/yelp/android/bb/j;Z)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 158
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/yelp/android/bb/j;->b()Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_1

    const v0, 0x7f020351

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    :cond_0
    return-void

    .line 159
    :cond_1
    const v0, 0x7f020356

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/bb/j;)V
    .locals 4

    .prologue
    const v3, 0x7f0f00eb

    .line 125
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->isRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p2}, Lcom/yelp/android/bb/j;->a(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    const v2, 0x7f0f00fc

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 127
    invoke-static {p2}, Lcom/yelp/android/bb/j;->b(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 130
    invoke-static {p2}, Lcom/yelp/android/bb/j;->d(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p2}, Lcom/yelp/android/bb/j;->d(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    const v2, 0x7f0f00ef

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {p2}, Lcom/yelp/android/bb/j;->a(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    const v2, 0x7f0f00fe

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 135
    invoke-static {p2}, Lcom/yelp/android/bb/j;->b(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    const v2, 0x7f0f00ed

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 138
    invoke-static {p2}, Lcom/yelp/android/bb/j;->d(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p2}, Lcom/yelp/android/bb/j;->d(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/bb/j;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getLatestMessage()Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getMessagingUser()Lcom/yelp/android/serializable/bg;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/bg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v2

    invoke-interface {v2}, Lcom/yelp/android/serializable/bg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 148
    :goto_0
    if-eqz v0, :cond_1

    .line 149
    invoke-static {p2}, Lcom/yelp/android/bb/j;->a(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f02029a

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 154
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 146
    goto :goto_0

    .line 152
    :cond_1
    invoke-static {p2}, Lcom/yelp/android/bb/j;->a(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yelp/android/serializable/Conversation;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/bb/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 38
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/bb/h;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Conversation;->setRead(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/bb/h;->notifyDataSetChanged()V

    .line 175
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/bb/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/bb/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_1
    return v1

    .line 46
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/bb/h;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yelp/android/bb/h;->c:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    if-nez p2, :cond_3

    .line 63
    iget-object v0, p0, Lcom/yelp/android/bb/h;->a:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/yelp/android/bb/j;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v0, Lcom/yelp/android/bb/j;

    invoke-direct {v0, p2}, Lcom/yelp/android/bb/j;-><init>(Landroid/view/View;)V

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/bb/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 72
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getSubjectInConversationList()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getSubjectInConversationList()Ljava/lang/String;

    move-result-object v2

    .line 75
    :goto_1
    invoke-static {v1}, Lcom/yelp/android/bb/j;->a(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v6

    invoke-interface {v6}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {v1}, Lcom/yelp/android/bb/j;->b(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, "<br>"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {v1}, Lcom/yelp/android/bb/j;->c(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yelp/android/bb/h;->b:Landroid/content/Context;

    sget-object v6, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getLatestMessage()Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/ConversationMessage;->getTimeSent()Ljava/util/Date;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {v1}, Lcom/yelp/android/bb/j;->d(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-static {v1}, Lcom/yelp/android/bb/j;->d(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getLatestMessage()Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/ConversationMessage;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/bb/h;->a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/bb/j;)V

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/bb/h;->b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/bb/j;)V

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/bb/h;->getCount()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/yelp/android/bb/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    move v2, v4

    .line 93
    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/yelp/android/bb/h;->a(Lcom/yelp/android/bb/j;Z)V

    .line 95
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/bb/j;->a(Lcom/yelp/android/serializable/bg;)V

    .line 96
    new-instance v2, Lcom/yelp/android/bb/i;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/bb/i;-><init>(Lcom/yelp/android/bb/h;Lcom/yelp/android/serializable/Conversation;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/bb/j;->a(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v1}, Lcom/yelp/android/bb/j;->c()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setClickable(Z)V

    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f070656

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/serializable/bg;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v1}, Lcom/yelp/android/bb/j;->c()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    return-object p2

    .line 68
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/bb/j;

    move-object v1, v0

    goto/16 :goto_0

    .line 72
    :cond_4
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getSubject()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 91
    goto :goto_2

    :cond_6
    move v2, v3

    .line 113
    goto :goto_3
.end method
