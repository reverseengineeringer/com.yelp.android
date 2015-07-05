.class Lcom/yelp/android/ui/activities/messaging/g;
.super Lcom/yelp/android/analytics/d;
.source "ConversationThreadFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/g;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/g;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/g;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->d()Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/g;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/g;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/g;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->d(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/g;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 178
    return-void
.end method
